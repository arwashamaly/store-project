import 'package:flutter/material.dart';
import 'package:store_arwa_shamaly_f/Product.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int currentIndex = 2;
  bool flag = false;
  List<Product> item = [
    Product(Image.asset("images/img_2.png"), "حذاء رياضي", "المقاس : 42",
        "\$18", Colors.black, false),
    Product(Image.asset("images/img_2.png"), "حذاء رياضي", "المقاس : 42",
        "\$18", Colors.black, false),
    Product(Image.asset("images/img_2.png"), "حذاء رياضي", "المقاس : 42",
        "\$18", Colors.black, false)
  ];

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
        bottom: PreferredSize(
            child: CheckboxListTile(
              activeColor: Color(0xff957255),
              title: Text(
                "3 منتجات",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontFamily: 'avenir',
                  fontSize: 14,
                ),
              ),
              value: flag,
              onChanged: (value) {
                setState(() {
                  flag = value!;
                });
              },
            ),
            preferredSize: Size.fromHeight(55)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 24),
          child: Column(
            children: [
              SizedBox(
                height: 360,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(item[index].title,
                                  style: TextStyle(
                                      fontFamily: 'avenir',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(
                                height: 11,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: item[index].color,
                                  ),
                                  Text("اللون : ",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontFamily: 'avenir',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff4F4B48))),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    item[index].size,
                                    style: TextStyle(
                                        fontFamily: 'avenir',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff4F4B48)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Row(
                                children: [
                                  Ink(
                                    decoration: ShapeDecoration(
                                      color: Color(0xff957255),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      constraints: BoxConstraints.tightFor(
                                          width: 20, height: 20),
                                      icon: Icon(Icons.add, size: 10),
                                      color: Colors.white,
                                      padding: EdgeInsets.only(),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("1"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Ink(
                                    decoration: ShapeDecoration(
                                      color: Color(0xffC6B48C),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      constraints: BoxConstraints.tightFor(
                                          width: 20, height: 20),
                                      icon: Icon(Icons.minimize, size: 10),
                                      color: Colors.white,
                                      padding: EdgeInsets.only(bottom: 5.5),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Text(item[index].price,
                                      style: TextStyle(
                                          color: Color(0xff957255),
                                          fontFamily: 'avenir',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16)),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              color: Color.fromRGBO(244, 221, 199, 0.5),
                            ),
                            width: 112,
                            height: 80,
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),
                            child: item[index].image,
                            margin: EdgeInsets.only(left: 12),
                          ),
                          SizedBox(
                            height: 110,
                          ),
                          Checkbox(
                            value: item[index].isChecked,
                            activeColor: Color(0xff957255),
                            onChanged: (value) {
                              setState(() {
                                item[index].isChecked = value!;
                              });
                            },
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: item.length,
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Divider(
                thickness: 1,
                color: Color(0xffD0D0D0),
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    "\$36",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'avenir',
                      color: Color(0xff4A2200),
                    ),
                  )),
                  Expanded(
                      child: Text(
                    "التكلفة ",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontFamily: 'avenir',
                      color: Color(0xff100700),
                    ),
                  )),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("شراء",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'avenir',
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff957255),
                    elevation: 0,
                    fixedSize: Size(335, 48),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
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
