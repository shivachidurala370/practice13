import 'package:flutter/material.dart';

import 'bottomnavigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Bottomnavigation(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? gender;
  bool checked = false;
  int _counter = 0;
  List<String> images = [
    "assets/benz.png",
    "assets/benz.png",
    "assets/benz.png"
  ];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Browse Cars",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF545358))),
                    Icon(Icons.menu),
                  ],
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 54,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 6)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Search",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.black87),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.black87,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 34,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hot deals",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87),
                    ),
                    Text(
                      "view all",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 286,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          height: 296,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 16,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Audi",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      '\u{20B9}${340}',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "R8 Coupe",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      '/day',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Image.asset(
                                  images[index],
                                  width: 180,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 14),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Details",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 12),
                                            alignment: Alignment.center,
                                            height: 50,
                                            width: 120,
                                            decoration: BoxDecoration(
                                                color: Colors.black45,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(18),
                                                )),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Rent Now",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.white),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                  size: 20,
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ));
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 16,
                      );
                    },
                    itemCount: images.length),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top dealers",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    Text(
                      "view all",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 16),
                height: 140,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(4),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 70,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  blurRadius: 8)
                            ],
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/hertz.png"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Hertz",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              Text(
                                "174 Offers",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 10,
                      );
                    },
                    itemCount: 5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//Radio buttons & checkboxes

// Text(
//   "Radio Buttons",
//   style: TextStyle(
//       fontSize: 20,
//       fontWeight: FontWeight.w700,
//       color: Colors.black),
// ),
// SizedBox(
//   height: 16,
// ),
// RadioListTile(
//     title: Text("Male"),
//     value: "Male",
//     groupValue: gender,
//     onChanged: (value) {
//       setState(() {
//         gender = value.toString();
//       });
//     }),
// // Text("${gender}"),
// RadioListTile(
//     title: Text("Female"),
//     value: "Female",
//     groupValue: gender,
//     onChanged: (value) {
//       setState(() {
//         gender = value.toString();
//       });
//     }),
// SizedBox(
//   height: 20,
// ),
// Text(
//   "Checkboxes",
//   style: TextStyle(
//       fontSize: 20,
//       fontWeight: FontWeight.w700,
//       color: Colors.black),
// ),
// SizedBox(
//   height: 16,
// ),
// Row(
//   children: [
//     Checkbox(
//         value: checked,
//         onChanged: (value) {
//           setState(() {
//             checked = value!;
//           });
//         }),
//     SizedBox(
//       width: 4,
//     ),
//     Text("Terms & Conditions"),
//   ],
// ),
// SizedBox(
//   height: 20,
// ),
// Text(
//   "Circle Avatar",
//   style: TextStyle(
//       fontSize: 20,
//       fontWeight: FontWeight.w700,
//       color: Colors.black),
// ),
// SizedBox(
//   height: 16,
// ),
// CircleAvatar(
//     radius: 30,
//     backgroundColor: Colors.black87,
//     child: Image.asset(
//       "assets/avatar1.png",
//       height: 140,
//       width: 140,
//       fit: BoxFit.cover,
//     ))
