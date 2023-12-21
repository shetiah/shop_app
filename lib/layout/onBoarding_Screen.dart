// ignore_for_file: must_be_immutable
import 'package:api_advanced/shared/components/constants/const.dart';
import 'package:api_advanced/shared/cubit/cubit.dart';
import 'package:api_advanced/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FirstScr extends StatelessWidget {
  int index = 0;
  FirstScr({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
          builder: (context, state) {
            var cubit = AppCubit.get(context);
            return Scaffold(
              body: Container(
                  color: Colors.white54,
                  child: Column(children: [
                    Expanded(
                      child: PageView.builder(
                        controller: cubit.pgController,
                        itemBuilder: (context, index) {
                          this.index = index;
                          return cubit.pagebuilderlist[index];
                        },
                        itemCount: 3,
                        physics: const BouncingScrollPhysics(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          SmoothPageIndicator(
                            controller: cubit.pgController,
                            count: cubit.pagebuilderlist.length,
                            effect: const ExpandingDotsEffect(
                              activeDotColor: defcolor,
                              expansionFactor: 4,
                              dotWidth: 10,
                              dotHeight: 10,
                              spacing: 5,
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: FloatingActionButton(
                              onPressed: () {
                                cubit.toNextPage(
                                    context: context, index: index);
                              },
                              child: const Icon(Icons.navigate_next_rounded),
                            ),
                          )
                        ],
                      ),
                    ),
                  ])),
            );
          },
          listener: ((context, state) {})),
    );
  }
}
