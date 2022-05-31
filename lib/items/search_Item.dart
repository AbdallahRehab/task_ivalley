import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task_ivalley/widgets/ImageWidget.dart';

class SearchItem extends StatelessWidget {
  final Function onclick;

  SearchItem({
    Key? key,
    required this.onclick,
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
                            "https://dwq8ksvud9smv.cloudfront.net/Seller/Logo-evq57v84r.jpg",
                            width: 22.w,
                            height: 15.h,
                          ))),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'سوزوكي',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 11.sp),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '${"Order_ID"} : 22',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 11.sp),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "productName",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      Text(
                        ' ${"Reservation_date"} :',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 11.sp,
                        ),
                      ),
                      Text(
                        '4545',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "price : 122",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 22.w,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.all(
                                          Radius.circular(10)),
                                      border: Border.all(
                                          color:
                                          Colors.grey.shade300,
                                          width: 1)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 4.sp,
                                        vertical: 4),
                                    child: Center(
                                        child: Text(
                                          "view",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 11.sp,
                                              fontWeight:
                                              FontWeight.bold),
                                        )),
                                  ),
                                ),
                              ],
                            ),
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
