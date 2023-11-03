import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<MainPage> {
  bool anim = false;
  var currentIndex = 0;

  final widgetList = <Widget>[
    const MainScreen(),
    const Column(children: [
      EventWidget(
        label: 'Museu de Arte\nModerna da Bahia ',
      ),
    ]),
    Container(
      child: const Center(child: Text('Tela de camera')),
    ),
    Container(
      child: const Center(child: Text('Tela de config')),
    ),
    // Container()
  ];

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: widgetList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xFF5A2A27),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Color(0xFF5A2A27),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.camera_alt,
                color: Color(0xFF5A2A27),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Color(0xFF5A2A27),
              ),
              label: ''),
        ],
        currentIndex: currentIndex,
        onTap: (i) {
          setState(() {
            currentIndex = i;
          });
        },
      ),
    ));
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    setState(() {
      anim = true;
    });
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Row(
              children: [
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Olá,\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Karma',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: 'Nome da Pessoa',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Karma',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.right,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://i0.wp.com/www.ghanacelebrities.com/wp-content/uploads/2017/07/Black-woma.jpeg?resize=759%2C594',
                    height: 50,
                    width: 50,
                  ),
                ),
              ],
            )
          ],
          backgroundColor: const Color(0xFF5A2A27),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Text(
                  "Museus",
                  style: TextStyle(
                    color: Colors.white,
                    // fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Tab(
                icon: Text(
                  "Galerias",
                  style: TextStyle(
                    color: Colors.white,
                    // fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Tab(
                icon: Text(
                  "Exposições",
                  style: TextStyle(
                    color: Colors.white,
                    // fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              height: double.infinity,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  EventWidget(
                    label: 'Museu de Arte\nModerna da Bahia ',
                    isFavorite: true,
                  ),
                  EventWidget(
                    label: 'Casa do Carnaval\nda Bahia',
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: double.infinity,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  EventWidget(
                    label: 'Centro Cultural\nSolar Ferrão',
                  ),
                  EventWidget(
                    label: 'Ateliê Rebouças',
                  )
                ],
              ),
            ),
            const Center(
              child: Text(
                'Desculpe, no momento sem exposições ativas',
                style: TextStyle(fontSize: 32),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EventWidget extends StatelessWidget {
  final String label;
  final bool isFavorite;
  const EventWidget({
    super.key,
    required this.label,
    this.isFavorite = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF5A2A27), width: 3),
      ),
      width: double.maxFinite,
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                width: 200,
                color: Colors.white,
              ),
              if (isFavorite)
                const Positioned(
                  left: 10,
                  top: 10,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
            ],
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  color: Color(0xFF5A2A27),
                  fontSize: 14,
                  fontFamily: 'Karma',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                children: [
                  Icon(Icons.pin_drop_outlined),
                  Text(
                    'Salvador, BA',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Karma',
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
