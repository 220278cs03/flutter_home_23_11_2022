import 'package:flutter/material.dart';

import 'models/class.dart';

class Pages extends StatefulWidget {
  const Pages({Key? key}) : super(key: key);

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  List<MyModel> list = [
    MyModel(
        avatar: "assets/girl.png",
        name: "Christina Smith",
        image: "assets/img.png"),
    MyModel(
        avatar: "assets/boy.png", name: "Joe Evans", image: "assets/img_1.png"),
    MyModel(
        avatar: "assets/img_2.png",
        name: "John Michielle",
        image: "assets/img_12.png"),
    MyModel(
        avatar: "assets/img_10.png",
        name: "Olivia Rodrigo",
        image: "assets/img_11.png"),
    MyModel(
        avatar: "assets/img_4.png",
        name: "Jack Thompson",
        image: "assets/img_13.png"),
    MyModel(
        avatar: "assets/img_5.png",
        name: "Millie Brown",
        image: "assets/img_14.png"),
    MyModel(
        avatar: "assets/img_6.png",
        name: "Mark Twain",
        image: "assets/img_15.png"),
    MyModel(
        avatar: "assets/img_7.png",
        name: "Selena Gomez",
        image: "assets/img_16.png"),
    MyModel(
        avatar: "assets/img_8.png",
        name: "Justin Bieber",
        image: "assets/img_17.png"),
    MyModel(
        avatar: "assets/img_9.png",
        name: "Dua Lipa",
        image: "assets/img_18.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            color: Color(0xffF4F5F7),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("Logo.png"),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Icon(Icons.add_box_outlined,
                                color: Color(0xff172B4D))),
                        Icon(Icons.email_outlined, color: Color(0xff172B4D)),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.keyboard_arrow_down_outlined,
                    color: Color(0xffC1C7D0)),
                Text(
                  "Show Stories",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xffC1C7D0)),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 42,
                                width: 42,
                                margin: EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(list[index].avatar),
                                        fit: BoxFit.cover),
                                    border: Border.all(color: Colors.red)),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        list[index].name,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Icon(
                                        Icons.check_circle_rounded,
                                        color: Colors.blue,
                                        size: 15,
                                      )
                                    ],
                                  ),
                                  Text(
                                    "2 hours ago",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                    selectionColor: Color(0xff7C859F),
                                  )
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.more_horiz,
                                color: Color(0xff172B4D),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 19.0),
                            child: RichText(
                              text: const TextSpan(
                                  text: "lanasmith",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xff172B4D)),
                                  children: [
                                    TextSpan(
                                      text:
                                          " It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. There are many variation... ",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff172B4D)),
                                    ),
                                    TextSpan(
                                      text: " more",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                      )
                                    )
                                  ]),

                            ),
                          ),
                          Container(
                              height: 200,
                              width: double.infinity,
                              margin: EdgeInsets.only(top: 16, bottom: 20),
                              child: Image.asset(
                                list[index].image,
                                fit: BoxFit.cover,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 6),
                                child: Icon(Icons.favorite,
                                    color: Color(0xffEB5757)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 18.0),
                                child: Text(
                                  "189",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xff7C859F)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 21.0),
                                child: Icon(
                                  Icons.comment,
                                  color: Color(0xff7C859F),
                                ),
                              ),
                              Icon(Icons.send, color: Color(0xff7C859F)),
                              Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff3F8AE0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 6),
                                child: Text("Unlock for \$5",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Colors.white)),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: Text("View all comments",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Color(0xff172B4D))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: Text(" (32)",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Color(0xff7C859F))),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    ));
  }
}
