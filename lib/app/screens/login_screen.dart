import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String matricula = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset('lib/assets/images/logo.avif'),
                ),
                SizedBox(height: 40),
                Card(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(12, 20, 12, 12),
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (value) {
                            matricula = value;
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Nº de matrícula',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 15),
                        TextField(
                          onChanged: (value) {
                            senha = value;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlue,
                            ),
                            child: Text(
                              'Acessar',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              if (matricula == '202010937' &&
                                  senha == 'abc123') {
                                Navigator.of(context)
                                    .pushReplacementNamed('/home');
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
