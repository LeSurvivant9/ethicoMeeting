import 'package:ethico_meeting/src/pages/event_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Bienvenue",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          ElevatedButton.icon(
            style: ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
              backgroundColor: MaterialStatePropertyAll(Colors.green),
            ),
            onPressed: () {
              Navigator.push(context,
                  PageRouteBuilder(pageBuilder: (_, __, ___) => EventPage()));
            },
            label: const Text("Afficher le planning"),
            icon: Icon(Icons.calendar_month),
          ),
        ],
      ),
    );
  }
}
