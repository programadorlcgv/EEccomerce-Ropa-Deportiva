import 'package:ecommerce_app/common/bloc/button/button_state_cubit.dart';
import 'package:ecommerce_app/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_app/common/widgets/button/button_reactive_button.dart';
import 'package:ecommerce_app/data/auth/models/user_signin_req.dart';
import 'package:ecommerce_app/domain/auth/usecases/signin.dart';
import 'package:ecommerce_app/presentation/auth/pages/forgot_password.dart';
import 'package:ecommerce_app/presentation/home/pages/home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/bloc/button/button_state.dart';

class EnterPasswordPage extends StatelessWidget {
  final UserSigninReg signinReq;
  EnterPasswordPage({
    required this.signinReq,
    super.key
  });

  final TextEditingController _passwordCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 40
        ),
        child: BlocProvider(
          create: (context) => ButtonStateCubit(),
          child: BlocListener<ButtonStateCubit,ButtonState>(
            listener: (context, state) {
              if (state is ButtonFailureState){
                var snackbar = SnackBar(content: Text(state.errorMessage),behavior: SnackBarBehavior.floating,);
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              }
              if (state is ButtonSuccessState) {
                AppNavigator.pushAndRemove(context, const HomePage());
              }
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _siginText(context),
                const SizedBox(height: 20,),
                _passwordField(context),
                const SizedBox(height: 20,),
                _continueButton(context),
                const SizedBox(height: 20,),
                _forgotPassword(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _siginText(BuildContext context) {
    return const Text(
      'Contraseña',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      controller: _passwordCon,
      decoration: const InputDecoration(
        hintText: 'Escribe la contraseña'
      ),
    );
  }

  Widget _continueButton(BuildContext context) {
    return Builder(
      builder: (context) {
        return BasicReactiveButton(
          onPressed: (){
            signinReq.password = _passwordCon.text;
            context.read<ButtonStateCubit>().execute(
              usecase: SigninUseCase(),
              params: signinReq
            );
          },
          title: 'Continuar'
        );
      }
    );
  }

  Widget _forgotPassword(BuildContext context) {
    return RichText(
      text: TextSpan(
        children:  [
          const TextSpan(
            text: "Olvidaste la contraseña? "
          ),
           TextSpan(
            text: 'Restablecela',
            recognizer:TapGestureRecognizer()..onTap = () {
              AppNavigator.push(context, ForgotPasswordPage());
            } ,
            style: const TextStyle(
              fontWeight: FontWeight.bold
            )
          )
        ]

      ),
    );
  }
}