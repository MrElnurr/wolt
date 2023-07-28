import 'package:flutter/material.dart';

import 'karusel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wolt',
      theme: ThemeData(useMaterial3: true),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 39, 39, 39),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    menuBar(
                      'https://img.lovepik.com/element/45012/2924.png_860.png',
                      'Restourants',
                    ),
                    SizedBox(width: 15),
                    menuBar(
                      'https://cdn-icons-png.flaticon.com/512/4162/4162923.png',
                      'Groceriers',
                    ),
                    SizedBox(width: 15),
                    menuBar(
                      'https://w7.pngwing.com/pngs/208/838/png-transparent-computer-icons-encapsulated-postscript-alcohol-icon-food-line-iconos.png',
                      'Alcohol',
                    ),
                    SizedBox(width: 15),
                    menuBar(
                      'https://cdn-icons-png.flaticon.com/512/5579/5579561.png',
                      'Flowers',
                    ),
                    SizedBox(width: 15),
                    menuBar(
                      'https://www.psdgraphics.com/wp-content/uploads/2010/11/store-icon.jpg',
                      'General Stores',
                    ),
                    SizedBox(width: 15),
                    menuBar(
                      'https://www.pngitem.com/pimgs/m/367-3675869_transparent-beauty-icon-png-health-and-beauty-icon.png',
                      'Health & Beauty',
                    ),
                    SizedBox(width: 15),
                    menuBar(
                      'https://cdn-icons-png.flaticon.com/512/3140/3140343.png',
                      'Pharmacies',
                    ),
                    SizedBox(width: 15),
                    menuBar(
                      'https://discovery-cdn.wolt.com/cities/helsinki/sections/96afa466-ff18-11ea-9a5c-d6111ad357b2_wolt_fb_profile_.png',
                      'Wolt+',
                    ),
                  ],
                ),
              ),
              CarouselWithDots(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Fastest Delivery',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    ElevatedButton(
                      onPressed: () => debugPrint('Hele hazir deyil'),
                      child: Text('See all'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildItem(
                        imageUrl:
                            'https://imageproxy.wolt.com/venue/63245d7ad607bb67ec131b87/7b02bd9e-749a-11ed-b0fa-a61fa9e1450d_tantuni_81.jpg',
                        price: '0.0 AZN',
                        icon: Icons.delivery_dining,
                        nameOfFood: 'Tantuni',
                        bal: 8.8,
                        time: 11,
                        time2: 15,
                      ),
                      buildItem(
                        imageUrl:
                            'https://imageproxy.wolt.com/menu/menu-images/63245ed8d40169e966a4b334/aea7ffe0-a6ec-11ed-ab57-922a2f9ae446_3.toyuq_burger_fri_pepsi.jpeg?w=600',
                        price: '0.0 AZN',
                        icon: Icons.delivery_dining,
                        nameOfFood: 'Burger menu',
                        bal: 9.4,
                        time: 5,
                        time2: 10,
                      ),
                      buildItem(
                        imageUrl:
                            'https://imageproxy.wolt.com/menu/menu-images/6113fa8038108a5ebf85af34/c4a7766c-70fb-11ed-abe1-1291669db690_1.m_rci_s_orbas___1_.jpeg?w=600',
                        price: '0.0 AZN',
                        icon: Icons.delivery_dining,
                        nameOfFood: 'Merci',
                        bal: 7.7,
                        time: 14,
                        time2: 21,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Burger menu',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    ElevatedButton(
                      onPressed: () => debugPrint('Hele hazir deyil'),
                      child: Text('See all'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildItem(
                        imageUrl:
                            'https://imageproxy.wolt.com/menu/menu-images/62e111560ba485f404a1342a/92b0c586-ac43-11ed-a6a6-06e2dd26514e_0u8a1546.jpeg?w=300',
                        price: '0.0 AZN',
                        icon: Icons.delivery_dining,
                        nameOfFood: 'Burger 1',
                        bal: 8.8,
                        time: 11,
                        time2: 15,
                      ),
                      buildItem(
                        imageUrl:
                            'https://imageproxy.wolt.com/venue/5d0a52b4fb98c76f9a8f5442/c806b200-1335-11ee-8f16-5a5ff70e42fb_fryday_1.png?w=960',
                        price: '0.0 AZN',
                        icon: Icons.delivery_dining,
                        nameOfFood: 'Burger 2',
                        bal: 9.4,
                        time: 5,
                        time2: 10,
                      ),
                      buildItem(
                        imageUrl:
                            'https://imageproxy.wolt.com/venue/6261416115cd9a30865fecb1/2d77448c-c167-11ec-a057-3a39e9366d41_sand._smoked_salmon_sandwich.jpg?w=960',
                        price: '0.0 AZN',
                        icon: Icons.delivery_dining,
                        nameOfFood: 'Burger 3',
                        bal: 7.7,
                        time: 14,
                        time2: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Restourants',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    ElevatedButton(
                      onPressed: () => debugPrint('Hele hazir deyil'),
                      child: Text('See all'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Restourants('KFC',
                          'https://imageproxy.wolt.com/wolt-frontpage-images/content_editor/banners/images/010f1f20-0c55-11ee-b549-ca1c24e9db79_14a12af5_e8d1_408d_9dc5_ba5d70754e7d.png?w=600'),
                      Restourants('PapaJhons',
                          'https://imageproxy.wolt.com/wolt-frontpage-images/content_editor/banners/images/0efd9d64-924d-11ed-9b2b-f2990ce6970e_792623ee_73d7_48f2_8230_a590d7e8ed55.png?w=600'),
                      Restourants("McDonald's",
                          'https://imageproxy.wolt.com/wolt-frontpage-images/content_editor/banners/images/f46b10e4-0c54-11ee-b3ee-c2d3d70cd184_77cf0414_f17e_42d6_a54e_99a0bad9cf78.png?w=600'),
                      Restourants('CafeCity',
                          'https://imageproxy.wolt.com/wolt-frontpage-images/content_editor/banners/images/56379798-0c55-11ee-b164-a6d6dc0e8926_563af671_02d4_4390_abf4_f2afd4518ebb.png?w=600'),
                      Restourants('PizzaMizza',
                          'https://imageproxy.wolt.com/wolt-frontpage-images/content_editor/banners/images/76af63d4-0c55-11ee-8c9e-d27cdb026f65_02bfd4ee_47e7_4b30_b732_f29091cdb72c.png?w=600'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 39, 38, 38),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: 'Discovery',
              icon: Icon(
                Icons.apartment_outlined,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Restaurants',
              icon: Icon(
                Icons.food_bank_outlined,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Stores',
              icon: Icon(
                Icons.shop_outlined,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(
                Icons.person_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildItem(
    {required String imageUrl,
    required String price,
    required IconData icon,
    required String nameOfFood,
    required int time,
    required int time2,
    required double bal}) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: SizedBox(
      height: 175,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 49, 49, 49),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 226,
              height: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.5),
              child: Column(
                children: [
                  Text(
                    nameOfFood,
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.5),
                  child: Icon(icon),
                ),
                SizedBox(width: 5),
                Text(
                  '₼ $price',
                  style: TextStyle(fontSize: 10, color: Colors.lightBlue),
                ),
                Text(
                  '   ·  $time - $time2 min  ·  ☺ $bal ',
                  style: TextStyle(
                      fontSize: 10,
                      color: const Color.fromARGB(255, 179, 177, 177)),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget menuBar(String menuURL, String nameOfMenu) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: Padding(
          padding: EdgeInsets.all(2.5),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 49, 48, 48),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.5),
              child: CircleAvatar(
                radius: 30,
                foregroundImage: NetworkImage(menuURL),
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ),
      ),
      SizedBox(height: 2),
      Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Text(
          nameOfMenu,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}

Widget Restourants(String name, String url) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: SizedBox(
      height: 175,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 49, 49, 49),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 127,
              height: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(url),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
