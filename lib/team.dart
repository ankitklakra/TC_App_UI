import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Team'),
      ),
      body: TeamList(),
    );
  }
}

class TeamList extends StatelessWidget {
  final List<TeamMember> teamMembers = [
    TeamMember(
      name: 'Vaibhav Sawant',
      domain: 'Overall Coordinator',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPGBxaYdGHEpJ9001ON09kQBXAnqZaCYG3--fcJQUAIbkQAjWc-BpxmbgwJrzURi0j8gc&usqp=CAU',
    ),
    TeamMember(
      name: 'Ishan Nayak',
      domain: 'Overall Coordinator',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPGBxaYdGHEpJ9001ON09kQBXAnqZaCYG3--fcJQUAIbkQAjWc-BpxmbgwJrzURi0j8gc&usqp=CAU',
    ),
    TeamMember(
      name: 'Chirag Singhal',
      domain: 'Overall Coordinator',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPGBxaYdGHEpJ9001ON09kQBXAnqZaCYG3--fcJQUAIbkQAjWc-BpxmbgwJrzURi0j8gc&usqp=CAU',
    ),
    TeamMember(
      name: 'Arpit Pandey',
      domain: 'Overall Coordinator',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPGBxaYdGHEpJ9001ON09kQBXAnqZaCYG3--fcJQUAIbkQAjWc-BpxmbgwJrzURi0j8gc&usqp=CAU',
    ),
    // Add more team members here
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: teamMembers.length,
      itemBuilder: (context, index) {
        return TeamMemberCard(
          teamMember: teamMembers[index],
        );
      },
    );
  }
}

class TeamMember {
  final String name;
  final String domain;
  final String imageUrl;

  TeamMember({required this.name, required this.domain, required this.imageUrl});
}

class TeamMemberCard extends StatelessWidget {
  final TeamMember teamMember;

  TeamMemberCard({required this.teamMember});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            teamMember.imageUrl,
            width: double.infinity, // Image width spans the entire card width
            fit: BoxFit.cover, // Image adjusts its height to match its aspect ratio
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  teamMember.name,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  teamMember.domain,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TeamPage(),
  ));
}
