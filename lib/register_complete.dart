import 'package:flutter/material.dart';
import 'package:hackathon/login_page.dart';

class RegisterComplete extends StatefulWidget {
  const RegisterComplete({super.key});

  @override
  State<RegisterComplete> createState() => _RegisterCompleteState();
}

class _RegisterCompleteState extends State<RegisterComplete> {
  @override
  Widget build(BuildContext context) {
     return Material(
      color: const Color(0xFFA5978B),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Cadastro completo!",style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),),
          const SizedBox(height: 47,),
          const SizedBox(
            height: 74,
            width: 330,
            child: Text(
              "Seu cadastro foi concluído! Confira seu email para validar a conta e começar a usar a plataforma.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),)
            ),
          const SizedBox(height: 47,),
          SizedBox(
                width: 300,
                height: 40,
                child: ElevatedButton(
                  onPressed: () { Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const LoginPage())); }, 
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    shadowColor: Colors.transparent,
                    backgroundColor: const Color(0xFFc4bbaf),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                
                  ),
                  child: const Text("Voltar para página inicial",style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),
                ),
              )
        ],
      ),
    );
  }
}