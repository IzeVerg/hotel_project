import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testovoe_zadanie_jun/bloc/home_bloc.dart';

import '../../../data/models/model_for_hotel_response.dart';
import '../../../domain/models/enum/navigation.dart';
import '../../../domain/models/enum/status_downloading.dart';
import '../../core/presentation/widgets.dart';
import '../../room/presentation/room_screen.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> with TickerProviderStateMixin {
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
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Отель',
          style: TextStyle(
            color: Color(0xFF000000),
          ),
        ),
      ),
      body: BlocListener<HomeBloc, HomeState>(
        listenWhen: (previous, current) => previous.navigation != current.navigation,
        listener: (context, state) {
          if (state.navigation == Navigation.navigateToRoom) {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => RoomScreen(
                        nameHotel: state.modelHotel!.name,
                      )),
            );
            context.read<HomeBloc>().add(const HomeEvent.initRoomData());
          }
        },
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.status == StatusDownloading.loading || state.status == StatusDownloading.error) {
              return CircularProgress(controller: _controller);
            }
            return _BodyWidget(
              model: state.modelHotel,
            );
          },
        ),
      ),
    );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({
    required this.model,
  }) : super();

  final ModelForHotelResponse? model;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        _FirstContainer(
          model: model,
        ),
        const SizedBox(height: 8),
        _SecondContainer(
          model: model,
        ),
        const SizedBox(height: 11),
        const _ThirdContainer(),
      ],
    );
  }
}

class _FirstContainer extends StatelessWidget {
  final ModelForHotelResponse? model;

  const _FirstContainer({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                viewportFraction: 1,
              ),
              items: model!.imagesAdress.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.transparent,
                        ),
                        child: CachedNetworkImage(
                          imageUrl: item,
                          errorWidget: (BuildContext context, String value, dynamic) => CachedNetworkImage(
                            imageUrl: 'https://toptipbio.com/wp-content/uploads/2017/07/Error.png',
                          ),
                        ),);
                  },
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 16),
          YellowContainerWithRate(
            rateInt: model!.rating.toString(),
            rateString: model!.ratingName,
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
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'от ${model!.minimalPrice} P',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 24,
                  ),
                  Text(
                    model!.priceForIt,
                    style: const TextStyle(
                      color: Color(0xFF828796),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SecondContainer extends StatelessWidget {
  final ModelForHotelResponse? model;

  const _SecondContainer({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<WidgetForWrap>? greyContainers =
        model!.hotelInfo.peculiarities.map((text) => WidgetForWrap(text: text)).toList();
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Color(0xFFFFFFFF),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Об отеле',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            runSpacing: 8,
            spacing: 8,
            children: greyContainers,
          ),
          const SizedBox(height: 12),
          Text(
            model!.hotelInfo.description,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 24 / 16,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              color: Color(0xFFFBFBFC),
            ),
            child: Column(
              children: <Widget>[
                const ButtonWithInfo(
                  text: 'Удобства',
                  icon: 'assets/svg/emoji.svg',
                ),
                Divider(
                  color: const Color(0xFF828796).withOpacity(0.85),
                ),
                const ButtonWithInfo(
                  text: 'Что включено',
                  icon: 'assets/svg/tick-square.svg',
                ),
                Divider(
                  color: const Color(0xFF828796).withOpacity(0.85),
                ),
                const ButtonWithInfo(
                  text: 'Что не включено',
                  icon: 'assets/svg/close-square.svg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ThirdContainer extends StatelessWidget {
  const _ThirdContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Divider(
            thickness: 1,
            height: 0,
            color: const Color(0xFFE8E9EC).withOpacity(0.85),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
              bottom: 28,
              left: 16,
              right: 16,
            ),
            child: ButtonForNextPage(
              text: 'К выбору номера',
              onPressed: () => context.read<HomeBloc>().add(const HomeEvent.userClickedButtonToRoom()),
            ),
          )
        ],
      ),
    );
  }
}
