import 'package:flutter/material.dart';
import 'package:sport/commons/other/lists.dart';
import 'package:sport/commons/style/app_style.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class ViewAllPage extends StatelessWidget {
  final List? tourModelList;
  final List<String> imageList;

  const ViewAllPage({super.key,  this.tourModelList,required this.imageList});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: GridView.builder(
        itemCount: tourModelList==null?imageList.length:tourModelList?.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.3,
          crossAxisSpacing: 7,
          mainAxisSpacing: 7,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.grey.shade50,
            margin:const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),

                        child: Image(
                          image:
                              AssetImage(imageList[index > 5 ? 1 : index]),
                          fit: BoxFit.cover,
                        ))),
                Padding(
                  padding: const EdgeInsets.only(left: 7.0,bottom: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 12,),
                      Text(
                        tourModelList==null? 'Team $index': tourModelList?[index].name,
                        style: customStyle.copyWith(
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            overflow: TextOverflow.ellipsis),
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      tourModelList!=null?
                      Text(
                        tourModelList?[index].slug,
                        style: customStyle.copyWith(
                            overflow: TextOverflow.ellipsis),
                        maxLines: 1,
                      ):const SizedBox.shrink(),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    ));
  }
}
