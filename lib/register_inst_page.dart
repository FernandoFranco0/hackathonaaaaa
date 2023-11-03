import 'package:flutter/material.dart';
import 'package:hackathon/register_complete.dart';

class InstRegisterPage extends StatefulWidget {
  const InstRegisterPage({super.key});

  @override
  State<InstRegisterPage> createState() => _InstRegisterPageState();
}

class _InstRegisterPageState extends State<InstRegisterPage> {
  int button = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFA5978B),
      child: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Faça parte",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFC4BBAF),
                  labelText: "Nome da instituição",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      button = 1;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      shadowColor: Colors.transparent,
                      backgroundColor: button == 1
                          ? const Color(0xFF0000ff)
                          : const Color(0xFFC4BBAF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  child: const Text(
                    "Museu",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      button = 2;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      shadowColor: Colors.transparent,
                      backgroundColor: button == 2
                          ? const Color(0xFF0000ff)
                          : const Color(0xFFC4BBAF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  child: const Text(
                    "Galeria",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      button = 3;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      shadowColor: Colors.transparent,
                      backgroundColor: button == 3
                          ? const Color(0xFF0000ff)
                          : const Color(0xFFC4BBAF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  child: const Text(
                    "Exposição",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            )),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                maxLines: 5,
                minLines: 1,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFC4BBAF),
                  labelText: "Descrição",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFC4BBAF),
                  labelText: "CEP",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFC4BBAF),
                  labelText: "Logradouro *",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFC4BBAF),
                  labelText: "Número",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFC4BBAF),
                  labelText: "Complemento",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFC4BBAF),
                  labelText: "Cidade *",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFC4BBAF),
                  labelText: "Estado *",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: const Color(0xFFc4bbaf),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward),
                color: Colors.black,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const SecondePart()),
                  );
                },
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

class SecondePart extends StatefulWidget {
  const SecondePart({super.key});

  @override
  State<SecondePart> createState() => _SecondePartState();
}

class _SecondePartState extends State<SecondePart> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFA5978B),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFC4BBAF),
                labelText: "Nome do responsavel *",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFC4BBAF),
                labelText: "Email *",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFC4BBAF),
                labelText: "Telefone para contato",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CircleAvatar(
            radius: 30,
            backgroundColor: const Color(0xFFc4bbaf),
            child: IconButton(
              icon: const Icon(Icons.arrow_forward),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const RegisterComplete()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
