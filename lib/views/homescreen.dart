import 'package:roomfinding/views/hotelview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> citiesimg = [
    'https://th.bing.com/th/id/OIP.FBOXbz4sRo-FVdljkS8D5AHaEK?pid=ImgDet&rs=1',
    'https://th.bing.com/th/id/R.4350d1fb8241ccec595f74cae876d2b9?rik=JkoJ9PimGx3icw&pid=ImgRaw&r=0',
    'https://thehimalayantimes.com/uploads/imported_images/wp-content/uploads/2020/03/Dillibazar-Prison.jpg',
    'https://assets-cdn.kantipurdaily.com/uploads/source/news/kantipur/2018/miscellaneous/putalisadakfire5-2622018060132.jpg',
    'https://3.bp.blogspot.com/-ckPwUv79QBQ/VGZKhLjy2bI/AAAAAAAAAbM/_EJe06zBJl4/s1600/Gyaneshwor.jpg'
  ];

  List<String> citiesname = [
    'Baneshwor',
    'Ghattekulo',
    'Dillibazar',
    'Putalisadak',
    'Gyaneshwor',
  ];

  List<String> topimg = [
    'https://ap.rdcpix.com/932831283/7df3d6831cb1c245c2d3d59989293ad9l-m18xd-w1020_h770_q80.jpg',
    'https://images1.apartments.com/i2/6U681P9fTgMqPXmj5NmyUXkfV-ECQei27NBP0WdUn5o/117/13340-durkee-rd-grafton-oh-building-photo.jpg?p=1',
  ];

  List<String> topname = [
    'Flat For Rent',
    'Single Room For Rent',
  ];

  List<String> location = [
    'DILLIBAZAR',
    'GYANESHWOR',
  ];

  List<String> price = [
    'RS 24000',
    'RS 14000',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const TopBar(),
          const SearchBar(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'AREA',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View All',
                        style: TextStyle(
                          color: Color(0xffFCBCB8),
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                //padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 5.0),
                padding: const EdgeInsets.only(left: 20.0, bottom: 5.0),
                child: Container(
                  height: 160,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: citiesimg.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 100,
                        height: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 100,
                              height: 120,
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage:
                                        NetworkImage(citiesimg[index]),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  citiesname[index],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Recommended for you',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                //padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 5.0),
                padding: const EdgeInsets.only(left: 20.0, bottom: 5.0),
                child: Container(
                  height: 350,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: topimg.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 310,
                        height: 370,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 350,
                                  width: 300,
                                  margin: const EdgeInsets.only(
                                    left: 5,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const HotelView()),
                                          );
                                        },
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                          ),
                                          child: Image.network(
                                            topimg[index],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  topname[index],
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons
                                                        .favorite_border_rounded,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0,
                                                right: 8.0,
                                                bottom: 5.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const Icon(
                                                  Icons.location_on,
                                                  color: Colors.red,
                                                ),
                                                Text(
                                                  location[index],
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 22,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 12.0,
                                                right: 8.0,
                                                top: 5.0,
                                                bottom: 5.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  price[index],
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22,
                                                    color: Color(0xffFCBCB8),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 1,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
      child: CupertinoSearchTextField(
        placeholder: 'Search for room?',
        placeholderStyle: const TextStyle(
          color: Colors.black,
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.black,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Find the best room\nOf your choice",
            style: TextStyle(
                color: Colors.black, fontSize: 26, fontWeight: FontWeight.w500),
          ),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.25)),
            ]),
            child: const CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.room,
                size: 25,
                color: Color(0xffFCBCB8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
