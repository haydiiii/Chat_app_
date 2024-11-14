import 'package:chat_app/core/Widgets/custom_elev_button.dart';
import 'package:chat_app/core/Widgets/custom_txt_formfield.dart';
import 'package:chat_app/features/auth/data/model/request/login_request_model.dart';
import 'package:chat_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:chat_app/features/auth/presentation/bloc/auth_events.dart';
import 'package:chat_app/features/auth/presentation/bloc/auth_states.dart';
import 'package:chat_app/features/auth/presentation/views/sign_up.dart';
import 'package:chat_app/features/chat/chat_view.dart';
import 'package:chat_app/core/constants/text_style.dart';
import 'package:chat_app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isNotVisable = true;
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthStates>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 65,
                        backgroundColor: AppColor.grey,
                        backgroundImage: const AssetImage('assets/preview.jpg'),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Login to ur Account',
                        style: TextStyle(
                            color: AppColor.primary,
                            fontWeight: FontWeight.w400,
                            fontSize: 25),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomTxtFormField(
                        validator: (p0) {
                          if (p0 == null || p0.isEmpty) {
                            return 'Please enter your email';
                          } else {
                            return null;
                          }
                        },
                        controller: emailController,
                        label: 'Email',
                        prefix: Icons.email,
                        suffix: null,
                        obsecuretext: false,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomTxtFormField(
                        validator: (p0) {
                          if (p0 == null || p0.isEmpty) {
                            return 'Please enter your ppassword';
                          } else {
                            return null;
                          }
                        },
                        controller: passwordController,
                        obsecuretext: true,
                        label: 'Password',
                        prefix: Icons.lock,
                        suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                isNotVisable = !isNotVisable;
                              });
                            },
                            icon: Icon((isNotVisable)
                                ? Icons.visibility_off_rounded
                                : Icons.remove_red_eye_rounded)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustElevatedButton(
                        name: 'Login',
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            context.read<AuthBloc>().add(LoginEvent(
                                loginModel: LoginRequestModel(
                                    email: emailController.text,
                                    password: passwordController.text)));
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ChatView(),
                            ));
                          }
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'if u haven\'t an account',
                              style: TextAppStyle.smallText(),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushReplacement(MaterialPageRoute(
                                    builder: (context) => const SignUp(),
                                  ));
                                },
                                child: Text('SignUp',
                                    style: TextAppStyle.textBody(
                                        color: AppColor.primary)))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
