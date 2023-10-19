import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Events{
  final String title;
  final String desc;
  Events({required this.title,required this.desc});
}
class DetailEventScreen extends StatelessWidget {
  const DetailEventScreen({super.key,required this.event});
  final Events event;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(event.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text(event.desc),
      ),
    );
  }
}
class ListEventScreen extends StatelessWidget {
  const ListEventScreen({super.key,required this.events});
  final List<Events> events;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade50,
        title: Text('Events'),
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(events[index].title),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailEventScreen(event: events[index])));
            },
          );
        },
      ),
    );
  }
}