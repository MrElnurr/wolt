import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWithDots extends StatefulWidget {
  @override
  _CarouselWithDotsState createState() => _CarouselWithDotsState();
}

class _CarouselWithDotsState extends State<CarouselWithDots> {
  int indexphoto = 0;

  final List<String> imageList = [
    'https://imageproxy.wolt.com/venue/62544bf0a9ed98487c67af76/ef341cc6-0e78-11ee-b784-e68491bfeb14_wolt_market_1140x810_1__1_.png?w=960',
    'https://imageproxy.wolt.com/venue/5d3035d17c5a541646bcec97/e9bc4f0a-f485-11ed-a6fc-d64a59673aa7_mcdonald_s_new_only.png?w=960',
    'https://imageproxy.wolt.com/venue/627cd17e8d3fa8e08772245b/aee3b3d4-4781-11ed-b748-32c4e9e94f9b_3c4509af_3f53_4f4b_aca6_31931202002b.jpeg?w=960',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200,
            viewportFraction: 0.8,
            initialPage: 0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(seconds: 1),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, hecne) {
              setState(() {
                indexphoto = index;
              });
            },
          ),
          items: imageList.map((imageUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: Colors.white, width: 5),
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageList.map((url) {
            int index = imageList.indexOf(url);
            return Container(
              width: 8,
              height: 8,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: indexphoto == index ? Colors.white : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
