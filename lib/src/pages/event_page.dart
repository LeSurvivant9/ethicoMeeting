import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  final events = [
    {
      "speaker": "Lior chamla",
      "date": "13h à 13h30",
      "subject": "Le code legacy",
      "avatar": "ethico_logo"
    },
    {
      "speaker": "Alex",
      "date": "16h à 13h30",
      "subject": "Le legacy",
      "avatar": "ethico_logo"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          final avatar = event["avatar"];
          final speaker = event["speaker"];
          final date = event["date"];
          final subject = event["subject"];

          return Card(
            child: ListTile(
              leading: Image.asset("assets/images/$avatar.png"),
              title: Text("$speaker ($date)"),
              subtitle: Text("$subject"),
              trailing: Icon(Icons.more_vert),
            ),
          );
        },
      ),
    );
  }
}
