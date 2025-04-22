
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/presentation/auth/bloc/age_selection_cubit.dart';
import 'package:ecommerce_app/presentation/auth/bloc/ages_display_cubit.dart';
import 'package:ecommerce_app/presentation/auth/bloc/ages_display_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Ages extends StatelessWidget {
  const Ages({super.key});

  @override
  Widget build(BuildContext context) {

    final sizeHeight = MediaQuery.of(context).size.height;

    return Container(
      height: sizeHeight / 2,
      child: BlocBuilder<AgesDisplayCubit,AgesDisplayStates>(
        builder: (context, state) {
          if (state is AgesLoading) {
            return Container(
              alignment: Alignment.center,
              child: const CircularProgressIndicator()
            );
          }

          if (state is AgesLoaded) {
            return _ages(state.ages);
          }

          if (state is AgesLoadFalilure) {
            return Container(
              alignment: Alignment.center,
              child: Text(
                state.message
              ),
            );
          }

          return const SizedBox();
        },
      )
    );
  }

  Widget _ages(List<QueryDocumentSnapshot<Map<String, dynamic>>> ages) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemBuilder: (context,index) {
        return GestureDetector(
          onTap: (){
            Navigator.pop(context);
            context.read<AgeSelectionCubit>().selectAge(
              ages[index].data()['value'],
            );
          },
          child: Text(
            ages[index].data()['value'],
            style: const TextStyle(
              fontSize: 18
            ),
          ),
        );
      },
      separatorBuilder: (context,index) => const SizedBox(height: 20,),
      itemCount: ages.length
    );
  }
}