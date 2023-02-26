import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Singup_Page/singup_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _senha;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'Campo obrigatório';
                //   }
                //   if (!value.contains('@')) {
                //     return 'Email inválido';
                //   }
                //   return null;
                // },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Senha',
                ),
                obscureText: true,
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'Campo obrigatório';
                //   }
                //   if (value.length < 6) {
                //     return 'Senha deve ter pelo menos 6 caracteres';
                //   }
                //   return null;
                // },
                onSaved: (value) {
                  _senha = value!;
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: const RoundedRectangleBorder()),
                  onPressed: () {
                    // if (_formKey.currentState.validate()) {
                    //   _formKey.currentState.save();
                    //   // Chame aqui a lógica para processar o login
                    // }
                  },
                  child: Text(
                    'Entrar',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Row(
              //       crossAxisAlignment: CrossAxisAlignment.stretch,
              //       children: [
              //         const Text('Ainda não tem uma conta? '),
              //         TextButton(
              //           onPressed: () => Get.to(const SingUpScreen()),
              //           child: const Text('Cadastre-se'),
              //         )
              //       ],
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
