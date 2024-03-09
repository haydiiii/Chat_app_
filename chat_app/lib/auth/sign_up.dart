import 'package:chat_app/Widgets/custom_elev_button.dart';
import 'package:chat_app/Widgets/custom_txt_formfield.dart';
import 'package:chat_app/auth/sign_in.dart';
import 'package:chat_app/colors.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isNotVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 65,
                  backgroundColor: AppColor.grey,
                  backgroundImage: const AssetImage('assets/preview.jpg'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Create an account',
                  style: TextStyle(
                      color: AppColor.primary,
                      fontWeight: FontWeight.w400,
                      fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text_form_field(
                  label: 'Name',
                  prefix: Icons.person,
                  suffix: null,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text_form_field(
                  label: 'Email',
                  prefix: Icons.email,
                  suffix: null,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text_form_field(
                  obsecuretext: isNotVisible,
                  label: 'Password',
                  prefix: Icons.lock,
                  suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          isNotVisible = !isNotVisible;
                        });
                      },
                      icon: Icon((isNotVisible)
                          ? Icons.visibility_off_rounded
                          : Icons.remove_red_eye)),
                ),
                const SizedBox(
                  height: 10,
                ),
                elevButton(
                  name: 'Register',
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const SignIn(),
                    ));
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('if u have an account '),
                      const SizedBox(
                        width: 2,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => const SignIn(),
                            ));
                          },
                          child: const Text('Login in'))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
