import 'package:flutter/material.dart';
import 'package:flutter_social/_routing/routes.dart';
import 'package:flutter_social/utils/colors.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_social/models/user.dart';
import 'package:flutter_social/models/chat.dart';

class SummaryPage extends StatefulWidget {
  @override
  _SummaryPageState createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
@override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    final pageTitle = Padding(
      padding: EdgeInsets.only(top: 1.0, bottom: 20.0),
      child: Text(
        "Summary",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 40.0,
        ),
      ),
    );


    final chatList = Container(
      height: 400.0,
      child: ListView(
        children: chats3.map((chat) => _buildChatTile(chat, context)).toList(),
      ),
    );

    final submitButton = Padding(
      padding: EdgeInsets.only(top: 100.0),
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)), //changed shape
          ),
          child: Text("             Submit             "),
        ),
      ),
    );
    final Select_Contacts  = Padding(
      padding: EdgeInsets.only(top: 15.0, bottom: 20.0),
      child: Text(
        "Recipients                          Platform",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 20.0,
        ),
      ),
    );


  // Define your icons and spacings
List<IconData> icons = [
  Icons.credit_card,
  Icons.paypal, // Replace this with your PayPal icon
  Icons.apple, // Replace this with your Apple icon
  Icons.paypal // 4th icon
];

List<double> spacings = [
  60,
  60,
  60,
];

final chatListAndIcons = Container(
  height: 400,
  child: Row(
    children: [
      Expanded(
        child: ListView(
          children: chats3.map((chat) => _buildChatTile(chat, context)).toList(),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 80), // This will move the icons down by 30 pixels
        child: Column(
          children: List<Widget>.generate(
            icons.length, 
            (index) {
              return Column(
                children: <Widget>[
                  Icon(
                    icons[index],
                    size: 30,
                  ),
                  if (index < spacings.length) SizedBox(height: spacings[index]) // Add space after each icon except the last one
                ],
              );
            },
          ),
        ),
      ),
    ],
  ),
);









    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 40.0),
          width: deviceWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    pageTitle,
                    Select_Contacts,
                    chatListAndIcons,
                    submitButton
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserCard(User user, BuildContext context) {
    final firstName = user.name.split(" ")[0];

    final onlineTag = Positioned(
      bottom: 10.0,
      right: 3.0,
      child: Container(
        height: 15.0,
        width: 15.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2.0),
          color: Colors.lightGreen,
        ),
      ),
    );
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () => Navigator.pushNamed(context, chatDetailsViewRoute, arguments: user.id),
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8.0),
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(user.photo),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              onlineTag
            ],
          ),
        ),
        Text(
          firstName,
          style: TextStyle(fontWeight: FontWeight.w600),
        )
      ],
    );
  }

  Widget _buildChatTile(Chat chat, BuildContext context) {
    final unreadCount = Positioned(
      bottom: 9.0,
      right: 0.0,
      child: Container(
        height: 25.0,
        width: 25.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2.0),
          gradient: primaryGradient,
        ),
        child: Center(
          child: Text(
            chat.unreadCount.toString(),
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );

    final userImage = InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          userDetailsViewRoute,
          arguments: chat.userId,
        );
      },
      child: Stack(
        children: <Widget>[
          Hero(
            tag: chat.userImage,
            child: Container(
              margin: EdgeInsets.only(right: 8.0, bottom: 10.0),
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(chat.userImage),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          chat.unreadCount == 0 ? Container() : unreadCount
        ],
      ),
    );

    final userNameMessage = Expanded(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            chatDetailsViewRoute,
            arguments: chat.userId,
          );
        },
        child: Container(
          padding: EdgeInsets.only(
            left: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Hero(
                tag: chat.userName,
                child: Text(
                  chat.userName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Text(
                chat.message,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                  color: Colors.grey.withOpacity(0.6),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: <Widget>[userImage, userNameMessage],
      ),
    );
  }
}
