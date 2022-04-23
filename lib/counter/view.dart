import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit.dart';
import 'state.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => CounterCubit(),
        child: BlocConsumer<CounterCubit, AppState>(
          listener: (BuildContext context, AppState state) {},
          builder: (BuildContext context, AppState state) => Scaffold(
              appBar: AppBar(
                title: const Text('Counter with Bloc'),
                centerTitle: true,
              ),
              body: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: CounterCubit.get(context).incrementCounter,
                      child: const Icon(Icons.add),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'You have pushed the button ',
                        ),
                        Text(
                          " ${CounterCubit.get(context).counter}",
                        ),
                      ],
                    ),
                    ElevatedButton(
                        onPressed: CounterCubit.get(context).decrementCounter,
                        child: const Icon(Icons.remove)),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: CounterCubit.get(context).restartCounter,
                tooltip: 'Restart',
                child: const Icon(Icons.repeat),
              )),
        ));
  }
}
