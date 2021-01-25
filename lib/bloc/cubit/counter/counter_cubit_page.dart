import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_example/bloc/cubit/counter/counter_cubit.dart';
import 'package:state_management_example/bloc/cubit/counter/counter_state.dart';

class CounterCubitPage extends StatelessWidget {
  static const String routeName = '/counter_cubit';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Counter Cubit Bloc Double CTest')),
        body: BlocBuilder<CounterCubit, CounterCubitState>(
          builder: (context, state) => Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
          
          
              children: [
             
              IconButton(
                icon: Icon(Icons.add_circle),
                color: Colors.black,
                iconSize: 25,
                onPressed: () => context.read<CounterCubit>().increment(),
              ),
              Text(
                '${state.totalbagels}',
                style: Theme.of(context).textTheme.headline4,
              ),
              IconButton(
                icon: Icon(Icons.remove_circle),
                color: Colors.black,
                iconSize: 25,
                onPressed: () => context.read<CounterCubit>().decrement(),
              ),
            
              /* Row(
            children: [
              Text(
                'BDz:$_bakerdoz',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                ' TB=:$_totalbagels',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ), */

              /* Text('Bakers Dozen: ${state.dozcount}',
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ), */
              /* Text('Singles: ${state.singcount}',
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ), */
              const SizedBox(height: 8),
              /* Text(
                'Total Bagels: ${state.totalbagels}',
                style: Theme.of(context).textTheme.headline3.copyWith(
                      color: Colors.black,
                    ),
                textAlign: TextAlign.center,
              ), */

              // add second windows of bagels
              Divider(
                height: 20,
                thickness: 10,
                color: Colors.black,
              ),

              Text(
                'Bakers Dozen: ${state.dozcount}',
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
              Text(
                'Singles: ${state.singcount}',
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              /*  Text(
                'Total Bagels: ${state.totalbagels}',
                style: Theme.of(context).textTheme.headline3.copyWith(
                      color: Colors.black,
                    ),
                textAlign: TextAlign.center,
              ), */
            ],
          ),
        ),
        /* floatingActionButton: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: FloatingActionButton(
                backgroundColor: Colors.orange,
                heroTag: 'increment',
                child: const Icon(Icons.add),
                onPressed: () => context.read<CounterCubit>().increment(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: FloatingActionButton(
                backgroundColor: Colors.teal,
                heroTag: 'decrement',
                child: const Icon(Icons.remove),
                onPressed: () {
                  // BlocProvider.of<CounterCubit>(context, listen: false)
                  //     .decrement();
                  context.read<CounterCubit>().decrement();
                },
              ),
            ),
          ],
        ), */
      );
}
