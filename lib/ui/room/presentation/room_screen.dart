import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/home_bloc.dart';
import '../../../data/models/model_for_room_response.dart';
import '../../../domain/models/enum/navigation.dart';
import '../../../domain/models/enum/status_downloading.dart';
import '../../core/presentation/widgets.dart';
import '../../hotel/presentation/hotel_screen.dart';
import '../../reservation/presentation/reservation_screen.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({
    this.nameHotel = 'Отель',
    super.key,
  });

  final String nameHotel;

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> with TickerProviderStateMixin {
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
        if (state.navigation == Navigation.navigateToHotel) {
          Navigator.of(context).pop(
            MaterialPageRoute(builder: (context) => const HotelScreen()),
          );
        }
        if (state.navigation == Navigation.navigateToReservation) {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const ReservationScreen()),
          );
          context.read<HomeBloc>().add(const HomeEvent.initReservationData());
          context.read<HomeBloc>().add(const HomeEvent.userAddTourist());
        }
      },
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.status == StatusDownloading.loading || state.status == StatusDownloading.error) {
            return CircularProgress(controller: _controller);
          }
          return _BodyWidget(
            model: state.modelsRoom,
            name: widget.nameHotel,
          );
        },
      ),
      // ),
    );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({
    required this.model,
    required this.name,
  }) : super();

  final RoomsModel? model;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F9),
      appBar: AppBar(
        leading: BackIconButton(
          onPressed: () => context.read<HomeBloc>().add(const HomeEvent.userClickedButtonToHotel()),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          name,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: ListView.builder(
          itemCount: model!.rooms.length,
          padding: EdgeInsets.zero,
          itemBuilder: (BuildContext context, int index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: _RoomContainer(
              model: model!.rooms[index],
            ),
          ),
        ),
      ),
    );
  }
}

class _RoomContainer extends StatelessWidget {
  const _RoomContainer({required this.model}) : super();
  final ModelForRoomResponse? model;

  @override
  Widget build(BuildContext context) {
    List<WidgetForWrap>? wrapChildren = model?.peculiarities.map((text) => WidgetForWrap(text: text)).toList();
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 4 / 3,
                    viewportFraction: 1,
                  ),
                  items: model!.imagesAdress.map((item) {
                    return Builder(
                      builder: (BuildContext context) => CachedNetworkImage(
                        imageUrl: item,
                          errorWidget: (BuildContext context, String value, dynamic) => CachedNetworkImage(
                      imageUrl: 'https://toptipbio.com/wp-content/uploads/2017/07/Error.png',
                      ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            model!.name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w500,
              height: 22 / 15,
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: wrapChildren ??
                [
                  const CircularStepProgressIndicator(totalSteps: 1),
                ],
          ),
          const SizedBox(height: 8),
          InkWell(
            child: Container(
              padding: const EdgeInsets.only(
                left: 10,
                top: 2.5,
                right: 8,
                bottom: 2.5,
              ),
              decoration: const BoxDecoration(
                color: Color(0xFFE7F1FF),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Подробнее о номере',
                    style: TextStyle(
                      color: Color(0xFF0D72FF),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                    height: 29,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF0D72FF),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                '${model!.price} P',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 24),
                  Text(
                    model!.priceForWhat,
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
          const SizedBox(height: 16),
          ButtonForNextPage(
            text: 'Выбрать номер',
            onPressed: () => context.read<HomeBloc>().add(const HomeEvent.userClickedButtonToReservation()),
          ),
        ],
      ),
    );
  }
}
