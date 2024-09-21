import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/pages/home.dart';

class PageTabs extends StatefulWidget {
  const PageTabs({super.key});

  @override
  State<PageTabs> createState() => _PageTabsState();
}

class _PageTabsState extends State<PageTabs> {
  int pageIndex = 0;

  //late initialization of the page controller
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: pageIndex);
    pageController.addListener(() {
      setState(() {
        pageIndex = pageController.page!.round();
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            pageIndex = index;
          });
        },
        children: const [
          Home(),
          Center(child: Text("Hello There"),),
          Center(child: Text("Hello There"),),
          Center(child: Text("Hello There"),),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
          pageController.jumpToPage(index);
        },
        currentIndex: pageIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.device_phone_portrait), label: "Send"),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_sharp), label: "History"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.calendar), label: "Scheduled")
        ],
      ),
    );
  }
}
