import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_application/application.dart';
import 'package:fruits_application/cubit/fruits/home_page_cubit.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => HomePageCubit(),
      child: const FruitsApp(),
    ),
  );
}
