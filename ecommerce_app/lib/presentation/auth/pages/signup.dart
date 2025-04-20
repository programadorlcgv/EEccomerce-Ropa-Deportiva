import 'package:ecommerce_app/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_app/common/widgets/button/basic_app_button.dart';
import 'package:ecommerce_app/presentation/auth/pages/gender_and_selection.dart';
import 'package:ecommerce_app/presentation/auth/pages/signin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signupText(context),
            const SizedBox(height: 20,),
            _fisrtnameFiled(context),
            const SizedBox(height: 20,),
            _lastnameFiled(context),
            const SizedBox(height: 20,),
            _emailFiled(context),
            const SizedBox(height: 20,),
             _passwordFiled(context),
            const SizedBox(height: 20,),
            _continueButton(context),
            const SizedBox(height: 20,),
            _forgotPassword(context),
          ],
        ),
      )

    );
  }
  Widget _signupText(BuildContext context) {
    return const Text(
      'Crear Cuenta',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold
      )
    );
  }
  Widget _fisrtnameFiled(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Nombres'
      ),
    );
  }

  Widget _lastnameFiled(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Apellidos'
      ),
    );
  }

  Widget _emailFiled(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Escribe el E-mail'
      ),
    );
  }

   Widget _passwordFiled(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Escribe la contraseña'
      ),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
          AppNavigator.push(context, GenderAndAgeSelectionPage());
      },
      title: 'Continuar',
      );
  }

 Widget _forgotPassword(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '¿Tienes una cuenta? '
          ),
          TextSpan(
            text: 'Inicia sesión',
            recognizer: TapGestureRecognizer()..onTap = () {
              AppNavigator.push(context, const SigninPage());
            },
            style: TextStyle(
              fontWeight: FontWeight.bold
            )
          )
        ]
      ));
  }
}