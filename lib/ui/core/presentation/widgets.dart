import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

///switch case for reservationScreen/_TouristInfoBuilder
String stringTourist(int index) {
  switch (index) {
    case 0:
      return 'Первый турист';
    case 1:
      return 'Второй турист';
    case 2:
      return 'Третий турист';
    default:
      return 'Новый турист';
  }
}

///widget for hotelScreen
class ButtonWithInfo extends StatelessWidget {
  const ButtonWithInfo({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 0,
        ),
        child: Row(
          children: <Widget>[
            SizedBox(
              height: 24,
              width: 24,
              child: SvgPicture.asset(icon),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  text,
                  style: const TextStyle(
                    color: Color(0xFF2C3035),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  'Самое необходимое',
                  style: TextStyle(
                    color: Color(0xFF828796),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}

///widget for AppBar
class BackIconButton extends StatelessWidget {
  const BackIconButton({
    super.key,
    required this.onPressed,
  });

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.black,
      onPressed: onPressed,
      icon: const Icon(Icons.arrow_back_ios_new),
    );
  }
}

class ButtonForNextPage extends StatelessWidget {
  final String text;
  final Function()? onPressed;

  const ButtonForNextPage({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 15, bottom: 14),
            backgroundColor: const Color(0xFF0D72FF),
            minimumSize: const Size(343, 48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

///widget for grey wrap containers in HotelScreen and RoomScreen
class WidgetForWrap extends StatelessWidget {
  const WidgetForWrap({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: const BoxDecoration(
        color: Color(0xFFFBFBFC),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF828796),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class CircularProgress extends StatelessWidget {
  const CircularProgress({super.key, required this.controller});

  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: 50,
          width: 50,
          child: CircularProgressIndicator(
            value: controller.value,
          ),
        ),
      ),
    );
  }
}

///widget for two Column and row into / widget for reservationScreen
class RowIntoColumn extends StatelessWidget {
  const RowIntoColumn({
    required this.text1,
    super.key,
    this.text2,
  });

  final String? text2;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                text1,
                style: const TextStyle(
                  color: Color(0xFF828796),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                text2!,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class YellowContainerWithRate extends StatelessWidget {
  const YellowContainerWithRate({super.key, required this.rateInt, required this.rateString});

  final String? rateInt;
  final String? rateString;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 149,
      height: 29,
      decoration: const BoxDecoration(
        color: Color(0xFFFFF4CC),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(width: 10),
          const Icon(
            Icons.star,
            color: Color(0xFFFFA800),
          ),
          const SizedBox(width: 2),
          Text(
            rateInt!,
            style: const TextStyle(
              color: Color(0xFFFFA800),
            ),
          ),
          const SizedBox(width: 4),
          Text(
            rateString!,
            style: const TextStyle(
              color: Color(0xFFFFA800),
            ),
          ),
        ],
      ),
    );
  }
}
