import 'package:flutter/material.dart';
import 'package:practice13/main.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

final tabs = [MyHomePage(), Gift(), Notifications(), Myaccount()];

class _BottomnavigationState extends State<Bottomnavigation> {
  int _selectedindex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  //final tabs = [Homepage(), Mymusic(), Hellotunes(), Settings()];

  // @override
  // void initState() {
  //   super.initState();
  //   setState(() {
  //     //_selectedIndex = widget.activeIndex;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: "gift"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Myaccount"),
        ],
        currentIndex: _selectedindex,
        selectedItemColor: Colors.blue,
        unselectedLabelStyle:
            const TextStyle(color: Colors.black45, fontSize: 14),
        // showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        elevation: 20,
      ),
    );
  }
}

class Gift extends StatefulWidget {
  const Gift({super.key});

  @override
  State<Gift> createState() => _GiftState();
}

class _GiftState extends State<Gift> {
  //final TabController _tabController;

  @override
  void initState() {
    super.initState();
    // _tabController = TabController(length: 3,);
  }

  @override
  void dispose() {
    //_tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      child: TabBar(
                        tabs: [
                          Text("Hello"),
                          Text("bye"),
                        ],
                      ),
                    ),
                    Container(
                        color: Colors.red,
                        height: 500,
                        child:
                            TabBarView(children: [Text("Hello"), Text("Bye")]))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
    );
  }
}

class Myaccount extends StatefulWidget {
  const Myaccount({super.key});

  @override
  State<Myaccount> createState() => _MyaccountState();
}

class _MyaccountState extends State<Myaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
    );
  }
}
