import 'package:counter_app_bloc/bloc/bloc/counter_bloc.dart';
import 'package:counter_app_bloc/cubit/counter_cubit.dart';
import 'package:counter_app_bloc/pages/bloc_example_page_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter BloС',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CounterCubit(),
          ),
          BlocProvider(
            create: (context) => CounterBloc(),
          ),
        ],
        child: const BlocExamplePage(),
      ),
    );
  }
}
