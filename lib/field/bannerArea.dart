import 'package:camera_demo/theme/colors.dart';
import 'package:flutter/material.dart';

class BannerWidgetArea extends StatelessWidget {
  final bannerItems = ["Etli Ekmek", "Urfa Kebab", "Üzüm Yaprak", "Edirne Ciğeri","Kayseri Mantı","Cağ Kebabı"];
  final bannerImage = [
    "images/etliEkmek.jpg",
    "images/urfaKebab.jpg",
    "images/uzumYaprak.jpg",
    "images/edirneCiger.jpg",
    "images/kayseriManti.jpg",
    "images/cagKebabi.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    final screenSizeHeight = MediaQuery.of(context).size.height;
    final screenSizeWidth = MediaQuery.of(context).size.width;
    PageController controller =
        PageController(initialPage: 1, viewportFraction: 0.91);
    List<Widget> banners = List<Widget>();

    for (int i = 0; i < bannerImage.length; i++) {
      var bannerView = Padding(
        padding: EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: () {
         
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 2.0,
                            spreadRadius: 1.0)
                      ]),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    bannerImage[i],
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [transParent, blackSh],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bannerItems[i],
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
      banners.add(bannerView);
    }

    return Container(
      width: screenSizeWidth,
      height: screenSizeHeight * 6 / 16,
      child: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: banners,
      ),
    );
  }
}
