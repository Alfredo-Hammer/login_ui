import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png'),
          fit: BoxFit.cover,
        )
      ),
      child:Scaffold(
        backgroundColor: Colors.transparent,
        body:  Stack(
          children: [
             Container(
               padding: const EdgeInsets.only(left: 35, top: 150),
              child: const Text('Bienvenido\nde nuevo', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),),
            ),
            // ignore: avoid_unnecessary_containers
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5, left: 20, right: 20),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: 'Correo',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                      ),
                    const SizedBox(height: 20,),

                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: 'Contraseña',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        const Text('Iniciar sesión', style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4c505b)
                        ),),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward)
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:   [
                        TextButton(
                          onPressed: (){
                            Navigator.pushNamed(context, 'register');
                          },

                          child: const Text('Regitrarse', style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff4c505b)
                            ),
                          )
                        ),
                        const Text('Olvidáste su contraseña?', style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff4c505b)
                        ),),

                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
