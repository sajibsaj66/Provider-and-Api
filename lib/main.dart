import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:santotu03sajib/home/home.dart';
import 'package:santotu03sajib/provider/provider.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: ChangeNotifierProvider(
        create: (_) => ABProvider(),
        child: AbolTable(),
      ),
    ),
  );
}
