import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:trafic_app/view/components/buttons/app_bar_actions_buttons.dart';
import 'package:trafic_app/view/components/container/list_view_items.dart';
import 'package:trafic_app/view/components/text/app_bar_text1.dart';
import 'package:trafic_app/view/components/text/app_bar_text2.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final Color textColor = Colors.black;
  final Color iconColor = Colors.black;
  final Color scaffoldPrimaryColor = Colors.orange.shade50;
  List<String> imgList = [
    'assets/images/a.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarBuild(context),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 350.0,
              height: 125.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://e7.pngegg.com/pngimages/898/980/png-clipart-android-mobile-app-development-creative-question-mark-blue-text.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'E- Sınav\nTestleri',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: textColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 25.0,
                          ),
                          const Text(
                            'Bir Test Çöz!',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 72.0, top: 65.0),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.grey,
                          size: 14.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Text(
              'Bunlara da bir bak!',
              style: TextStyle(
                fontSize: 17.0,
                color: textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Container(
              height: 425.0,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListViewItems(
                      title: 'Konu\nAnlatımı',
                      url:
                          'https://cdn.pixabay.com/photo/2014/09/05/18/32/old-books-436498_960_720.jpg'),
                  const SizedBox(width: 25.0),
                  ListViewItems(
                      title: 'Trafik İşaretleri',
                      url:
                          'https://cdn.pixabay.com/photo/2015/02/13/10/18/stop-634941_960_720.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar AppBarBuild(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AppBarText1(),
          AppBarText2(),
        ],
      ),
      actions: const [
        AppBarActionsButton(),
      ],
    );
  }
}
