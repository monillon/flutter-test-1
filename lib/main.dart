// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<String> listCourses = ["Pain", "Chocolat", "Pauline", "Miam", "Vache","Pain", "Chocolat", "Pauline", "Miam", "Vache","Pain", "Chocolat", "Pauline", "Miam", "Vache","Pain", "Chocolat", "Pauline", "Miam", "Vache", "bubu"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ma liste de courses',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ma liste de courses'),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: listCourses.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(listCourses[index]),
              );
            },
          ),
        ),
      ),
    );
  }
}
