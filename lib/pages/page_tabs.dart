import 'package:flutter/material.dart';

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
          Center(child: Text("Hello There"),),
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
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.phone_iphone_sharp), label: "Send"),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_sharp), label: "History"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "Scheduled")
        ],
      ),
    );
  }
}
