// ignore: file_names
import 'package:flutter/material.dart';

import 'UI_Details.dart';

// ignore: must_be_immutable
class Whatsappscreen extends StatefulWidget {
  const Whatsappscreen({
    Key? key,
  }) : super(key: key);

  @override
  State<Whatsappscreen> createState() => _WhatsappscreenState();
}

// ignore: non_constant_identifier_names
List<String> ItemNames = [
  "Naveed",
  "Aman",
  "Tasal",
  "Dr.Omaid",
  "Touheed",
  "Altaf",
  "Naveed",
  "Aman",
  "Tasal",
  "Dr.Omaid",
  "Touheed",
  "Altaf"
];

// ignore: non_constant_identifier_names
List<String> ItemSubNames = [
  "I am Naveed",
  "I am Aman",
  "I am Tasal",
  "I am Dr.Omaid",
  "I am Touheed",
  "I am Altaaf khan",
  "I am Naveed",
  "I am Aman",
  "I am Tasal",
  "I am Dr.Omaid",
  "I am Touheed",
  "I am Altaaf khan",
];
// ignore: non_constant_identifier_names
List<String> ItemImages = [
  "assets/images/naveed.jpg",
  "assets/images/aman.jpeg",
  "assets/images/Tasal.jpg",
  "assets/images/Zabi.jpg",
  "assets/images/touheed.jpg",
  "assets/images/Altaaf.jpg",
  "assets/images/naveed.jpg",
  "assets/images/aman.jpeg",
  "assets/images/Tasal.jpg",
  "assets/images/Zabi.jpg",
  "assets/images/touheed.jpg",
  "assets/images/Altaaf.jpg",
];
List<String> itembackimages = [
  "assets/images/back.jpg",
  "assets/images/back5.jpg",
  "assets/images/back7.jpg",
  "assets/images/back8.png",
  "assets/images/back9.jpg",
  "assets/images/back10.jpg",
  "assets/images/back.jpg",
  "assets/images/back5.jpg",
  "assets/images/back7.jpg",
  "assets/images/back8.png",
  "assets/images/back9.jpg",
  "assets/images/back10.jpg",
];

class _WhatsappscreenState extends State<Whatsappscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            //  centerTitle: true,
            title: const Text('Whatsapp'),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.photo_camera),
              ),
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Updates',
              ),
              Tab(
                text: 'Calls',
              ),
            ]),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 15,
              ),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                itemBuilder: (
                  context,
                ) =>
                    [
                  const PopupMenuItem(
                    value: '1',
                    child: Text('Settings'),
                  ),
                  const PopupMenuItem(
                    value: '2',
                    child: Text('Groups'),
                  ),
                  const PopupMenuItem(
                    value: '3',
                    child: Text('Logout'),
                  ),
                ],
              )
            ],
          ),
          body: TabBarView(
            children: [
              const Image(
                image: AssetImage('assets/images/camera.png'),
              ),
              ListView.builder(
                  itemCount: ItemNames.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UiDetails(
                                      Namedetails: ItemNames[index],
                                      images: itembackimages[index],
                                    )),
                          );
                        },
                        title: Text(ItemNames[index]),
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(ItemImages[index]),
                        ),
                        subtitle: Text(ItemSubNames[index]),
                        trailing:
                            // ignore: unrelated_type_equality_checks
                            Text(
                          ItemNames[index] == "Naveed" ? '9:30 am' : '6:45 pm',
                          style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.normal),
                        ));
                  }),
              Column(
                children: [
                  Container(
                    //color: Colors.amber,
                    height: 50,
                    width: 450,
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Status',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        InkWell(
                            child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text(
                              'See all >',
                              style: TextStyle(
                                  color: Colors.teal.shade800,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        )),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(ItemNames[index]),
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: ItemNames[index] == "Naveed"
                                          ? Colors.tealAccent.shade700
                                          : Colors.grey.shade600,
                                      width: 1.5)),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(ItemImages[index]),
                              ),
                            ),
                            subtitle: Text(ItemNames[index] == "Naveed"
                                ? '30 mint Ago'
                                : '10 mint Ago'),
                            // trailing: const Icon(
                            //   Icons.phone,
                            // ),
                          );
                        }),
                  ),
                ],
              ),
              Column(
                children: [
                  const ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Icon(Icons.link),
                    ),
                    title: Text('Create call link'),
                    subtitle: Text('Share a link for your whatsapp call'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(ItemNames[index]),
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(ItemImages[index]),
                            ),
                            subtitle: Text(index / 3 == 0
                                ? 'missed call 3:00pm'
                                : 'missed call 6:00am'),
                            trailing: Icon(
                              index / 2 == 0 ? Icons.phone : Icons.videocam,
                              color: Colors.teal,
                            ),
                          );
                        }),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
