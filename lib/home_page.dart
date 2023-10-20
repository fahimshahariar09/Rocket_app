import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: const Image(
          image: AssetImage('asset/rocket_logo.png'),
          fit: BoxFit.scaleDown,
        ),
        backgroundColor: Colors.purple,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.power_settings_new,
              color: Colors.white,
            ),
          )
        ],
      ),
      drawer: Drawer(
        elevation: 0,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.purple),
                currentAccountPicture: Image.asset(
                  "asset/rocket_logo.png",
                  height: 80,
                  width: 80,
                ),
                accountName: Text("Rocket"),
                accountEmail: Text("Duch-Bangle Bank Ltd"),
              ),
            ),
            ListTile(
              leading:
              Icon(Icons.sell_rounded, size: 25, color: Colors.blueGrey),
              title: Text("Services Changes",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  )),
            ),
            ListTile(
              leading: Icon(Icons.production_quantity_limits,
                  size: 25, color: Colors.blueGrey),
              title: Text('Transaction Limits',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  )),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text("Lear More"),
            ),
            ListTile(
              leading: Icon(Icons.battery_alert_rounded,
                  size: 25, color: Colors.blueGrey),
              title: Text('About Us',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  )),
            ),
            ListTile(
              leading: Icon(Icons.language, size: 25, color: Colors.blueGrey),
              title: Text('Our Site',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  )),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text("Settings"),
            ),
            ListTile(
              leading:
              Icon(Icons.lan_outlined, size: 25, color: Colors.blueGrey),
              title: Text('Language',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  )),
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet,
                  size: 25, color: Colors.blueGrey),
              title: Text('Quick Balance',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  )),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text("Others"),
            ),
            ListTile(
              leading: Icon(Icons.phone, size: 25, color: Colors.blueGrey),
              title: Text('Contact Us',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  )),
            ),
            ListTile(
              leading: Icon(Icons.power_settings_new,
                  size: 20, color: Colors.blueGrey),
              title: Text("Logout",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  )),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          onTap: (int index) {},
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.fmd_good_outlined),
                label: 'LOCATIONS',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard_sharp), label: 'OFFERS'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_sharp), label: 'NOTIFICATIONS'),
          ],
          elevation: 10,
          backgroundColor: Colors.purple),
      backgroundColor: Colors.purple[100],
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: 140,

                color: Colors.purple,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ListTile(
                    leading: SizedBox(
                      width: 50,
                      height: 50,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: Text(
                          "S",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: Text("Tap for Balance",
                          style: TextStyle(color: Colors.purple)),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ))),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Shekh Faisal',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            )),
                        Text("017xxxxxxxx",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            )),
                        Text("CORPORATE SALARY",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w200,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width/2.2,
                    child: const Card(
                        color: Colors.white,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.qr_code_scanner,
                                size: 50,
                                color: Colors.purple,
                              ),
                              Text("Scan QR")
                            ]
                        )
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width/2.2,
                    child: const Card(
                        color: Colors.white,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.qr_code_2,
                                size: 50,
                                color: Colors.purple,
                              ),
                              Text("My QR")
                            ]
                        )
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width/3.3,
                    child: const Card(
                        color: Colors.white,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phonelink_setup,
                                size: 50,
                                color: Colors.purple,
                              ),
                              Text("Top Up"),
                            ]
                        )
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width/3.3,
                    child: const Card(
                        color: Colors.white,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone_android,
                                size: 50,
                                color: Colors.purple,
                              ),
                              Text("Bill Pay"),
                            ]
                        )
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width/3.3,
                    child: const Card(
                        color: Colors.white,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.production_quantity_limits,
                                size: 50,
                                color: Colors.purple,
                              ),
                              Text("Merchant Pay"),
                            ]
                        )
                    ),
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width/3.3,
                    child: const Card(
                        color: Colors.white,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.send_to_mobile_sharp,
                                size: 50,
                                color: Colors.purple,
                              ),
                              Text("Send Money"),
                            ]
                        )
                    ),
                  ),
                  SizedBox(
                    height: 100,
                   width: MediaQuery.of(context).size.width/3.3,
                    child: const Card(
                        color: Colors.white,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.speaker_phone,
                                size: 50,
                                color: Colors.purple,
                              ),
                              Text("Case Out"),
                            ]
                        )
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width/3.3,
                    child: const Card(
                        color: Colors.white,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.transfer_within_a_station_rounded,
                                size: 50,
                                color: Colors.purple,
                              ),
                              Text("Bank Transfar"),
                            ]
                        )
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width/3.3,
                    child: const Card(
                        color: Colors.white,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.language,
                                size: 50,
                                color: Colors.purple,
                              ),
                              Text("Ramittance"),
                            ]
                        )
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width/3.3,
                    child: const Card(
                        color: Colors.white,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.account_balance_wallet,
                                size: 50,
                                color: Colors.purple,
                              ),
                              Text("Balance Inquiry"),
                            ]
                        )
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width/3.3,
                    child: const Card(
                        color: Colors.white,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone_iphone_rounded,
                                size: 50,
                                color: Colors.purple,
                              ),
                              Text("Mini Statement"),
                            ]
                        )
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}
