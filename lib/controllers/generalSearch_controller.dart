import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GeneralSearchController extends ChangeNotifier {
  bool isSearching = false;
  bool isEmpty = true;

  TextEditingController serachC = TextEditingController();

  int selectedCategoryId = 7;

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
            // await searchByCatAndKeyLoadMore();
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

  updateIsEmpty(bool newStatus) {
    isEmpty = newStatus;
    // notifyListeners();
  }
}
