
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> with WidgetsBindingObserver {




  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String?>;
    String filePath = args['filePath']!;

    return Scaffold(
      appBar: AppBar(
        title: const Text('EBook'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {

              },
              child: const Text('Open E-pub'),
            ),
          ],
        ),
      ),
    );
  }
}
