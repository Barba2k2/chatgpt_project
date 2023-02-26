import 'package:flutter/material.dart';

class LateralMenuOptions extends StatelessWidget {
  const LateralMenuOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton.icon(
              label: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Novo Chat',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
              icon: const Icon(Icons.add, size: 24, color: Colors.white),
              onPressed: () {
                // navegue para a tela de criar novo chat
              },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: .5, color: Colors.white),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Acessar Chats Anteriores', style: Theme.of(context).textTheme.headline6),
                const Icon(Icons.history_edu_rounded),
              ],
            ),
            onPressed: () {
              // navegue para a tela de acessar chats anteriores
            },
          ),
          const SizedBox(height: 10),
          TextButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Sair', style: Theme.of(context).textTheme.headline6),
                const Icon(Icons.logout_rounded),
              ],
            ),
            onPressed: () {
              // implemente a lógica de sair do chat
            },
          ),
        ],
      ),
    );
  }
}
