import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport/domain/models/search/search_model.dart';

import '../../../../commons/other/strings.dart';
import '../../../../commons/style/app_style.dart';
@RoutePage()
class PlayerPage extends StatelessWidget {
  final SearchModel searchModel;
  final String imageUrl;
  const PlayerPage({super.key,required this.searchModel,required this.imageUrl});

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
                  height: size.height * 0.4,
                  width: size.width,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(imageUrl),
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
                            child: Text(
                              searchModel.name,
                              style: customStyle.copyWith(
                                  color: Colors.white,
                                  fontSize: 24,
                                  overflow: TextOverflow.fade,
                                  letterSpacing: 0.5),
                            ),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 11.0, right: 6, top: 17, bottom: 19),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(
                               searchModel.name,
                               style: customStyle.copyWith(
                                   color: Colors.red, fontSize: 15),
                             ),
                             Text(
                               'Team ${searchModel.team.name}',
                               style: customStyle.copyWith(fontSize: 15),
                             ),
                           ],
                         ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Position ${searchModel.position}',
                                style: customStyle.copyWith(fontSize: 15),
                              ),
                              Text(
                                '${searchModel.team.sport.name} Number ${searchModel.jerseyNumber}',
                                style: customStyle.copyWith(fontSize: 15),
                              ),
                            ],
                          ),


                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 17.0),
                        child: Text('About ${searchModel.name}',style: customStyle.copyWith(fontSize: 17,fontWeight: FontWeight.w700,letterSpacing: 1),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 7.0,bottom: 17),
                        child: Text(
                          Strings.describe,
                          style: customStyle.copyWith(
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
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
