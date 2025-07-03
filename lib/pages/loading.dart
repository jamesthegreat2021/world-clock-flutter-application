import 'package:flutter/material.dart'; 
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async {
    //fetch data from the external endpoint
    var url = Uri.http('http://worldtimeapi.org/api/timezone/Europe/London');
    Response response =  await get(url);
    Map data = jsonDecode(response.body);
    print(data);
    

  }

  @override
  void initState(){
    super.initState();
    getTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Text('loading screen')
    );
  }
}
