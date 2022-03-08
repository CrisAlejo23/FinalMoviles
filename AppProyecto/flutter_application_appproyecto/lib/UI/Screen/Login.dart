import 'package:flutter/material.dart';
import 'package:flutter_application_appproyecto/UI/Widgets/navbar.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //====>> Vuele a rescribir todo en la pantalla
  @override
  void initState() {
    super.initState();
  }
  //<<=====

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 582,
            right: 0,
            child: Container(
                width: 395.0,
                height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('media/img/fondoL.jpg')),
                )),
          ),
          Positioned(
              bottom: 150,
              right: 20,
              child: Container(
                margin: const EdgeInsets.only(top: 430, left: 300),
                width: 350.0,
                height: 400.0,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15)),
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Center(
                        child: Container(
                            width: 200,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0)),
                            child: Image.asset('media/img/logo2.png')),
                      ),
                    ),
                    const Padding(
                      //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                      padding: EdgeInsets.only(top: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail),
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                            hintText: 'Ingrese correo'),
                      ),
                    ),
                    const Padding(
                      //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                      padding: EdgeInsets.only(top: 10.0),
                      child: TextField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            hintText: 'Ingrese el passsword'),
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
              bottom: 130,
              right: 100,
              child: SizedBox(
                width: 170,
                height: 50,
                child: MaterialButton(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Navbar()));
                    },
                    color: Colors.lightBlue,
                    child: const Text('Login',
                        style: TextStyle(color: Colors.white))),
              ))
        ],
      ),
    );
  }
}
