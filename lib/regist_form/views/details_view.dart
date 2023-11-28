import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forms/regist_form/models/user.dart';

class DetailsView extends StatelessWidget {
  DetailsView({required this.user});
  User user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details view"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Firstname: ", style: TextStyle(fontSize: 50)),
              Text(user.firstname, style: TextStyle(fontSize: 30)),
              Divider(),
              Text("Lastname: ", style: TextStyle(fontSize: 50)),
              Text(user.lastname, style: TextStyle(fontSize: 30)),
              Divider(),
              Text("Date: ", style: TextStyle(fontSize: 50)),
              Text(user.date.toString(), style: TextStyle(fontSize: 30)),
              Divider(),
              Text("Neme: ", style: TextStyle(fontSize: 50)),
              Text((user.male) ? "férfi" : "nő",
                  style: TextStyle(fontSize: 30)),
              Divider(),
              Text("kedvenc autómárka: ", style: TextStyle(fontSize: 50)),
              Text(user.favoriteCarBrand, style: TextStyle(fontSize: 30)),
              Divider(),
              Text("kedvenc szineid: ", style: TextStyle(fontSize: 50)),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: user.favoriteColors.length,
                itemBuilder: (_, i) {
                  return Text(user.favoriteColors[i],
                      style: TextStyle(fontSize: 30));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
