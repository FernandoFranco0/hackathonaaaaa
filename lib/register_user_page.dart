import 'package:flutter/material.dart';
import 'package:hackathon/register_complete.dart';

class UserRegPage extends StatefulWidget {
  const UserRegPage({super.key});

  @override
  State<UserRegPage> createState() => _UserRegPageState();
}

class _UserRegPageState extends State<UserRegPage> {
  @override
  Widget build(BuildContext context) {
    return  Material(
      color: const Color(0xFFA5978B),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Crie sua conta",style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),),
          const SizedBox(height: 30,),
          const SizedBox( height: 41,),
          SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFC4BBAF),
                labelText: "Nome completo", 
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15,),
          SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFC4BBAF),
                labelText: "Email", 
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15,),
          SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFC4BBAF),
                labelText: "Data de Nascimento", 
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15,),
          SizedBox(
            width: 300,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFC4BBAF),
                labelText: "Senha", 
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15,),
          SizedBox(
            width: 300,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFC4BBAF),
                labelText: "Confirmar senha", 
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 41,),
          SizedBox(
                width: 300,
                height: 40,
                child: ElevatedButton(
                  onPressed: () { Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const RegisterComplete())); }, 
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    shadowColor: Colors.transparent,
                    backgroundColor: const Color(0xFFc4bbaf),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                
                  ),
                  child: const Text("Cadastrar",style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),),
                ),
              )
        ],
      ),
    );
  }
}