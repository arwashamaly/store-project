import 'package:flutter/material.dart';
import 'package:store_arwa_shamaly_f/Pager.dart';
import 'package:store_arwa_shamaly_f/Product.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 4;
  List<Pager> listPager = [
    Pager("images/img_1.png", "عروض دمار لأرخص الأسعار", " حملة تخفيضات الصيف"),
    Pager("images/img_1.png", "عروض دمار لأرخص الأسعار", " حملة تخفيضات الصيف"),
    Pager("images/img_1.png", "عروض دمار لأرخص الأسعار", " حملة تخفيضات الصيف"),
    Pager("images/img_1.png", "عروض دمار لأرخص الأسعار", " حملة تخفيضات الصيف"),
  ];
  List<Product> listProduct = [
    Product.offer(Image.asset("images/img_2.png"), "حذاء رياضي", "\$18", "\$20",
        "نايكي", true, true, false, true),
    Product.offer(Image.asset("images/img_3.png"), "حذاء رياضي", "\$18", "\$20",
        "كاب", true, false, false, false),
    Product.offer(Image.asset("images/img_4.png"), "بلوزة موضة", "\$18", "\$20",
        "اورجينال", false, false, true, true),
    Product.offer(Image.asset("images/img_5.png"), "شرط قطن", "\$18", "\$20",
        "قوتونيل", false, true, false, false),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFDFA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("أهلا و سهلا"),
        titleTextStyle: TextStyle(color: Colors.black, fontFamily: 'avenir'),
        leading: Icon(Icons.dashboard_outlined),
        actions: [Icon(Icons.notifications_outlined)],
        iconTheme: IconThemeData(
          color: Color(0xff595959),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffF0F0F0),
                    spreadRadius: 1,
                    blurRadius: 1,
                  ),
                ],
              ),
              child: TextField(
                textDirection: TextDirection.rtl,
                cursorColor: Colors.black,
                cursorHeight: 20,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  suffixIconColor: Color(0xff9B9B9B),
                  hintText: 'ابحث عن تيشرتات , قمصان...',
                  hintStyle:
                      TextStyle(fontFamily: 'avenir', color: Color(0xff9B9B9B)),
                  hintTextDirection: TextDirection.rtl,
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
            ),
            SizedBox(
              height: 150,
              width: 335,
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xffB6853C),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Image.asset(
                            listPager[index].path,
                            fit: BoxFit.cover,
                            height: 115,
                            width: 193,
                          ),
                          top: 35,
                          left: 12,
                        ),
                        Positioned(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: CircleAvatar(
                                  radius: 4,
                                  backgroundColor: selectedIndex == 0
                                      ? Colors.white
                                      : Color.fromRGBO(255, 255, 255, 0.5),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: CircleAvatar(
                                  radius: 4,
                                  backgroundColor: selectedIndex == 1
                                      ? Colors.white
                                      : Color.fromRGBO(255, 255, 255, 0.5),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: CircleAvatar(
                                  radius: 4,
                                  backgroundColor: selectedIndex == 2
                                      ? Colors.white
                                      : Color.fromRGBO(255, 255, 255, 0.5),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: CircleAvatar(
                                  radius: 4,
                                  backgroundColor: selectedIndex == 3
                                      ? Colors.white
                                      : Color.fromRGBO(255, 255, 255, 0.5),
                                ),
                              ),
                            ],
                          ),
                          bottom: 12,
                          right: 12,
                        ),
                        Positioned(
                          child: Text(
                            listPager[index].title,
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 16,
                                fontFamily: 'avenir',
                                color: Colors.white),
                          ),
                          top: 14,
                          right: 12,
                        ),
                        Positioned(
                          child: Text(
                            listPager[index].description,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontFamily: 'avenir',
                                color: Colors.white),
                          ),
                          top: 48,
                          right: 12,
                        ),
                      ],
                    ),
                  );
                },
                itemCount: listPager.length,
                onPageChanged: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
                allowImplicitScrolling: true,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                height: 48,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 2)
                      ],
                      color: Color(0xffFEFEFE),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "وصل حديثا",
                        style: TextStyle(
                            fontFamily: 'avenir',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xff858585)),
                      ),
                      Text(
                        "الأكثر مبيعاً",
                        style: TextStyle(
                            fontFamily: 'avenir',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xff858585)),
                      ),
                      SizedBox(
                        height: 48,
                        width: 89,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Color(0xff957255),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Text(
                              "العروض",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'avenir',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                height: 300,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 17,
                      mainAxisSpacing: 24,
                      childAspectRatio: 2 / 3),
                  itemBuilder: (context, index) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            offset: Offset(0, 5),
                            blurStyle: BlurStyle.outer,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromRGBO(244, 221, 199, 0.5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, bottom: 20, left: 25, right: 25),
                                child: SizedBox(
                                  child: listProduct[index].image,
                                  height: 85,
                                  width: 105,
                                ),
                              ),
                            ),
                            top: 0,
                            left: 0,
                            right: 0,
                          ),
                          Positioned(
                            child: Text(
                              listProduct[index].title,
                              style: TextStyle(
                                  color: Color(0xff3D3D3D),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'avenir'),
                            ),
                            right: 12,
                            top: 140,
                          ),
                          Positioned(
                            child: Text(
                              listProduct[index].brand,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'avenir'),
                            ),
                            right: 12,
                            top: 170,
                          ),
                          Positioned(
                            child: Text(listProduct[index].discount,
                                style: TextStyle(
                                    color: Color(0xff818181),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'avenir')),
                            bottom: 30,
                            right: 12,
                          ),
                          Positioned(
                            child: Text(listProduct[index].price,
                                style: TextStyle(
                                    color: Color(0xff957255),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'avenir')),
                            bottom: 29,
                            right: 40,
                          ),
                          Positioned(
                            child: SizedBox(
                              height: 28,
                              width: 28,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Icon(Icons.favorite_border,
                                    color: Color(0xff464447), size: 20),
                              ),
                            ),
                            top: 10,
                            right: 10,
                          ),
                          Positioned(
                            child: SizedBox(
                              height: 36,
                              width: 36,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10)),
                                  color: Color.fromRGBO(149, 114, 85, 0.08),
                                ),
                                child: Icon(
                                  Icons.add_shopping_cart_outlined,
                                  color: Color(0xff957255),
                                ),
                              ),
                            ),
                            bottom: 0,
                            left: 0,
                          ),
                          Visibility(
                            visible: listProduct[index].isDiscount,
                            child: Positioned(
                              child: SizedBox(
                                height: 20,
                                width: 36,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Color(0xffCE2621),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    listProduct[index].discount,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'avenir',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              top: 60,
                              left: 8,
                            ),
                          ),
                          Visibility(
                            visible: listProduct[index].isNew,
                            child: Positioned(
                              child: SizedBox(
                                height: 21,
                                width: 51,
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Color(0xff00AE3B),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "جديد",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'avenir',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15,
                                        ),
                                      ],
                                    )),
                              ),
                              top: 95,
                              left: 8,
                            ),
                          ),
                          Visibility(
                            visible: listProduct[index].isTrend,
                            child: Positioned(
                              child: SizedBox(
                                height: 21,
                                width: 51,
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFF500),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          textAlign: TextAlign.center,
                                          " ترند",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'avenir',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          child:
                                              Image.asset("images/img_6.png"),
                                          height: 12,
                                          width: 10,
                                        )
                                        // Icon(Icons.bar,color: Colors.yellow,size: 15,),
                                      ],
                                    )),
                              ),
                              top: 95,
                              right: 8,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: listProduct.length,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        type: BottomNavigationBarType.fixed,
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
