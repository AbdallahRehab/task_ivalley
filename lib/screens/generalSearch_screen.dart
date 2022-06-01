import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:task_ivalley/controllers/generalSearch_controller.dart';
import 'package:task_ivalley/items/search_Item.dart';
import 'package:task_ivalley/widgets/TextFieldWidget.dart';

class GeneralSearch extends StatelessWidget {
  const GeneralSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
        value: GeneralSearchController(),
        child:
            Consumer<GeneralSearchController>(builder: (context, model, child) {
          model.scrollControllerListener();
          return Stack(
            children: [
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                    controller: model.scrollController,
                    children: [
                      model.isSearching
                          ? const LinearProgressIndicator(
                              minHeight: 3,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.red))
                          : const SizedBox(),
                      SizedBox(
                        height: 1.h,
                      ),

                      //search
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                  border:
                                      Border.all(color: Colors.grey, width: 1)),
                              child: TextFieldWidget(
                                controller: model.searchController,
                                onTap: () {},
                                height: 5.h,
                                backgroundColor: Colors.white,
                                padding: const EdgeInsets.only(left: 8),
                                borderRadius: 15,
                                suffixIcon: InkWell(
                                  child: const Icon(
                                    Icons.search,
                                    size: 28,
                                    color: Colors.grey,
                                  ),
                                  onTap: () async {
                                    model.searchByKey();
                                    FocusScope.of(context)
                                        .requestFocus(FocusNode());
                                  },
                                ),
                                hintText: "ابحث عن ...",
                              ),
                            ),
                          ),
                          SizedBox(width: 2.w),
                          const Icon(
                            Icons.filter_alt,
                            size: 32,
                            color: Colors.grey,
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 2.h,
                      ),

                      model.searchModel.isEmpty
                          ? Container(
                              height: 60.h,
                              width: 90.w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.not_interested,
                                      color: Colors.grey, size: 130),
                                  SizedBox(height: 1.h),
                                  Text(
                                    "لا توجد بيانات",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 20),
                                  )
                                ],
                              ),
                            )
                          : bulidCardOfSearch(model),

                      if (model.isLoadingMore)
                        bulidLoadingMore(),

                      if (model.isLoadingMore)
                        SizedBox(
                          height: 4.h,
                        ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }));
  }
  bulidCardOfSearch(GeneralSearchController model){
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: model.searchModel.length,
      itemBuilder: (context, index) {
        return Padding(
          padding:
          const EdgeInsets.symmetric(vertical: 4.0),
          child: SearchItem(
            onclick: () {},
            searchItemData: model.searchModel[index],
          ),
        );
      },
    );
  }
  bulidLoadingMore(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(1, 3),
                      blurRadius: 4,
                      spreadRadius: 2)
                ]),
            padding: const EdgeInsets.all(12),
            child: Container(
              height: 4.h,
              width: 4.h,
              child: CircularProgressIndicator(
                color: Colors.red[500],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
