import 'package:flutter/material.dart';

class HotelView extends StatefulWidget {
  const HotelView({Key? key}) : super(key: key);

  @override
  State<HotelView> createState() => _HotelViewState();
}

class _HotelViewState extends State<HotelView> {
  List<IconData> ficons = [
    Icons.wifi,
    Icons.local_parking,
    Icons.coffee_maker,
    Icons.local_drink,
    Icons.pool,
  ];

  List<String> fname = [
    'Free Wifi',
    'Free Parking',
    'Coffee Maker',
    'Bar',
    '2 Pools',
  ];

  List<Color> colors = [
    Colors.blue,
    Colors.green,
    Colors.brown,
    Colors.deepOrangeAccent,
    Colors.blueAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFFF3F2),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const TopBar(),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 10.0),
                child: Container(
                  height: 213,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        child: Image.network(
                          'https://ap.rdcpix.com/932831283/7df3d6831cb1c245c2d3d59989293ad9l-m18xd-w1020_h770_q80.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'Flat For Rent',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'NeW Baneshwor, Kathmandu',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Expanded(
                          child: Text(
                            '5.0',
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Situated in New Baneshwor,3 room with 1 aatch bathroom , hot and cold shower ,Parking Available for bike  bathroom.',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      top: 5.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'Popular Facilities',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: ficons.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0,
                                right: 20.0,
                                top: 10.0,
                                bottom: 10.0),
                            child: Container(
                              height: 90,
                              width: 90,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      ficons[index],
                                      color: colors[index],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      fname[index],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox();
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 70,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffFFF3F2),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      'Rs 24000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xffFCBCB8),
                    ),
                    child: const Center(
                      child: Text(
                        'BOOK NOW',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
        children: const [
          Text(
            "Siddhartha House",
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(
              Icons.favorite_border_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
