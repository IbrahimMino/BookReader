import 'dart:io';

import 'package:books/features/domain/database/ebook_database.dart';
import 'package:books/presentation/ui/books/bloc/book_bloc.dart';
import 'package:books/presentation/ui/books/book_page.dart';
import 'package:books/presentation/ui/details/detail_page.dart';
import 'package:books/presentation/ui/reviews/review_page.dart';
import 'package:books/presentation/ui/webview/webview_book_page.dart';
import 'package:books/utils/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'common/services/app_bloc_observer.dart';
import 'features/data/repository/book_repository_imp.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();

  await EBookDatabase.initialize();
  runApp(
    ChangeNotifierProvider(
      create: (context) => EBookDatabase(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => BookRepositoryImp(),
      child: BlocProvider(
        create: (context) =>
            BookBloc(RepositoryProvider.of<BookRepositoryImp>(context)),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Book Reading',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: Pages.BOOK,
          routes: {
            Pages.BOOK: (context) => const BookPage(),
            Pages.DETAIL: (context) => const DetailPage(),
            Pages.REVIEW: (context) => const ReviewPage(),
            Pages.WEBVIEW: (context) => const WebViewBookPage(),
          },
        ),
      ),
    );
  }
}
