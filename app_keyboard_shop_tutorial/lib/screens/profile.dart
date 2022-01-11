import 'package:app_keyboard_shop_tutorial/widgets/bottom_menu_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ProFile extends StatefulWidget {
  const ProFile({Key? key}) : super(key: key);
  static const routeName = '/profile';
  @override
  _ProFileState createState() => _ProFileState();
}

class _ProFileState extends State<ProFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomMenuBar() ,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaRgaPKQAjTUszrH8Bdkuf_U04Pzje_BkSvw&usqp=CAU"),
                        fit: BoxFit.cover)),
                child: Container(
                  width: double.infinity,
                  height: 150,
                  child: Container(
                    alignment: const Alignment(0.0, 5.0),
                    child: const CircleAvatar(
                      backgroundImage:
                          NetworkImage("https://toigingiuvedep.vn/wp-content/uploads/2021/05/hinh-anh-avatar-de-thuong.jpg"),
                      radius: 65.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60.0,
              ),
              const Text(
                "Trọng Sơn",
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {},

                    child: Ink(
                      child: Container(
                        constraints: const BoxConstraints(
                          maxWidth: 120.0,
                          maxHeight: 90.0,
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Being Transported",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {},

                    child: Ink(
                      child: Container(
                        constraints: const BoxConstraints(
                          maxWidth: 120.0,
                          maxHeight: 90.0,
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Recently Viewed",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
