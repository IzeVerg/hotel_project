import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/home_bloc.dart';
import '../../../domain/models/enum/navigation.dart';
import '../../core/presentation/widgets.dart';
import 'dart:math';

import '../../hotel/presentation/hotel_screen.dart';
import '../../reservation/presentation/reservation_screen.dart';

final _random = Random();

int next(int min, int max) => min + _random.nextInt(max - min);

final int value = next(100000, 1000000);

class PaidScreen extends StatelessWidget {
  const PaidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listenWhen: (previous, current) => previous.navigation != current.navigation,
      listener: (context, state) {
        if (state.navigation == Navigation.navigateToRoom) {
          Navigator.of(context).pop(
            MaterialPageRoute(builder: (context) => const ReservationScreen()),
          );
        }
        if (state.navigation == Navigation.navigateToReservation) {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const HotelScreen()),
          );
          context.read<HomeBloc>().add(const HomeEvent.initReservationData());
        }
      },
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return const _BodyWidget();
        },
      ),
    );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackIconButton(onPressed: () {
          context.read<HomeBloc>().add(const HomeEvent.userClickedButtonToReservation());
          Navigator.of(context).pop(
            MaterialPageRoute(
              builder: (context) => const ReservationScreen(),
            ),
          );
        }),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Заказ оплачен',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          const Spacer(),

          ///image with congratulations
          SizedBox(
            height: 94,
            child: Image.asset('assets/images/congratulations.png'),
          ),
          const SizedBox(height: 42),

          ///widget with title
          const Text(
            'Ваш заказ принят в работу',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 28),

          ///widget with text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'Подтверждение заказа №$value может занять некоторое время (от 1 часа до суток). Как только мы '
              'получим ответ от туроператора, вам на почту придет уведомление.',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF828796),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Spacer(),
          const _ButtonForHotel(),
        ],
      ),
    );
  }
}

class _ButtonForHotel extends StatelessWidget {
  const _ButtonForHotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 28),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        children: [
          const Divider(
            thickness: 1,
            color: Color(0xFFE8E9EC),
          ),
          const SizedBox(height: 8),
          ButtonForNextPage(
              text: 'Супер!',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HotelScreen()),
                );
                context.read<HomeBloc>().add(
                      const HomeEvent.userClickedButtonToHotel(),
                    );
                context.read<HomeBloc>().add(
                      const HomeEvent.deleteTourist(),
                    );
              }),
        ],
      ),
    );
  }
}
