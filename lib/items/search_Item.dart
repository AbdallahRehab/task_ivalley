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
                          const Expanded(
                            child: Text(
                              ' سوزوكي 2022',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 14),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                   '42500.0 ريال',
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
                      Text(
                        "سزوكي ديزاير",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[600]),
                      ),
                      Text(
                        ' سعودي نيو كار لشراء سيارة سزوكي ديزاير',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),

                      Row(

                        children: [
                          Icon(Icons.location_on_outlined,
                              size: 20,
                              color:Colors.red[500] ),
                          SizedBox(width: 5),
                          Text(
                            "الرياض",
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
                            "منذ 104 يوم و 7 ساعات",
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
