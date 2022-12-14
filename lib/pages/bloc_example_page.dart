import 'package:counter_app_bloc/bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocExamplePageTwo extends StatefulWidget {
  const BlocExamplePageTwo({Key? key}) : super(key: key);

  @override
  State<BlocExamplePageTwo> createState() => _BlocExamplePageTwoState();
}

class _BlocExamplePageTwoState extends State<BlocExamplePageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<CounterBloc, CounterState>(
              bloc: context.read<CounterBloc>(),
              builder: (context, state) {
                if (state is CounterInitial) {
                  return const Text(' CounterInitial! No data avaible');
                }

                if (state is CounterChanged) {
                  return Text(
                    state.counter.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  );
                }

                return const Text('Click button');
              },
            ),
          ],
        ),
      ),
    );
  }
}
