import 'package:cubit_session/cubit/counter_cubit.dart';
import 'package:cubit_session/cubit/counter_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:cubit_session/bloc/bloc_imports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Counter App',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Counter Using Bloc',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterDecrementEvents());
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 30),
                  )),
              BlocConsumer<CounterBloc, CounterState>(
                  builder: (context, state) {
                return Text(
                  '${state.count}',
                  style: TextStyle(fontSize: 30),
                );
              }, listener: (context, state) {
                if (state is CounterIncrementState) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Increment Bloc Successfully'),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Decrement Bloc Successfully'),
                    ),
                  );
                }
              }),
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterIncrementEvents());
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 30),
                  ))
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Text(
            'Counter Using Cubit',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterCubit>().decrementsValue();
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 30),
                  )),
              BlocConsumer<CounterCubit, CounterCubitState>(// Cubit
                  builder: (context, state) {
                return Text(
                  '${state.countValue}',
                  style: TextStyle(fontSize: 30),
                );
              }, listener: (context, state) {
                if (state is CounterCubitIncrementState) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Increment Cubit Successfully'),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Decrement Cubit Successfully'),
                    ),
                  );
                }
              }),
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterCubit>().incrementValue();
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 30),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
