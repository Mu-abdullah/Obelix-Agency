import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


openWhatsapp(context) async{
  var whatsapp ="+201559587712";
  var whatsappURlAndroid = "whatsapp://send?phone="+whatsapp+"&text=hello";
  var whatsappURLIos ="https://wa.me/$whatsapp?text=${Uri.parse("hello")}";
  if(Platform.isIOS){
    if( await canLaunch(whatsappURLIos)){
      await launch(whatsappURLIos, forceSafariVC: false);
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content:  Text("whatsapp no installed")));
    }
  }else{
    // android , web
    if( await canLaunch(whatsappURlAndroid)){
      await launch(whatsappURlAndroid);
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
          const  SnackBar(content:  Text("whatsapp no installed")));

    }
  }

}

call() {
  launch("tel://+201559587712");
}

sendingMails() async {
  const url = 'mailto:info@obelixagency.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

location() async {
  const url =
      'https://www.google.com/maps/place/OBELIX+Agency/@31.2318606,29.9545873,17z/data=!3m1!4b1!4m5!3m4!1s0x14f5c5327594ec03:0x5b7c1d76ed684693!8m2!3d31.231856!4d29.956776?hl=en-US';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

messenger() async {
  await launch("http://m.me/obelixagency");
}
webSite() async {
  const obelix =
      'https://obelixagency.com/';
  if (await canLaunch(obelix)) {
    await launch(obelix);
  } else {
    throw 'Could not launch $obelix';
  }
}