import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sport/commons/router/app_router.dart';
import 'package:sport/commons/style/app_style.dart';
@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 120,
                      width: 120,
                      child: SvgPicture.asset('assets/icons/ball.svg',fit: BoxFit.cover,)),
                  const SizedBox(height: 13,),
                  Text('Sport app',style: customStyle.copyWith(fontSize: 21,fontWeight: FontWeight.w700),),
                ],
              ),
            ),


            TextButton(
              child: Text('Get Started',style: customStyle.copyWith(fontSize: 17,fontWeight: FontWeight.w400),),
              onPressed: (){
                AutoRouter.of(context).pushAndPopUntil(const CombainRoute(), predicate: (Route<dynamic> route) => false,);
              },
            ),
            SizedBox(height: 36,),
          ],
        ),
      ),
    );
  }
}
