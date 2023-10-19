import 'package:flutter/material.dart';

class Teams{
  final String title;
  final String desc;
  const Teams({required this.title,required this.desc});
}

class ListScreen extends StatelessWidget {
  const ListScreen({super.key, required this.teams});
  final List<Teams> teams;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade50,
        title: const Text('Teams'),
      ),
      body: ListView.builder(
        itemCount:teams.length ,
          itemBuilder: (context,index){
          return ListTile(
            title: Text(teams[index].title),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailScreen(team: teams[index])));
            },
          );
          }
      ),
    );
  }
}

class DetailScreen extends StatelessWidget{
  const DetailScreen({super.key,required this.team});
  final Teams team;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(team.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(team.desc),
      ),
    );
  }

}
