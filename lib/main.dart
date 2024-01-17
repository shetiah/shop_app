import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'layout/onBoarding_Screen.dart';
import 'shared/components/constants/const.dart';
import 'shared/cubit/blocobserver.dart';
import 'shared/cubit/cubit.dart';
import 'shared/cubit/states.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const ApiAdvancedMainClass());
}

class ApiAdvancedMainClass extends StatelessWidget {
  const ApiAdvancedMainClass({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => AppCubit(),
        child: BlocConsumer<AppCubit, AppStates>(
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: getDefaultTheme(context),
                home: FirstScr(),
              );
            },
            listener: (context, state) {}));
  }
}
