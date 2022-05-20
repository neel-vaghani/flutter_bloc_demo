import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/counter/view/counter_view.dart';
import 'package:flutter_bloc_demo/counter2/bloc/counter_bloc.dart';
import 'counter/view/counter_page.dart';
import 'counter2/view/counter2_screen.dart';
import 'home_page.dart';

class CounterApp extends MaterialApp {
  CounterApp({Key? key})
      : super(
          key: key,
          home: BlocProvider(
            create: (context) => CounterBloc(),
            child: const HomePage(),
          ),
        );
}
