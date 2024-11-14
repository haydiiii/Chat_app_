import 'package:chat_app/core/Widgets/custom_elev_button.dart';
import 'package:chat_app/core/Widgets/custom_txt_formfield.dart';
import 'package:chat_app/features/auth/presentation/views/sign_in.dart';
import 'package:chat_app/core/constants/text_style.dart';
import 'package:chat_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
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
                Text('Create an account', style: TextAppStyle.textTitle),
                const SizedBox(
                  height: 15,
                ),
                const CustomTxtFormField(
                  obsecuretext: false,
                  label: 'Name',
                  prefix: Icons.person,
                  suffix: null,
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomTxtFormField(
                  obsecuretext: false,
                  label: 'Email',
                  prefix: Icons.email,
                  suffix: null,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTxtFormField(
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
                  height: 20,
                ),
                CustElevatedButton(
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
                      Text(
                        'if u have an account',
                        style: TextAppStyle.smallText(),
                      ),
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
                          child: Text('Login in',
                              style: TextAppStyle.textBody(
                                  color: AppColor.primary))),
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
