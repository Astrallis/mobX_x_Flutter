import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:movies_mobX/env/app_env.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  var _list;
  int isLoading = 1;
  Future<Map> _getData() async {
    http.Response response = await http.get(AppEnvironment.baseApiUrl+"s=top");
    print("Response aaya");
    print(json.decode(response.body));
    return json.decode(response.body);
  }

  void getList() async {
    var data = await _getData();
    setState(() {
      _list=data["Search"];
      isLoading = 0;
    });
  }

  @override
  void initState() {
    getList();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: isLoading == 1
          ? CircularProgressIndicator()
          : ListView.builder(
              itemBuilder: (context, index) => Text(
                    _list[index]["Title"],
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
              itemCount: _list.length),
    );
  }
}
