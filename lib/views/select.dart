import 'package:flutter/material.dart';
import 'package:flutter_social/_routing/routes.dart';
import 'package:flutter_social/utils/colors.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_social/models/user.dart';
import 'package:flutter_social/models/chat.dart';
import 'package:flutter_social/views/summary.dart';

class SelectPage extends StatefulWidget {
  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
@override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    final pageTitle = Padding(
      padding: EdgeInsets.only(top: 1.0, bottom: 20.0),
      child: Text(
        "Itemization",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 40.0,
        ),
      ),
    );
final buttonRow1 = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 24, 143, 227),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            ),
            child: Text("Fries \$12.34      "),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 24, 143, 227),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            ),
            child: Text("Lasagna \$22.50"),
          ),
        ],
      ),
    );

    final buttonRow2 = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 243, 177, 64),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            ),
            child: Text("Burger \$15.00   "),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 112, 109, 109),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            ),
            child: Text("Steak \$37.80    "),
          ),
        ],
      ),
    );

    final buttonRow3 = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 112, 109, 109),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            ),
            child: Text("Pizza 13.50     "),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 112, 109, 109),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            ),
            child: Text("Wine 23.50     "),
          ),
        ],
      ),
    );
    
    final searchBar = Container(
      padding: EdgeInsets.only(left:0, right: 20.0),
      height: 50.0,
      width: deviceWidth,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.only(top: 15.0),
          hintText: 'Search...',
          hintStyle: TextStyle(
            color: Colors.grey.withOpacity(0.6),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );

    final paymentmethod = Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      height: 60.0,
      width: deviceWidth,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 243, 180, 113).withOpacity(0.3),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.paypal),
          Icon(Icons.apple),
          Icon(Icons.payment),
          Icon(Icons.payments),
        ],
      ),
    );

    final chatList = Container(
      height: 310.0,
      child: ListView(
        children: chats2.map((chat) => _buildChatTile(chat, context)).toList(),
      ),
    );

    final submitButton = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Center(
        child: ElevatedButton(
          onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SummaryPage()),
              );
            },
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
        "Select Contacts ",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 20.0,
        ),
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
                    buttonRow1,
                    buttonRow2,
                    paymentmethod,
                    Select_Contacts,
                    searchBar,
                    chatList,
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
