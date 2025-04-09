import 'package:ecommerce_app/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_app/common/widgets/button/basic_app_button.dart';
import 'package:ecommerce_app/presentation/auth/pages/enter_password.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

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
            _resetPassword(context),
            const SizedBox(height: 20,),
            _resetPasswordFiled(context),
            const SizedBox(height: 20,),
            _continueButton(context),
          ],
        ),
      )

    );
  }
  Widget _resetPassword(BuildContext context) {
    return const Text(
      'Restablecer contraseña',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold
      )
    );
  }

  Widget _resetPasswordFiled(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Escribe una nueva contraseña'
      ),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        
      },
      title: 'Continuar',
      );
  }

}