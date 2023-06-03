import 'package:flutter/material.dart';

class EmptyCartPage extends StatefulWidget {
  @override
  State<EmptyCartPage> createState() => _EmptyCartPageState();
}

class _EmptyCartPageState extends State<EmptyCartPage> {
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFDFA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("سلة المشتريات"),
        titleTextStyle: TextStyle(color: Colors.black, fontFamily: 'avenir'),
        leading: Image.asset("images/delete.png"),
        iconTheme: IconThemeData(
          color: Color(0xffE30000),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
                alignment: AlignmentDirectional.topEnd,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16,),
                  child: Text("00 منتج",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontFamily: 'avenir', color: Color(0xff838383))),
                )),
            SizedBox(
              height: 80,
            ),
            Image.asset(
              "images/img.png",
              height: 247,
              width: 200,
            ),
            SizedBox(
              height: 32,
            ),
            Text("لم تقم بأضافة اي منتج الى السلة ماخرأ ",
                style:
                    TextStyle(color: Color(0xff1E1E1E), fontFamily: 'avenir')),
            SizedBox(
              height: 46,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text("اذهب لتسوق الان",
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'avenir')),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff957255),
                elevation: 0,
                fixedSize: Size(335, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)
                )
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: '',
              activeIcon: Icon(Icons.person)),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: '',
              activeIcon: Icon(Icons.shopping_bag)),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: '',
              activeIcon: Icon(Icons.shopping_cart)),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: '',
              activeIcon: Icon(Icons.favorite)),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: '', activeIcon: Icon(Icons.home))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedItemColor: Color(0xff957255),
        unselectedItemColor: Color(0xff909090),
      ),
    );
  }
}
