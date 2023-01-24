import 'package:flutter/material.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  List<String> hotelimg = [
    'https://ap.rdcpix.com/932831283/7df3d6831cb1c245c2d3d59989293ad9l-m18xd-w1020_h770_q80.jpg',
    'https://ap.rdcpix.com/6efde05653263dc3a0b662cfa64ce784l-m2405333154od-w1024_h768.jpg',
    'https://th.bing.com/th/id/OIP.u6LX5FKobmsmy5BG8QUwfAHaHp?pid=ImgDet&rs=1',
  ];

  List<String> hotelname = [
    'Flat For Rent',
    'Flat For Rent',
    'Single Room ',
  ];

  List<String> rating = [
    '4.5',
    '3.0',
    '5.0',
  ];

  List<String> location = [
    'PutaliSadak',
    'Baneshwor',
    'Ghattekulo',
  ];

  List<String> price = [
    'RS 30000',
    'RS 220000',
    'RS 8000',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const TopBar(),
          ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: hotelname.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(10),
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: const Offset(
                                1, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: const Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                              child: Image.network(
                                hotelimg[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      hotelname[index],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Icon(
                                      Icons.favorite_rounded,
                                      color: Color(0xffFCBCB8),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      size: 14,
                                      color: Colors.red,
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Expanded(
                                      child: Text(
                                        location[index],
                                        style: const TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      size: 14,
                                      color: Colors.amber,
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Expanded(
                                      child: Text(
                                        rating[index],
                                        style: const TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ),
                                    Text(
                                      price[index],
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox();
            },
          ),
        ],
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
            "Favorites",
            style: TextStyle(
                color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
