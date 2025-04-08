import 'package:ecommerce_app/common/widgets/button/basic_app_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 80
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(context),
            const SizedBox(height: 20,),
            _emailFiled(context),
            const SizedBox(height: 20,),
            _continueButton(),
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
        hintText: 'Escribe el Email'
      ),
    );
  }

  Widget _continueButton() {
    return BasicAppButton(
      onPressed: () {},
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
              
            },
            style: TextStyle(
              fontWeight: FontWeight.bold
            )
          )
        ]
      ));
  }
}