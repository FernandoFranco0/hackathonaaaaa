import 'package:flutter/material.dart';
import 'package:hackathon/register_inst_page.dart';
import 'package:hackathon/register_user_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? check = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFA5978B),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Bem-vindo de volta",style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),),
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
          SizedBox(
            width: 300,
            child: Row(
              children: [
                Checkbox(
                  value: check, 
                  onChanged: (e){
                    setState(() {
                      check = e;
                    });
                  }
                ),
                const Text("Mantenha-me conectado",style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),),
              ],
            ),
          ),
          SizedBox(
            width: 300,
            child: Row(
              children: [TextButton(
                onPressed: () {  }, 
                child: const Text("Esqueci minha senha",style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500, decoration: TextDecoration.underline,),),
              )]
            ),
          ),
          SizedBox(
                width: 300,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {  }, 
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    shadowColor: Colors.transparent,
                    backgroundColor: const Color(0xFFc4bbaf),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                
                  ),
                  child: const Text("Entrar",style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),
                ),
              ),
          SizedBox(
            width: 300,
            child: Row(
              children: [
                const Text("Não tem uma conta?",style: TextStyle(color: Colors.black, fontSize: 19, fontWeight: FontWeight.w500),),
                TextButton(
                  onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => const UserRegPage())); }, 
                  child: const Text("Cadastre-se",style: TextStyle(color: Colors.black, fontSize: 19, fontWeight: FontWeight.w700, decoration: TextDecoration.underline,),),
                )
                
              ],
            ),
          ),
          TextButton(
            onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => const InstRegisterPage())); }, 
            child: const Text("Cadastrar instituição",style: TextStyle(color: Colors.black, fontSize: 19, fontWeight: FontWeight.w700, decoration: TextDecoration.underline,),),
          )
        ],
      ),
    );
  }
}