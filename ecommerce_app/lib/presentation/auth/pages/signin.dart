import 'package:ecommerce_app/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_app/common/widgets/button/basic_app_button.dart';
import 'package:ecommerce_app/data/auth/models/user_signin_req.dart';
import 'package:ecommerce_app/presentation/auth/pages/enter_password.dart';
import 'package:ecommerce_app/presentation/auth/pages/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
 SigninPage({super.key});

  final TextEditingController _emailCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(hideBack: true,),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(context),
            const SizedBox(height: 20,),
            _emailFiled(context),
            const SizedBox(height: 20,),
            _continueButton(context),
            const SizedBox(height: 20,),
            _createAccount(context),
          ],
        ),
      )

    );
  }
  Widget _signinText(BuildContext context) {
    return const Text(
      'Iniciar Sesión',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold
      )
    );
  }

  Widget _emailFiled(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Escribe el E-mail'
      ),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(
          context, 
          EnterPasswordPage(
            signinReq: UserSigninReg(
              email: _emailCon.text,
            ),
          )
        );
      },
      title: 'Continuar',
      );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '¿No tienes cuenta? '
          ),
          TextSpan(
            text: 'Create una',
            recognizer: TapGestureRecognizer()..onTap = () {
              AppNavigator.push(context,  SignupPage());
            },
            style: TextStyle(
              fontWeight: FontWeight.bold
            )
          )
        ]
      ));
  }
}