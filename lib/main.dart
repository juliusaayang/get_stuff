import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_stuff/core/injections/injection.dart';
import 'package:get_stuff/features/stuffs%20list/presentation/cubit/get_stuffs_cubit.dart';
import 'package:get_stuff/features/stuffs%20list/presentation/pages/get_stuffs_list.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetStuffsCubit>(
      create: (context) => sl<GetStuffsCubit>(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: const MaterialColor(
            0xffb6ceea,
            {
              50: Color.fromRGBO(182, 206, 234, .1),
              100: Color.fromRGBO(182, 206, 234, .2),
              200: Color.fromRGBO(182, 206, 234, .3),
              300: Color.fromRGBO(182, 206, 234, .4),
              400: Color.fromRGBO(182, 206, 234, .5),
              500: Color.fromRGBO(182, 206, 234, .6),
              600: Color.fromRGBO(182, 206, 234, .7),
              700: Color.fromRGBO(182, 206, 234, .8),
              800: Color.fromRGBO(182, 206, 234, .9),
              900: Color.fromRGBO(182, 206, 234, 1),
            },
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          canvasColor: Colors.transparent,
        ),
        home: const GetStuffList(),
      ),
    );
  }
}
