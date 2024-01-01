import 'package:betazen/Model/model_screen2.dart';
import 'package:betazen/Widget/widget_screen2.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2>  with SingleTickerProviderStateMixin{
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Completed'),
    Tab(text: 'Cancelled'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    int currentIndex = 1;
    var listS2 =[
      Screen2Model(Image: 'assets/images/bus.png', title: 'Bus Ticket', startingLocation: 'Indore', lastLocation: 'Gwalior', brandName: 'Flybus', subtitle: 'Boarding at Pipliyahana Square', date: '26', day: 'Tuesday', monthAndYear: 'Sep 2023'),
      Screen2Model(Image: 'assets/images/bus.png', title: 'Bus Ticket', startingLocation: 'Indore', lastLocation: 'Gwalior', brandName: 'Flybus', subtitle: 'Boarding at Pipliyahana Square', date: '26', day: 'Tuesday', monthAndYear: 'Sep 2023'),
      Screen2Model(Image: 'assets/images/bus.png', title: 'Bus Ticket', startingLocation: 'Indore', lastLocation: 'Gwalior', brandName: 'Flybus', subtitle: 'Boarding at Pipliyahana Square', date: '26', day: 'Tuesday', monthAndYear: 'Sep 2023'),
    ];




    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: listS2.length,
                  itemBuilder:(context , index){
                    return Screen2Widget(context,listS2[index]);
                  }
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        selectedLabelStyle: const TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: const TextStyle(
          color: Colors.grey
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: currentIndex == 0 ? Colors.red : Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add_check_rounded, color: currentIndex == 1 ? Colors.red : Colors.grey),
            label: 'My Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_help, color: currentIndex == 2 ? Colors.red : Colors.grey),
            label: 'Help',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: currentIndex == 3 ? Colors.red : Colors.grey),
            label: 'My Account',
          ),
        ],
      ),
    );
  }
}
