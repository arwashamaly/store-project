import 'package:flutter/material.dart';
import 'package:store_arwa_shamaly_f/Product.dart';

class OrderConfirmation extends StatefulWidget {
  @override
  State<OrderConfirmation> createState() => _OrderConfirmationState();
}

class _OrderConfirmationState extends State<OrderConfirmation> {
  List<Product> item = [
    Product(Image.asset("images/img_2.png"), "حذاء رياضي", "المقاس : 42",
        "\$18", Colors.black, false),
    Product(Image.asset("images/img_2.png"), "حذاء رياضي", "المقاس : 42",
        "\$18", Colors.black, false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFDFA),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text("تأكيد الطلب"),
          titleTextStyle: TextStyle(
              color: Colors.black,
              fontFamily: 'avenir',
              fontSize: 16,
              fontWeight: FontWeight.w800),
          actions: [Icon(Icons.arrow_forward_ios_outlined)],
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, bottom: 12, top: 20),
                        child: Text("العنوان",
                            style: TextStyle(
                                fontFamily: 'avenir',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff636363))),
                      ),
                      Container(
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
                            prefixIcon: Icon(Icons.location_on_outlined),
                            prefixIconColor: Color(0xff957255),
                            hintText: 'الخرطوم , المعمورة , شارع السجانة',
                            hintStyle: TextStyle(
                                fontFamily: 'avenir', color: Colors.black),
                            hintTextDirection: TextDirection.rtl,
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, bottom: 12, top: 24),
                        child: Text("طرق الدفع",
                            style: TextStyle(
                                fontFamily: 'avenir',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff636363))),
                      ),
                      Container(
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
                            prefixIcon: Icon(Icons.real_estate_agent_outlined),
                            prefixIconColor: Color(0xff957255),
                            hintText: 'الدفع عند الاستلام',
                            hintStyle: TextStyle(
                                fontFamily: 'avenir', color: Colors.black),
                            hintTextDirection: TextDirection.rtl,
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, bottom: 12, top: 24),
                        child: Text("المنتجات",
                            style: TextStyle(
                                fontFamily: 'avenir',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff636363))),
                      ),
                      SizedBox(
                        height: 300,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Card(
                              elevation: 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.edit_calendar_outlined,
                                              size: 15,
                                            ),
                                            color: Color(0xff957255),
                                          ),
                                          SizedBox(
                                            width: 85,
                                          ),
                                          Text(item[index].title,
                                              style: TextStyle(
                                                  fontFamily: 'avenir',
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 11,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
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
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            child: IconButton(
                                              onPressed: () {},
                                              constraints:
                                                  BoxConstraints.tightFor(
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
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            child: IconButton(
                                              onPressed: () {},
                                              constraints:
                                                  BoxConstraints.tightFor(
                                                      width: 20, height: 20),
                                              icon: Icon(Icons.minimize,
                                                  size: 10),
                                              color: Colors.white,
                                              padding:
                                                  EdgeInsets.only(bottom: 5.5),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 85,
                                          ),
                                          Text(item[index].price,
                                              style: TextStyle(
                                                  color: Color(0xff957255),
                                                  fontFamily: 'avenir',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16)),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
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
                                        left: 20,
                                        right: 20,
                                        top: 10,
                                        bottom: 10),
                                    child: item[index].image,
                                    margin: EdgeInsets.all(12),
                                  ),
                                  SizedBox(
                                    height: 110,
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: item.length,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Text(
                              "\$36",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontFamily: 'avenir',
                                color: Color(0xff7F7F7F),
                              ),
                            ),
                          )),
                          Expanded(
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Text(
                              "تكلفة الشراء ",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                fontFamily: 'avenir',
                                color: Color(0xff7F7F7F),
                              ),
                            ),
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Text(
                              "\$5",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontFamily: 'avenir',
                                color: Color(0xff7F7F7F),
                              ),
                            ),
                          )),
                          Expanded(
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Text(
                              "تكلف الشحن",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                fontFamily: 'avenir',
                                color: Color(0xff7F7F7F),
                              ),
                            ),
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Text(
                              "\$1.5",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontFamily: 'avenir',
                                color: Color(0xff7F7F7F),
                              ),
                            ),
                          )),
                          Expanded(
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Text(
                              "ضرائب ",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                fontFamily: 'avenir',
                                color: Color(0xff7F7F7F),
                              ),
                            ),
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Divider(
                        height: 1,
                        color: Color(0xffCDCDCD),
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Text(
                              "\$42.5",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                fontFamily: 'avenir',
                                color: Colors.black,
                              ),
                            ),
                          )),
                          Expanded(
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Text(
                              "التكلفة النهائية",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontFamily: 'avenir',
                                color: Colors.black,
                              ),
                            ),
                          )),
                        ],
                      ),
                    ]),
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 234,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                     blurRadius: 2
                    )
                  ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right:20,top: 16),
                            child: Text(
                              "بيانات المستلم",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontFamily: 'avenir',
                                color: Color(0xff636363),
                              ),
                            ),
                          )),
                      Divider(
                        height: 1,
                        color: Color(0xffCDCDCD),
                        thickness: 1,
                      ),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right:20,top: 16),
                            child: Text(
                              "احمد محمد عبد الرحمن العتيبي",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                fontFamily: 'avenir',
                                color: Colors.black,
                              ),
                            ),
                          )),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right:20,top: 5),
                            child: Text(
                              "+249755778487",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontFamily: 'avenir',
                                color: Color(0xff83848A),
                              ),
                            ),
                          )),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right:20,bottom: 30),
                          child: ElevatedButton(
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
                        ),
                      ),

                    ],
                  ),
                ),
              )

            ],
          ),
        ));
  }
}
