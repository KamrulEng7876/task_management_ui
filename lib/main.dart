import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management_ui/app/app.dart';
import 'package:task_management_ui/features/add_to_card_screen/model/card_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CardModel()),
      ],
      child: const MyApp(),
    ),
  );
}