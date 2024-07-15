import 'package:app_mania/views/extension.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Map item = ModalRoute.of(context)?.settings.arguments as Map;
    // double time = 0;
    // item['prepTimeMinutes'] + item['cookTimeMinutes'] >= 60
    //     ? time = (item['prepTimeMinutes'] + item['cookTimeMinutes']) / 60
    //     : time = item['prepTimeMinutes'] + item['cookTimeMinutes'];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network(item['image']),
            10.toHeight(),
            Text(
              item['name'],
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Expanded(
              child: Container(
                width: 400,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(3, -3),
                        blurRadius: 5)
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text("Time To Ready : $time"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
