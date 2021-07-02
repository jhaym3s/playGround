
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebLaunching extends StatefulWidget {
  @override
  _WebLaunchingState createState() => _WebLaunchingState();
}

class _WebLaunchingState extends State<WebLaunching> {
  final String _url = "https://flutter.dev/";
  Future<void> redirect() async {
    const url = 'https://twitter.com/manniikin';
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false,
          forceWebView: true,
          enableJavaScript: true);
    } else {
      throw 'Could not launch $url';
    }
  }
  _sendMail() async {
    // Android and iOS
    const mailTo = "jhaymesifiok@gmail.com";
    const uri = 'mailto:$mailTo?subject=Greetings&body=Hello World';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }
  _openMap() async {
    const url = 'https://www.google.com/maps/search/?api=1&query=122.0575,37.3875';
    if (await canLaunch(url)) {
      await launch(url,forceWebView:false,enableJavaScript:false);
    } else {
      throw 'Could not launch $url';
    }
  }

  _makeCall() async {
    String telephoneUrl = "tel:07012540083";

    if (await canLaunch(telephoneUrl)) {
      await launch(telephoneUrl);
    } else {
      throw "Can't phone that number.";
    }
  }
  _textMe() async {
      // iOS
      const uri = 'sms:0039-222-060-888';
      if (await canLaunch(uri)) {
        await launch(uri);
      } else {
        throw 'Could not launch $uri';
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(child: Text("Move to a url"),onPressed: _sendMail,),
      ),
    );
  }
}
