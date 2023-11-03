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
    Scaffold(
      appBar: AppBar(
        actions: const [
          Row(
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Olá,\n',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Karma',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: 'Nome da Pessoa',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Karma',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(
                width: 8,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://cms.forbesafrica.com/wp-content/uploads/2023/04/22-scaled.jpg',
                ),
              ),
              SizedBox(
                width: 16,
              ),
            ],
          )
        ],
        backgroundColor: const Color(0xFF5A2A27),
      ),
      body: const Column(children: [
        EventWidget(
          url:
              'https://w8e8i3u2.stackpathcdn.com/wp-content/uploads/2018/06/Museu-de-Arte-Moderna-da-Bahia-MAM-em-Salvador-2.jpg',
          label: 'Museu de Arte\nModerna da Bahia ',
        ),
      ]),
    ),
    const Center(child: Text('Tela de camera')),
    const Center(child: Text('Tela de config')),
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
          actions: const [
            Row(
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Olá,\n',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Karma',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: 'Nome da Pessoa',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Karma',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.right,
                ),
                SizedBox(
                  width: 8,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://cms.forbesafrica.com/wp-content/uploads/2023/04/22-scaled.jpg',
                  ),
                ),
                SizedBox(
                  width: 16,
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
                children: [
                  EventWidget(
                    url:
                        'https://w8e8i3u2.stackpathcdn.com/wp-content/uploads/2018/06/Museu-de-Arte-Moderna-da-Bahia-MAM-em-Salvador-2.jpg',
                    label: 'Museu de Arte\nModerna da Bahia ',
                    isFavorite: true,
                  ),
                  EventWidget(
                    url:
                        'https://imgsapp2.correiobraziliense.com.br/app/noticia_127983242361/2018/02/11/658933/20180209173038221345o.jpg',
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
                children: [
                  EventWidget(
                    url:
                        'https://pelourinhodiaenoite.salvador.ba.gov.br/wp-content/uploads/2018/10/solar-ferrao-1.jpg',
                    label: 'Centro Cultural\nSolar Ferrão',
                  ),
                  EventWidget(
                    url:
                        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/22/10/c1/6a/vista-do-atelier.jpg?w=1200&h=-1&s=1',
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

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            collapsedHeight: 150,
            flexibleSpace: Hero(
              tag: 'Museu de Arte\nModerna da Bahia ',
              child: Image.network(
                'https://w8e8i3u2.stackpathcdn.com/wp-content/uploads/2018/06/Museu-de-Arte-Moderna-da-Bahia-MAM-em-Salvador-2.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  const Text(
                    'Museu de Arte Moderna da Bahia',
                    style: TextStyle(
                      color: Color(0xFF5A2A27),
                      fontSize: 20,
                      fontFamily: 'Karma',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Avenida Lafayete Coutinho, s/n Comércio, Salvador – BA 40060-110',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Karma',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Ao pé de uma ladeira íngreme de pedras irregulares, circundado por mangueiras imponentes, banhado pelas ondas do mar e premiado pelo mais belo pôr do sol da cidade de Salvador. É neste belíssimo cartão postal chamado Solar do Unhão que se encontra o Museu de Arte Moderna da Bahia (MAM-BA), considerado o principal espaço para a arte contemporânea do estado e um dos mais importantes do país, por onde passa um público aproximado de 200 mil pessoas por ano. Exposições de artistas visuais consagrados do Brasil e exterior movimentam as cinco salas expositivas do museu, inserindo definitivamente o MAM no circuito nacional de arte contemporânea. O museu conta ainda com uma galeria ao ar livre (o Parque das Esculturas) e uma sala de cinema. Sedia também eventos artísticos culturais de diferentes linguagens e possui um programa permanente de ações educativas.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Karma',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5A2A27),
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {},
                      child: const Center(
                        child: Text(
                          'Iniciar visita',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Karma',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EventWidget extends StatelessWidget {
  final String label;
  final bool isFavorite;
  final String url;
  const EventWidget({
    super.key,
    required this.label,
    required this.url,
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
              GestureDetector(
                onTap: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const DetailsPage()),
                  )
                },
                child: SizedBox(
                  height: 150,
                  width: 200,
                  child: Hero(
                    tag: label,
                    child: Image.network(
                      url,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
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
