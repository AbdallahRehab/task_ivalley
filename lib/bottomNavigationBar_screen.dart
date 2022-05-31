import 'package:flutter/material.dart';
import 'package:task_ivalley/generalSearch_screen.dart';


class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarScreenState createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int pageIndex = 0;

  final pages = [
    const CarsAvailable(),
    const DailyDeals(),
    const GeneralSearch(),
    const AddAd(),
  ];
  final pagesTitels = [
    "سيارات متاحه",
    "صفقات يوميه",
    "بحث عام",
    "اضافه اعلان",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        leading: pageIndex==2?Icon(
          Icons.arrow_back,
          color: Theme.of(context).primaryColor,
        ):null,
        title: Text(
          pagesTitels[pageIndex],
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actionsIconTheme: const IconThemeData(color: Colors.blue),
        actions:  const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(
              Icons.menu,
            ),
          )
        ],
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0
                    ? const Icon(
                  Icons.car_crash_outlined,
                  color: Colors.white,
                  size: 35,
                )
                    : const Icon(
                  Icons.car_crash_outlined,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              Text(pagesTitels[0],style: TextStyle(color:pageIndex == 0
                  ? Colors.white:Colors.grey),)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? const Icon(
                  Icons.calendar_today,
                  color: Colors.white,
                  size: 35,
                )
                    : const Icon(
                  Icons.calendar_today,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              Text(pagesTitels[1],style: TextStyle(color:pageIndex == 1
                  ? Colors.white:Colors.grey),)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: pageIndex == 2
                    ? const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 35,
                )
                    : const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              Text(pagesTitels[2],style: TextStyle(color:pageIndex == 2
                  ? Colors.white:Colors.grey),)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                icon: pageIndex == 3
                    ? const Icon(
                  Icons.add_circle_outline,
                  color: Colors.white,
                  size: 35,
                )
                    : const Icon(
                  Icons.add_circle_outline,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              Text(pagesTitels[3],style: TextStyle(color:pageIndex == 3
                  ? Colors.white:Colors.grey),)
            ],
          ),
        ],
      ),
    );
  }
}

class CarsAvailable extends StatelessWidget {
  const CarsAvailable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 1",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class DailyDeals extends StatelessWidget {
  const DailyDeals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}


class AddAd extends StatelessWidget {
  const AddAd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
