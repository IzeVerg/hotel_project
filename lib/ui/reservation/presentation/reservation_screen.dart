import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testovoe_zadanie_jun/data/models/model_for_reservation_response.dart';
import 'package:testovoe_zadanie_jun/domain/models/enum/tourist_info_field.dart';
import 'package:testovoe_zadanie_jun/ui/room/presentation/room_screen.dart';

import '../../../bloc/home_bloc.dart';
import '../../../domain/models/enum/navigation.dart';
import '../../../domain/models/enum/status_downloading.dart';
import '../../core/presentation/custom_textfields.dart';
import '../../core/presentation/widgets.dart';
import '../../paid/presentation/paid_screen.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({
    super.key,
  });

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..addListener(() {
        setState(() {});
      });
    _controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listenWhen: (previous, current) => previous.navigation != current.navigation,
      listener: (context, state) {
        if (state.navigation == Navigation.navigateToRoom) {
          Navigator.of(context).pop(
            MaterialPageRoute(builder: (context) => const RoomScreen()),
          );
        }
        if (state.navigation == Navigation.navigateToPaid) {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const PaidScreen()),
          );
        }
      },
      child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        if (state.status == StatusDownloading.loading || state.status == StatusDownloading.error) {
          return CircularProgress(controller: _controller);
        }
        return _BodyWidget(
          model: state.modelReservation,
        );
      }),
      // ),
    );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({
    required this.model,
  }) : super();

  final ModelForReservationResponse? model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F9),
      appBar: AppBar(
        leading: BackIconButton(onPressed: () {
          context.read<HomeBloc>().add(
                const HomeEvent.userClickedButtonToRoom(),
              );
          Navigator.of(context).pop(
            MaterialPageRoute(
              builder: (context) => const RoomScreen(),
            ),
          );
        }),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Бронирование',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _InfoAboutHotel(model: model),
            const SizedBox(height: 8),
            _InfoAboutTrip(model: model),
            const SizedBox(height: 8),
            const _InfoAboutBuyer(),
            const SizedBox(height: 8),
            const _TouristsInfoInputSection(),
            const SizedBox(height: 8),
            const _AddTouristWidget(),
            const SizedBox(height: 8),
            _InfoAboutPrice(model: model),
            const SizedBox(height: 10),
            _ButtonForPaid(
              model: model,
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoAboutTrip extends StatelessWidget {
  final ModelForReservationResponse? model;

  const _InfoAboutTrip({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        children: <Widget>[
          RowIntoColumn(
            text1: 'Вылет из',
            text2: model!.fromCountry,
          ),
          const SizedBox(height: 16),
          RowIntoColumn(
            text1: 'Страна, город',
            text2: model!.country,
          ),
          const SizedBox(height: 16),
          RowIntoColumn(
            text1: 'Даты',
            text2: '${model!.dateStart} - ${model!.dateEnd}',
          ),
          const SizedBox(height: 16),
          RowIntoColumn(
            text1: 'Кол-во ночей',
            text2: model!.nights.toString(),
          ),
          const SizedBox(height: 16),
          RowIntoColumn(
            text1: 'Отель',
            text2: model!.name,
          ),
          const SizedBox(height: 16),
          RowIntoColumn(
            text1: 'Номер',
            text2: model!.roomDescription,
          ),
          const SizedBox(height: 16),
          RowIntoColumn(
            text1: 'Питание',
            text2: model!.nutrition,
          ),
        ],
      ),
    );
  }
}

class _InfoAboutBuyer extends StatelessWidget {
  const _InfoAboutBuyer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Информация о покупателе',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          BlocSelector<HomeBloc, HomeState, bool>(
            selector: (HomeState state) => state.numberFieldModel.hasError,
            builder: (context, hasError) => CustomTextField(
              onChanged: (String value) {
                context.read<HomeBloc>().add(HomeEvent.userEnteredNumber(value: value));
              },
              text: 'Номер телефона',
              constraints: [
                constraintsForNumber,
                FilteringTextInputFormatter.deny(
                  RegExp(r"\s\s"),
                ),
              ],
              hasError: hasError,
            ),
          ),
          const SizedBox(height: 8),
          BlocSelector<HomeBloc, HomeState, bool>(
            selector: (HomeState state) => state.mailFieldModel.hasError,
            builder: (context, hasError) => CustomTextField(
              constraints: [
                FilteringTextInputFormatter.allow(RegExp("[a-z A-Z 0-9 @ .]")),
                FilteringTextInputFormatter.deny(
                  RegExp(r"\s\s"),
                ),
              ],
              onChanged: (String value) {
                context.read<HomeBloc>().add(HomeEvent.userEnteredEmail(value: value));
              },
              text: 'Почта',
              hasError: hasError,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Эти данные никому не передаются. После оплаты мы вышлем чек на указанный вами номер и почту',
            style: TextStyle(
              color: Color(0xFF828796),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoAboutHotel extends StatelessWidget {
  const _InfoAboutHotel({required this.model}) : super();

  final ModelForReservationResponse? model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          YellowContainerWithRate(
            rateInt: model!.rate.toString(),
            rateString: model!.ratingString,
          ),
          const SizedBox(height: 8),
          Text(
            model!.name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: const Size(100, 10),
              padding: EdgeInsets.zero,
              backgroundColor: Colors.transparent,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () {},
            child: Text(
              model!.address,
              style: const TextStyle(
                color: Color(0xFF0D72FF),
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TouristInfo extends StatefulWidget {
  const _TouristInfo({
    required this.index,
    required this.cardTitle,
  });

  final int index;
  final String cardTitle;

  @override
  State<_TouristInfo> createState() => _TouristInfoState();
}

class _TouristInfoState extends State<_TouristInfo> {
  static const String _firstIconPath = 'assets/icons/arrow_up.svg';
  static const String _secondIconPath = 'assets/icons/arrow_down.svg';
  int indexForExpanded = 1;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    if (indexForExpanded == 1) {
      _isExpanded = true;
      indexForExpanded++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(widget.cardTitle,
                  style: const TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500)),
              const Spacer(),
              IconButton(
                onPressed: () => setState(() {
                  _isExpanded = !_isExpanded;
                }),
                icon: SizedBox(
                  height: 32,
                  width: 32,
                  child: SvgPicture.asset(_isExpanded ? _firstIconPath : _secondIconPath),
                ),
              ),
            ],
          ),
          if (_isExpanded)
            Column(
              children: [
                const SizedBox(height: 16),
                BlocSelector<HomeBloc, HomeState, bool>(
                  selector: (HomeState state) => state.touristInputCards[widget.index].name.hasError,
                  builder: (context, hasError) => CustomTextField(
                    text: 'Имя',
                    hasError: hasError,
                    constraints: [
                      FilteringTextInputFormatter.deny(
                        RegExp(r"\s\s"),
                      ),
                    ],
                    onChanged: (String value) => context.read<HomeBloc>().add(
                          HomeEvent.userEnteredInfo(
                            textValue: value,
                            touristIndex: widget.index,
                            fieldType: TouristInfoField.name,
                          ),
                        ),
                  ),
                ),
                const SizedBox(height: 8),
                BlocSelector<HomeBloc, HomeState, bool>(
                  selector: (HomeState state) => state.touristInputCards[widget.index].surname.hasError,
                  builder: (context, hasError) => CustomTextField(
                    text: 'Фамилия',
                    hasError: hasError,
                    constraints: [
                      FilteringTextInputFormatter.deny(
                        RegExp(r"\s\s"),
                      ),
                    ],
                    onChanged: (String value) => context.read<HomeBloc>().add(
                          HomeEvent.userEnteredInfo(
                            textValue: value,
                            touristIndex: widget.index,
                            fieldType: TouristInfoField.surname,
                          ),
                        ),
                  ),
                ),
                const SizedBox(height: 8),
                BlocSelector<HomeBloc, HomeState, bool>(
                  selector: (HomeState state) => state.touristInputCards[widget.index].birthDate.hasError,
                  builder: (context, hasError) => CustomTextField(
                    text: 'Дата рождения',
                    constraints: [
                      FilteringTextInputFormatter.allow(RegExp("[0-9 .]")),
                      FilteringTextInputFormatter.deny(
                        RegExp(r"\s\s"),
                      ),
                    ],
                    hasError: hasError,
                    onChanged: (String value) => context.read<HomeBloc>().add(
                          HomeEvent.userEnteredInfo(
                            textValue: value,
                            touristIndex: widget.index,
                            fieldType: TouristInfoField.birthDate,
                          ),
                        ),
                  ),
                ),
                const SizedBox(height: 8),
                BlocSelector<HomeBloc, HomeState, bool>(
                  selector: (HomeState state) => state.touristInputCards[widget.index].citizenship.hasError,
                  builder: (context, hasError) => CustomTextField(
                    text: 'Гражданство',
                    hasError: hasError,
                    constraints: [
                      FilteringTextInputFormatter.deny(
                        RegExp(r"\s\s"),
                      ),
                    ],
                    onChanged: (String value) => context.read<HomeBloc>().add(HomeEvent.userEnteredInfo(
                          textValue: value,
                          touristIndex: widget.index,
                          fieldType: TouristInfoField.citizenship,
                        )),
                  ),
                ),
                const SizedBox(height: 8),
                BlocSelector<HomeBloc, HomeState, bool>(
                  selector: (HomeState state) => state.touristInputCards[widget.index].numberPassport.hasError,
                  builder: (context, hasError) => CustomTextField(
                    text: 'Номер загранпаспорта',
                    constraints: [
                      FilteringTextInputFormatter.allow(RegExp("[0-9 -]")),
                      FilteringTextInputFormatter.deny(
                        RegExp(r"\s\s"),
                      ),
                    ],
                    hasError: hasError,
                    onChanged: (String value) => context.read<HomeBloc>().add(
                          HomeEvent.userEnteredInfo(
                            textValue: value,
                            touristIndex: widget.index,
                            fieldType: TouristInfoField.travelPassportNumber,
                          ),
                        ),
                  ),
                ),
                const SizedBox(height: 8),
                BlocSelector<HomeBloc, HomeState, bool>(
                  selector: (HomeState state) => state.touristInputCards[widget.index].validityPeriodPassport.hasError,
                  builder: (context, hasError) => CustomTextField(
                    text: 'Срок действия загранпаспорта',
                    constraints: [
                      FilteringTextInputFormatter.allow(RegExp("[0-9 . -]")),
                      FilteringTextInputFormatter.deny(
                        RegExp(r"\s\s"),
                      ),
                    ],
                    hasError: hasError,
                    onChanged: (String value) => context.read<HomeBloc>().add(
                          HomeEvent.userEnteredInfo(
                            textValue: value,
                            touristIndex: widget.index,
                            fieldType: TouristInfoField.validityPeriod,
                          ),
                        ),
                  ),
                ),
              ],
            )
          else
            const SizedBox(),
        ],
      ),
    );
  }
}

class _InfoAboutPrice extends StatelessWidget {
  const _InfoAboutPrice({required this.model}) : super();

  final ModelForReservationResponse? model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _RowWithPayment(
            text1: 'Тур',
            text2: model!.tourPrice.toString(),
            payment: false,
          ),
          const SizedBox(height: 16),
          _RowWithPayment(
            text1: 'Топливный сбор',
            text2: '${model!.fuel} P',
            payment: false,
          ),
          const SizedBox(height: 16),
          _RowWithPayment(
            text1: 'Сервисный сбор',
            text2: '${model!.service} P',
            payment: false,
          ),
          const SizedBox(height: 16),
          _RowWithPayment(
            text1: 'К оплате',
            text2: '${model!.tourPrice + model!.fuel + model!.service} P',
            payment: true,
          ),
        ],
      ),
    );
  }
}

///widget for _InfoAboutPrice for Row(description => price)
class _RowWithPayment extends StatelessWidget {
  final String text1;
  final String text2;
  final bool payment;

  const _RowWithPayment({
    Key? key,
    required this.text1,
    required this.text2,
    required this.payment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: const TextStyle(
            color: Color(0xFF828796),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          text2,
          style: TextStyle(
            color: payment ? const Color(0xFF0D72FF) : const Color(0xFF000000),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class _AddTouristWidget extends StatefulWidget {
  const _AddTouristWidget() : super();

  @override
  State<_AddTouristWidget> createState() => _AddTouristWidgetState();
}

class _AddTouristWidgetState extends State<_AddTouristWidget> {
  static const String icon = 'assets/icons/plus.svg';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 13,
        horizontal: 16,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Добавить туриста',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  context.read<HomeBloc>().add(const HomeEvent.userAddTourist());
                },
                icon: SizedBox(
                  height: 32,
                  width: 32,
                  child: SvgPicture.asset(icon),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TouristsInfoInputSection extends StatelessWidget {
  const _TouristsInfoInputSection() : super();

  @override
  Widget build(BuildContext context) => BlocSelector<HomeBloc, HomeState, int>(
        selector: (state) => state.touristInputCards.length,
        builder: (context, inputCardsLength) => ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemCount: inputCardsLength,
          itemBuilder: (_, int indexTourist) => Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
            ),
            child: _TouristInfo(
              index: indexTourist,
              cardTitle: stringTourist(indexTourist),
            ),
            // },
            // ),
          ),
        ),
      );
}

class _ButtonForPaid extends StatelessWidget {
  const _ButtonForPaid({required this.model}) : super();
  final ModelForReservationResponse? model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 28),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: ButtonForNextPage(
          text: 'Оплатить ${model!.tourPrice + model!.service + model!.fuel} р',
          onPressed: () {
            context.read<HomeBloc>().add(
                  const HomeEvent.checkTextFields(),
                );
          }),
    );
  }
}
