import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum3/views/home_screen.dart';
import 'bloc/contact_cubit.dart';

void main() {
  runApp(const MyApp());
}
//firki
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ContactCubit(),
        ),
      ], 
      child: const MaterialApp(
      home: HomeScreen(),
      ),
    );
  }
}

