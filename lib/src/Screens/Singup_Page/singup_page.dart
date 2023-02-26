import 'package:flutter/material.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  _SingUpScreenState createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _nome;
  late String _email;
  late String _senha;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nome',
                ),
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'Campo obrigatório';
                //   }
                //   return null;
                // },
                onSaved: (value) {
                  _nome = value!;
                },
              ),
              const SizedBox(height: 20),
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
              ElevatedButton(
                onPressed: () {
                  // if (_formKey.currentState.validate()) {
                  //   _formKey.currentState.save();
                  //   // Chame aqui a lógica para processar o cadastro
                  // }
                },
                child: const Text('Cadastrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
