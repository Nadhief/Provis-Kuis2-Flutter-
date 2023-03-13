import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  //==
  late TabController _tabController;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _tabController.animateTo(index);
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() {
          _selectedIndex = _tabController.index;
        });
      }
    });
  }

  // static const List<Center> halaman = [
  //   Center(child: );

  // ];

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  //==
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            leading: FlutterLogo(),
            backgroundColor: Colors.blueGrey,
            title: Text('Quiz Flutter'),
            actions: <Widget>[ButtonNamaKelompok(), ButtonPerjanjian()]),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              TabBar(
                indicator: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(width: 2.0, color: Colors.red)),
                controller: _tabController,
                tabs: [
                  Tab(
                    child: Container(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Following',
                          style: TextStyle(
                            color: _selectedIndex == 0
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Downloads',
                          style: TextStyle(
                            color: _selectedIndex == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'History',
                          style: TextStyle(
                            color: _selectedIndex == 2
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                      child: Center(),
                    ),
                    Container(
                      child: Center(
                        child: ListView(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 500,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 3,
                                            blurRadius: 10,
                                            offset: Offset(0, 3))
                                      ]),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.network(
                                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                                        fit: BoxFit.cover,
                                        width: 230,
                                        height: 130,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 130, top: 20),
                                            child: Text(
                                              '6 Minute Grammar',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 85),
                                            child: Text(
                                              'Future perfect continuous',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 70, right: 150),
                                                child: Text(
                                                  '6 MB',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 65),
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    primary: Colors.green,
                                                    textStyle: const TextStyle(
                                                        fontSize: 15),
                                                  ),
                                                  onPressed: () {
                                                    // aksi jika ditap
                                                  },
                                                  child: const Text('Delete'),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 500,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 3,
                                            blurRadius: 10,
                                            offset: Offset(0, 3))
                                      ]),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.network(
                                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                                        fit: BoxFit.cover,
                                        width: 230,
                                        height: 130,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 130, top: 20),
                                            child: Text(
                                              '6 Minute Grammar',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 85),
                                            child: Text(
                                              'Future perfect continuous',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 70, right: 150),
                                                child: Text(
                                                  '6 MB',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 65),
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    primary: Colors.green,
                                                    textStyle: const TextStyle(
                                                        fontSize: 15),
                                                  ),
                                                  onPressed: () {
                                                    // aksi jika ditap
                                                  },
                                                  child: const Text('Delete'),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 500,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 3,
                                            blurRadius: 10,
                                            offset: Offset(0, 3))
                                      ]),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.network(
                                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                                        fit: BoxFit.cover,
                                        width: 230,
                                        height: 130,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 130, top: 20),
                                            child: Text(
                                              '6 Minute Grammar',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 85),
                                            child: Text(
                                              'Future perfect continuous',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 70, right: 150),
                                                child: Text(
                                                  '6 MB',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 65),
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    primary: Colors.green,
                                                    textStyle: const TextStyle(
                                                        fontSize: 15),
                                                  ),
                                                  onPressed: () {
                                                    // aksi jika ditap
                                                  },
                                                  child: const Text('Delete'),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 500,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 3,
                                            blurRadius: 10,
                                            offset: Offset(0, 3))
                                      ]),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.network(
                                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                                        fit: BoxFit.cover,
                                        width: 230,
                                        height: 130,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 130, top: 20),
                                            child: Text(
                                              '6 Minute Grammar',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 85),
                                            child: Text(
                                              'Future perfect continuous',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 70, right: 150),
                                                child: Text(
                                                  '6 MB',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 65),
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    primary: Colors.green,
                                                    textStyle: const TextStyle(
                                                        fontSize: 15),
                                                  ),
                                                  onPressed: () {
                                                    // aksi jika ditap
                                                  },
                                                  child: const Text('Delete'),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 500,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 3,
                                            blurRadius: 10,
                                            offset: Offset(0, 3))
                                      ]),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.network(
                                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                                        fit: BoxFit.cover,
                                        width: 230,
                                        height: 130,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 130, top: 20),
                                            child: Text(
                                              '6 Minute Grammar',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 85),
                                            child: Text(
                                              'Future perfect continuous',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 70, right: 150),
                                                child: Text(
                                                  '6 MB',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 65),
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    primary: Colors.green,
                                                    textStyle: const TextStyle(
                                                        fontSize: 15),
                                                  ),
                                                  onPressed: () {
                                                    // aksi jika ditap
                                                  },
                                                  child: const Text('Delete'),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 500,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 3,
                                            blurRadius: 10,
                                            offset: Offset(0, 3))
                                      ]),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.network(
                                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                                        fit: BoxFit.cover,
                                        width: 230,
                                        height: 130,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 130, top: 20),
                                            child: Text(
                                              '6 Minute Grammar',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 85),
                                            child: Text(
                                              'Future perfect continuous',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 70, right: 150),
                                                child: Text(
                                                  '6 MB',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 65),
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    primary: Colors.green,
                                                    textStyle: const TextStyle(
                                                        fontSize: 15),
                                                  ),
                                                  onPressed: () {
                                                    // aksi jika ditap
                                                  },
                                                  child: const Text('Delete'),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 500,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 3,
                                            blurRadius: 10,
                                            offset: Offset(0, 3))
                                      ]),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.network(
                                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                                        fit: BoxFit.cover,
                                        width: 230,
                                        height: 130,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 130, top: 20),
                                            child: Text(
                                              '6 Minute Grammar',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 85),
                                            child: Text(
                                              'Future perfect continuous',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 70, right: 150),
                                                child: Text(
                                                  '6 MB',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 65),
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    primary: Colors.green,
                                                    textStyle: const TextStyle(
                                                        fontSize: 15),
                                                  ),
                                                  onPressed: () {
                                                    // aksi jika ditap
                                                  },
                                                  child: const Text('Delete'),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text('Tab 3 Content'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            // currentIndex: idx,
            selectedItemColor: Colors.orange,
            // onTap: onItemTap,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list_rounded), label: "Programming"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "My Learning"),
            ]),
      ),
    );
  }
}

//

class ButtonNamaKelompok extends StatelessWidget {
  const ButtonNamaKelompok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.account_circle_rounded),
      onPressed: () {
        // icon account di tap
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Kelompok 15'),
            content: const Text(
                'Nadhief Athallah Isya (nadhiefathallahi@upi.edu), M. Fadhlan Ghafur (fadhlanghafur1509@upi.edu)'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ButtonPerjanjian extends StatelessWidget {
  const ButtonPerjanjian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.access_alarm_rounded),
      onPressed: () {
        // icon setting ditap
        const snackBar = SnackBar(
          duration: Duration(seconds: 20),
          content: Text(
              'Kami berjanji  tidak akan berbuat curang dan atau membantu kelompok lain berbuat curang'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}
