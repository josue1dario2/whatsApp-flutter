import 'package:flutter/material.dart';
import 'package:wathsapp_clon/Entities/chatEntity.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    Widget notificationCircle(value) {
      return Container(
        child: Center(
          child: Text(
            value.toString(),
            style: const TextStyle(color: Colors.white),
          ),
        ),
        height: 20.0,
        width: 20.0,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          shape: BoxShape.circle,
        ),
      );
    }

    return ListView.builder(
      itemCount: temporalData.length,
      itemBuilder: (context, i) {
        return Column(
          children: [
            const Divider(
              height: 5.5,
            ),
            ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(temporalData[i].avatarUrl),
              ),
              title: Row(
                children: [
                  Text(
                    temporalData[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    temporalData[i].hours,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      temporalData[i].message,
                      style: TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                    temporalData[i].newMessage == 0
                        ? Container()
                        : notificationCircle(temporalData[i].newMessage)
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
