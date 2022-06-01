import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task_ivalley/utils/api_routes.dart';
import 'package:task_ivalley/widgets/ImageWidget.dart';
import 'package:task_ivalley/model/getAllAdvertisment_model.dart';

class SearchItem extends StatelessWidget {
  final Function onclick;
  final GetAllAdvertismentModel searchItemData;

  SearchItem({
    Key? key,
    required this.onclick,
    required this.searchItemData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onclick(),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                spreadRadius: 1,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                          Border.all(color: Colors.white, width: 1)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: ImageWidget(
                            ApiRoutes.URL+searchItemData.mainImagePath.toString(),
                            width: 25.w,
                            height: 14.h,
                          ))),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                           Expanded(
                            child: Text(
                              '${searchItemData.brandName!} ${searchItemData.model!} ',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 14),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                   '${searchItemData.price!} ريال',
                                  style: TextStyle(
                                      color: Colors.orange[500], fontSize: 12),
                                ),
                                SizedBox(width: 5),
                                const Text(
                                  '(بعد الضريبه)',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4,),
                      Text(
                        searchItemData.mainTitle.toString(),
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[600]),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        searchItemData.description.toString(),
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4,),
                      Row(

                        children: [
                          Icon(Icons.location_on_outlined,
                              size: 20,
                              color:Colors.red[500] ),
                          SizedBox(width: 5),
                          Text(
                            searchItemData.cityName.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),

                          SizedBox(width: 5),
                          Text(
                            "|",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "منذ ${searchItemData.hours} ساعات و ${searchItemData.minuts} دقيقه",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
