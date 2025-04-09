import 'package:ecommerce_app/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_app/common/widgets/button/basic_app_button.dart';
import 'package:ecommerce_app/presentation/auth/pages/forgot_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _password(context),
            const SizedBox(height: 20,),
            _passwordFiled(context),
            const SizedBox(height: 20,),
            _continueButton(),
            const SizedBox(height: 20,),
            _forgotPassword(context),
          ],
        ),
      )

    );
  }
  Widget _password(BuildContext context) {
    return const Text(
      'Contraseña',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold
      )
    );
  }

  Widget _passwordFiled(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Escribe la contraseña'
      ),
    );
  }

  Widget _continueButton() {
    return BasicAppButton(
      onPressed: () {},
      title: 'Continuar',
      );
  }

  Widget _forgotPassword(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '¿Olvidaste la contraseña? '
          ),
          TextSpan(
            text: 'Restablecela',
            recognizer: TapGestureRecognizer()..onTap = () {
              AppNavigator.push(context, const ForgotPasswordPage());
            },
            style: TextStyle(
              fontWeight: FontWeight.bold
            )
          )
        ]
      ));
  }
}