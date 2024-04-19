import 'package:cubit_session/bloc/bloc_imports.dart';
import 'package:cubit_session/bloc/my_bloc_observer.dart';
import 'package:cubit_session/cubit/counter_cubit.dart';
import 'package:cubit_session/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => // Bloc
              CounterBloc(), // _ ==> there is context and don't use context in CounterBloc
        ),
        BlocProvider(
          create: (_) => CounterCubit(), // Cubit
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
