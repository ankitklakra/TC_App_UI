import 'package:flutter/material.dart';

class SponsorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sponsors'),
      ),
      body: SponsorsList(),
    );
  }
}

class SponsorsList extends StatelessWidget {
  final List<String> dummySponsorImages = [
    'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQnf1Waq9rYtLia-S13F-owHVi4X9Bwx8L2dUry0esZ9pj6SzZa',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo-64wFgo_RIdKoAA4yKCt9WEOUscO7J2VKFZ8v1DeuZe_ENlj',
    'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTT6E_7W2lEUkTXTFhCJQXY_JESpZIZPIyovF4M1fabe0H2wcHx',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummySponsorImages.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: StyledCard(
            child: Image.network(
              dummySponsorImages[index],
              fit: BoxFit.fill,
            ),
          ),
        );
      },
    );
  }
}

class StyledCard extends StatelessWidget {
  final Widget child;

  StyledCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Color.fromRGBO(255, 255, 255, 0.5),
          width: 1.0,
        ),
        color: Color.fromRGBO(37, 37, 37, 0.05),
      ),
      child: child,
    );
  }
}
