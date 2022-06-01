import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task_ivalley/model/getAllAdvertisment_model.dart';
import 'package:task_ivalley/service/search_service.dart';

class GeneralSearchController extends ChangeNotifier {
  List<GetAllAdvertismentModel> searchModel = [];

  bool isSearching = false;
  bool isEmpty = true;

  TextEditingController searchController = TextEditingController();

  bool isLoadingMore = false;
  int currentPage = 1;
  int totalPages = 1;

  ScrollController scrollController = ScrollController();

  scrollControllerListener() {
    scrollController.addListener(() async {
      if (scrollController.offset >=
              scrollController.position.maxScrollExtent - 20.h &&
          !scrollController.position.outOfRange) {
        print("qqqqqqqqqq");

        if (currentPage <= totalPages) {
          if (!isLoadingMore) {
            searchModel.isNotEmpty ? await searchByKeyLoadMore() : null;
            print("EndDDDDDDDDDDDDDDDDDDDDDDDD");
          }
        }
      }
    });
  }

  updateCurrentPage(current) {
    currentPage = current;
    notifyListeners();
  }

  updateTotalPages(total) {
    totalPages = total;
    notifyListeners();
  }

  updateLoadingMore(bool newStatus) {
    isLoadingMore = newStatus;
    notifyListeners();
  }

  updateSearchingstate(bool newStatus) {
    isSearching = newStatus;
    notifyListeners();
  }

  Future<List<GetAllAdvertismentModel>> searchByKey() async {
    isSearching = true;
    currentPage = 1;
    searchModel = [];
    searchModel = await SearchService().searchByKey(
        RowsOfPage: 10,
        KeyName: searchController.text,
        PageNumber: currentPage);

    isSearching = false;
    notifyListeners();
    return searchModel;
  }

  Future<List<GetAllAdvertismentModel>> searchByKeyLoadMore() async {
    isSearching = true;
    updateLoadingMore(true);
    currentPage = currentPage + 1;

    List<GetAllAdvertismentModel> newData = await SearchService().searchByKey(
        RowsOfPage: 10,
        KeyName: searchController.text,
        PageNumber: currentPage);

    searchModel.addAll(newData);


    updateLoadingMore(false);
    isSearching = false;
    notifyListeners();
    return searchModel;
  }
}
