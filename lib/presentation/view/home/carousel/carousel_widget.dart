import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport/commons/other/lists.dart';

import 'carousel_cubit/carousel_cubit.dart';
class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.sizeOf(context);
    CarouselController controller=CarouselController();

    return
      Column(
        children: [
          SizedBox(
            height: size.height*0.24,
            width: size.width,
            child: CarouselSlider(
                carouselController: controller,
                options: CarouselOptions(
                    reverse: false,
                    initialPage: 0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    onPageChanged: (index2, reason) {
                      context.read<CarouselCubit>().changeIndex(index2);
                    }),
              items: carouselImageList.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(image:AssetImage(i),fit: BoxFit.cover, ),
                        ),

                    );
                  },
                );
              }).toList(),
            ),
          ),

          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                carouselImageList.length,
                    (index1) => Row(children: [
                  BlocBuilder<CarouselCubit, CarouselInitial>(
                    builder: (context, state) {
                      return CircleAvatar(
                        radius: 4,
                        backgroundColor: state.index == index1
                            ? Colors.black
                            : Colors.black54,
                      );
                    },
                  ),
                  const SizedBox(
                    width: 4,
                  )
                ])),
          ),
        ],
      );
  }
}
