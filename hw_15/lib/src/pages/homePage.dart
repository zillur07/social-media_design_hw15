import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hw_15/src/model/statusModel.dart';
import 'package:hw_15/src/model/storiModel.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#141414"),
      appBar: AppBar(
        title: Text(
          'live',
          style: TextStyle(
            color: HexColor("#DDB768"),
            fontSize: 24,
          ),
        ),
        elevation: 0,
        backgroundColor: HexColor("#141414"),
        actions: [
          SizedBox(
            width: 8,
          ),
          Icon(Icons.search_outlined),
          SizedBox(
            width: 8,
          ),
          Icon(Icons.notifications_outlined),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 13,
            right: 13,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Stories',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: myStori.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    // return index == 0
                    //     ? Text('hhhhhh')
                    //     : Icon(Icons.umbrella_outlined);
                    // if (index == 0) {
                    //   return Text('kkk');
                    // } else {
                    //   return Icon(Icons.add_a_photo);
                    // }

                    return index == 0
                        ? Container(
                            height: 150,
                            width: 115,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              //color: Colors.green,
                            ),
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 75,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.vertical(
                                            bottom: Radius.circular(15.0)),
                                        color: HexColor("#474747"),
                                        //color: Colors.green,
                                      ),
                                      height: 75,
                                      width: double.infinity,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            'Add your Story',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Icon(
                                            Icons.add_circle,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red[200],
                                    radius: 24,
                                    child: Stack(
                                      children: [
                                        CircleAvatar(
                                          radius: 23,
                                          backgroundImage:
                                              AssetImage('img/p1.jpg'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  bottom: 50,
                                  left: 32,
                                ),
                              ],
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                                height: 150,
                                width: 115,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  //color: Colors.green,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        image: new DecorationImage(
                                          image: AssetImage(
                                              '${myStori[index].img}'),
                                          fit: BoxFit.cover,
                                        ),
                                        // color: Colors.red,
                                      ),
                                      // child: Image.asset(

                                      //   '${myStori[index].img}',
                                      //   fit: BoxFit.cover,
                                      // ),
                                    ),
                                    Positioned(
                                      bottom: 0.1,
                                      width: 115,
                                      child: Container(
                                          alignment: Alignment.center,
                                          height: 50,
                                          color: Colors.black.withOpacity(.5),
                                          child: Text(
                                            "${myStori[index].name}",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )),
                                    ),
                                  ],
                                )),
                          );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: myStatus.length,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return index == 0
                          ? Container(
                              height: 50,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: HexColor('#FFFFFF'),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                  child: Text('${myStatus[index].name}')),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Container(
                                width: 120,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: HexColor('#1F1F25'),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Center(
                                  child: Text(
                                    '${myStatus[index].name}',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundImage: AssetImage('img/p1.jpg'),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Md. Zillur Rahman',
                        style: TextStyle(
                          color: HexColor(
                            '#FFFFFF',
                          ),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '3 min ago',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: HexColor("#DDB768"),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: HexColor("#1F2024"),
                  ),
                  height: 160,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                width: 120.0,
                                height: 120.0,
                                decoration: new BoxDecoration(
                                  // shape: BoxShape.circle,
                                  borderRadius: BorderRadius.circular(12),
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('img/n1.jpg')),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 22,
                                ),
                                Text(
                                  'Lorem Ipsum is simply \n dummy text of the printing...',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Enjoy yourself',
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                  width: 180,
                                  child: Divider(
                                    color: Color.fromARGB(255, 97, 104, 103),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        //color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '21 Posts',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white54,
                              ),
                            ),
                            Text(
                              '21 Followers',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white54,
                              ),
                            ),
                            Text(
                              '21 Comments',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundImage: AssetImage('img/mim1.jpg'),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nahid Hasan',
                        style: TextStyle(
                          color: HexColor(
                            '#FFFFFF',
                          ),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '3 min ago',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: HexColor("#DDB768"),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: HexColor("#1F2024"),
                  ),
                  height: 160,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                width: 120.0,
                                height: 120.0,
                                decoration: new BoxDecoration(
                                  // shape: BoxShape.circle,
                                  borderRadius: BorderRadius.circular(12),
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('img/makka.jpg')),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 22,
                                ),
                                Text(
                                  'Lorem Ipsum is simply \n dummy text of the printing...',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Enjoy yourself',
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                  width: 180,
                                  child: Divider(
                                    color: Color.fromARGB(255, 97, 104, 103),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        //color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '120 Posts',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white54,
                              ),
                            ),
                            Text(
                              '252 Followers',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white54,
                              ),
                            ),
                            Text(
                              '91 Comments',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundImage: AssetImage('img/r.jpg'),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rokon Sharif',
                        style: TextStyle(
                          color: HexColor(
                            '#FFFFFF',
                          ),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '32 min ago',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: HexColor("#DDB768"),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: HexColor("#1F2024"),
                  ),
                  height: 160,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                width: 120.0,
                                height: 120.0,
                                decoration: new BoxDecoration(
                                  // shape: BoxShape.circle,
                                  borderRadius: BorderRadius.circular(12),
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('img/g1.jpg')),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 22,
                                ),
                                Text(
                                  'Lorem Ipsum is simply \n dummy text of the printing...',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Enjoy yourself',
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                  width: 180,
                                  child: Divider(
                                    color: Color.fromARGB(255, 97, 104, 103),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        //color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '28 Posts',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white54,
                              ),
                            ),
                            Text(
                              '221 Followers',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white54,
                              ),
                            ),
                            Text(
                              '291 Comments',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundImage: AssetImage('img/j.jpg'),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'jihad hasan',
                        style: TextStyle(
                          color: HexColor(
                            '#FFFFFF',
                          ),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '9 min ago',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: HexColor("#DDB768"),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: HexColor("#1F2024"),
                  ),
                  height: 160,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                width: 120.0,
                                height: 120.0,
                                decoration: new BoxDecoration(
                                  // shape: BoxShape.circle,
                                  borderRadius: BorderRadius.circular(12),
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('img/imran2.jpg')),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 22,
                                ),
                                Text(
                                  'Lorem Ipsum is simply \n dummy text of the printing...',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Enjoy yourself',
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                  width: 180,
                                  child: Divider(
                                    color: Color.fromARGB(255, 97, 104, 103),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        //color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '25 Posts',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white54,
                              ),
                            ),
                            Text(
                              '291 Followers',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white54,
                              ),
                            ),
                            Text(
                              '212 Comments',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_rounded),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline_outlined,
              size: 38,
            ),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.drag_indicator_sharp),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        // currentIndex: _selectedIndex,
        //selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
    );
  }
}
