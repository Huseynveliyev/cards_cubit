import 'package:cards_cubit/screens/home/cubit/home_cubit.dart';
import 'package:cards_cubit/screens/home/widgets/widget_credit_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeInProgress) {
          return const Center(
            child: CupertinoActivityIndicator(
              animating: true,
            ),
          );
        } else if (state is HomeFailure) {
          return Center(
            child: Text(state.message),
          );
        } else if (state is HomeSuccess) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: ListView.builder(
              itemCount: state.cards.length,
              itemBuilder: (_, index) {
                return Column(
                  children: [
                    CreditCardWidget(
                      card: state.cards[index],
                    ),
                    const SizedBox(height: 8),
                  ],
                );
              },
            ),
          );
        }
        return Container();
      },
    );
  }
}
