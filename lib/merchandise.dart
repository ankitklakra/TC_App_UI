import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MerchandisePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Merchandise'),
      ),
      body: Center(
        child: MerchandiseCard(),
      ),
    );
  }
}

class MerchandiseCard extends StatelessWidget {
  final String merchandiseUrl = 'https://docs.google.com/forms/d/e/1FAIpQLScJgWhzPO5QMSWxAml2-Y8K9ob6QWCFvyTwxDNbPZcC-LCmRg/viewform';

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('asset/images/merchandise.webp'), // Replace with your image asset path
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Merchandise Description',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Slay the college fest season in a Techy look and embrace the engineer within you! ✨ Tech would flow through your blood and come out through your sweat as Team Technocracy launches its very own Merchandise for you all! 🚀 Be a part of the gigantic Tech Fest AAVARTAN 23-24 (Cosmoscape) and have some imprints of it on yourselves! The comfortable and trendy attire awaits you! Hurry up and Order now through the given link! 🔗',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  _launchURL(merchandiseUrl);
                },
                child: Text('Buy'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
