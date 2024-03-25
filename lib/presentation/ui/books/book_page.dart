import 'package:books/core/resource/app_colors.dart';
import 'package:books/utils/pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/resource/app_values.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/e_row_item.dart';
import '../../widgets/row_item.dart';
import '../webview/my_webview.dart';
import 'bloc/book_bloc.dart';
import 'bloc/book_event.dart';
import 'bloc/book_state.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  final textController = TextEditingController();

  @override
  void initState() {
    context.read<BookBloc>().add(EBookFetchData('Flutter'));
    // context.read<BookBloc>().add(BookFetchData('Flutter'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size = mediaQueryData.size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.colorBackground,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: AppColors.colorBackground,
              expandedHeight: size.height * 0.1,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.all(AppPadding.p16),
                  child: CustomTextField(textController),
                ),
              ),
            ),
            BlocBuilder<BookBloc, BookState>(
              builder: (BuildContext context, BookState state) {
                if (state is EBookSuccessState) {
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        final data = state.bookList.results?[index];
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: AppSize.s8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.pushNamed(context, Pages.DETAIL,
                                        arguments: {"item": data});
                                  });
                                },
                                child: ERowItem(data),
                              ),
                            ],
                          ),
                        );
                      },
                      childCount: state.bookList.results?.length ?? 0,
                    ),
                  );
                } else if (state is BookErrorState) {
                  return SliverToBoxAdapter(
                    child: Center(
                      child: Text(
                        state.failure.errorMessage.toString(),
                        style: const TextStyle(
                          fontSize: AppSize.s14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                } else {
                  return const SliverToBoxAdapter(
                    child: Center(
                      child: CupertinoActivityIndicator(),
                    ),
                  );
                }
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.colorButton,
          onPressed: () {
            setState(() {
              if (textController.text.isNotEmpty) {
                BlocProvider.of<BookBloc>(context)
                    .add(BookFetchData(textController.text));
              }
            });
          },
          child: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
