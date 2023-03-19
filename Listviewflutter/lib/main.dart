import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Messenger'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<UserHorizontal> listhorizontal = [
    UserHorizontal(
        avatar: "https://cdn-icons-png.flaticon.com/512/147/147142.png",
        fullname: "user1"),
    UserHorizontal(
        avatar: "https://cdn-icons-png.flaticon.com/512/147/147142.png",
        fullname: "user2"),
    UserHorizontal(
        avatar: "https://cdn-icons-png.flaticon.com/512/147/147142.png",
        fullname: "user3"),
    UserHorizontal(
        avatar: "https://cdn-icons-png.flaticon.com/512/147/147142.png",
        fullname: "user4"),
    UserHorizontal(
        avatar: "https://cdn-icons-png.flaticon.com/512/147/147142.png",
        fullname: "user5"),
    UserHorizontal(
        avatar: "https://cdn-icons-png.flaticon.com/512/147/147142.png",
        fullname: "user6"),
    UserHorizontal(
        avatar: "https://cdn-icons-png.flaticon.com/512/147/147142.png",
        fullname: "user7"),
    UserHorizontal(
        avatar: "https://cdn-icons-png.flaticon.com/512/147/147142.png",
        fullname: "user8"),
  ];
  final List<UserVartical> listvartical = [
    UserVartical(username: "Vuminh", message: "1 chấm sành điệu cùng tôi"),
    UserVartical(username: "Vuminh", message: "1 chấm sành điệu cùng tôi"),
    UserVartical(username: "Vuminh", message: "1 chấm sành điệu cùng tôi"),
    UserVartical(username: "Vuminh", message: "1 chấm sành điệu cùng tôi"),
    UserVartical(username: "Vuminh", message: "1 chấm sành điệu cùng tôi"),
    UserVartical(username: "Vuminh", message: "1 chấm sành điệu cùng tôi"),
    UserVartical(username: "Vuminh", message: "1 chấm sành điệu cùng tôi"),
    UserVartical(username: "Vuminh", message: "1 chấm sành điệu cùng tôi"),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Container(
              //margin: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.deepPurpleAccent,
                  ),
                  contentPadding: EdgeInsets.all(16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                        color: Colors.deepPurpleAccent, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                        color: Colors.deepPurpleAccent, width: 2),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listhorizontal.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 80,
                          //height: 70,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(2),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child:
                                  Image.network(listhorizontal[index].avatar)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(listhorizontal[index].fullname),
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: listvartical.length,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            margin: EdgeInsets.only(bottom: 10, right: 5),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Image.network(
                                  listhorizontal[index].avatar,
                                )),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    listvartical[index].username,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(listvartical[index].message),
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        width: 10,
                      )),
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.chat,
                          color: Colors.deepPurpleAccent,
                          size: 35,
                        ),
                        Text("chats")
                      ],
                    ),
                  ),
                  Expanded(flex: 2, child: Center()),
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.camera,
                          color: Colors.deepPurpleAccent,
                          size: 35,
                        ),
                        Text("Story")
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        width: 10,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserHorizontal {
  final String avatar;
  final String fullname;

  UserHorizontal({required this.avatar, required this.fullname});
}

class UserVartical {
  final String username;
  final String message;

  UserVartical({required this.username, required this.message});
}
