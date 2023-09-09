import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testovoe_zadanie_jun/bloc/home_bloc.dart';

import '../../../domain/service/hotel_service.dart';
import 'ui/hotel/presentation/hotel_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => HomeBloc(service: HotelService())..add(const HomeEvent.initHotelData()),
        child: const MaterialApp(
          home: HotelScreen(),
        ),
      );
}
