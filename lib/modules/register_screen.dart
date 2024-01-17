import 'package:api_advanced/shared/components/components/my_main_components.dart';
import 'package:api_advanced/shared/components/constants/const.dart';
import 'package:api_advanced/shared/cubit/cubit.dart';
import 'package:api_advanced/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("Shetiah's shop app"),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      defaultFormField(
                          onTap: () {},
                          onChange: (d) {
                            return d;
                          },
                          onSubmit: (d) {
                            return d;
                          },
                          controller: cubit.nameController,
                          type: TextInputType.text,
                          validate: (String validate) {
                            if (validate.isEmpty) {
                              return "this field can't be empty";
                            }
                            return null;
                          },
                          label: "name",
                          prefix: Icons.text_format,
                          context: context),
                      const SizedBox(
                        height: 10,
                      ),
                      defaultFormField(
                          onTap: () {},
                          onChange: (d) {
                            return d;
                          },
                          onSubmit: (d) {
                            return d;
                          },
                          controller: cubit.ageController,
                          type: TextInputType.emailAddress,
                          validate: (String validate) {
                            if (validate.isEmpty) {
                              return "this field can't be empty";
                            }
                            return null;
                          },
                          label: "age",
                          prefix: Icons.calendar_month,
                          context: context),
                      const SizedBox(
                        height: 10,
                      ),
                      defaultFormField(
                          onTap: () {},
                          onChange: (d) {
                            return d;
                          },
                          onSubmit: (d) {
                            return d;
                          },
                          controller: cubit.emailController1,
                          type: TextInputType.emailAddress,
                          validate: (String validate) {
                            if (validate.isEmpty) {
                              return "this field can't be empty";
                            }
                            return null;
                          },
                          label: "e-mail",
                          prefix: Icons.email,
                          context: context),
                      const SizedBox(
                        height: 10,
                      ),
                      defaultFormField(
                          onTap: () {},
                          onChange: (d) {
                            return d;
                          },
                          onSubmit: (d) {
                            return d;
                          },
                          controller: cubit.emailController1,
                          type: TextInputType.emailAddress,
                          validate: (String validate) {
                            if (validate.isEmpty) {
                              return "this field can't be empty";
                            }
                            return null;
                          },
                          label: "e-mail",
                          prefix: Icons.email,
                          context: context),
                      const SizedBox(
                        height: 10,
                      ),
                      defaultFormField(
                          suffix: Icons.lock_open_outlined,
                          suffixPressed: () {
                            cubit.changePassword();
                          },
                          onTap: () {},
                          onChange: (d) {
                            return d;
                          },
                          onSubmit: (d) {
                            return d;
                          },
                          isPassword: cubit.isPassword,
                          controller: cubit.passwordController1,
                          type: TextInputType.visiblePassword,
                          validate: (String validate) {
                            if (validate.isEmpty) {
                              return "this field can't be empty";
                            }
                            return null;
                          },
                          label: "password",
                          prefix: Icons.password,
                          context: context),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: defcolor,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: const Text("Sign Up"),
                        ),
                      )
                    ]),
              ),
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
