import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sport/commons/other/lists.dart';
import 'package:sport/commons/other/strings.dart';
import 'package:sport/commons/router/app_router.dart';
import 'package:sport/commons/style/app_style.dart';

@RoutePage()
class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 11),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.35,
              width: size.width,
              child: ColoredBox(
                color: Colors.green,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(todayImageList.first),
                        fit: BoxFit.cover,
                      )),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.7),
                                Colors.black.withOpacity(0.3),
                                Colors.black.withOpacity(0.1),
                                Colors.black.withOpacity(0.1),
                                Colors.black.withOpacity(0.1),
                                Colors.black.withOpacity(0.2),
                                Colors.black.withOpacity(0.5),
                                Colors.black.withOpacity(0.7),
                                Colors.black.withOpacity(0.9),
                              ]),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 0,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                AutoRouter.of(context).popUntilRoot();
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.white,
                              )),
                          Text(
                            'Back',
                            style: customStyle.copyWith(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: size.height * 0.05,
                        left: 12,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/fire.svg',
                                    height: 24,
                                    width: 24,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Top news',
                                    style: customStyle.copyWith(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Phoenix Suns vs Boston Celtics',
                                style: customStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 24,
                                    overflow: TextOverflow.fade,
                                    letterSpacing: 0.5),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 11.0, right: 6, top: 17, bottom: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Basketball',
                        style: customStyle.copyWith(
                            color: Colors.red, fontSize: 15),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Wed 12/16 ',
                        style: customStyle.copyWith(fontSize: 15),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        '8:30 PM',
                        style: customStyle.copyWith(fontSize: 15),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 21.0,bottom: 17),
                    child: Text(
                      Strings.describe,
                      style: customStyle.copyWith(
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  ),
                  GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 7,
                        crossAxisSpacing: 5,
                       childAspectRatio: 1/1.2,
                        crossAxisCount: 2),
                    itemBuilder: (BuildContext context, int index) {
                      return Image(image: AssetImage(todayImageList[index+1],),fit: BoxFit.cover,);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
