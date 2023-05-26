import 'package:flutter/material.dart';
import 'package:flutter_social/_routing/routes.dart';
import 'package:flutter_social/utils/colors.dart';
import 'package:line_icons/line_icons.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool _isopened = true; 
  bool _isclosed = false;
  
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final appBar = Padding(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          )
        ],
      ),
    );

    final pageTitle = Container(
      child: Text(
        "Payment Settings",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 35.0,
        ),
      ),
    );

    final formFieldSpacing = SizedBox(
      height: 4,
    );

    final paymentmethod = Container(
  padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
  height: 75.0, 
  width: deviceWidth,
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 243, 180, 113).withOpacity(0.3),
    borderRadius: BorderRadius.circular(12.0),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Connected Accounts",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 17.0,
        ),
      ),
      SizedBox(height: 10.0), // add a space between the text and icons
      Row( 
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.paypal),
          Icon(Icons.apple),
          Icon(Icons.payment),
          Icon(Icons.payments),
        ],
      ),
    ],
  ),
);


    final Location = Container(
      child: Text(
        "Location Preferences",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 25.0,
        ),
      ),
    );

    final Location1 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Payment settings based on location",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.0,
          ),
        ),
        Switch(
          value: _isopened,
          onChanged: (value) { 
            setState(() {
              _isopened = value;
            });
          },
          activeColor: primaryColor,
        ),
      ],
    );

    final Itemization = Container(
      child: Text(
        "Itemization",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 25.0,
        ),
      ),
    );

    final Itemization1 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Split entire bill evenly",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.0,
          ),
        ),
        Switch(
          value: _isclosed,
          onChanged: (value) { 
            setState(() {
              _isclosed = value;
            });
          },
          activeColor: primaryColor,
        ),
      ],
    );

    final Itemization2 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Split items evenly",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.0,
          ),
        ),
        Switch(
          value: _isopened,
          onChanged: (value) { 
            setState(() {
              _isopened = value;
            });
          },
          activeColor: primaryColor,
        ),
      ],
    );
    final Itemization3 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Split tax evenly",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.0,
          ),
        ),
        Switch(
          value: _isopened,
          onChanged: (value) { 
            setState(() {
              _isopened = value;
            });
          },
          activeColor: primaryColor,
        ),
      ],
    );
    final Itemization4 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Split tip evenly",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.0,
          ),
        ),
        Switch(
          value: _isclosed,
          onChanged: (value) { 
            setState(() {
              _isclosed = value;
            });
          },
          activeColor: primaryColor,
        ),
      ],
    );

  final customItemization = Container(
  padding: EdgeInsets.all(15.0),
  height: 70.0,
  width: deviceWidth,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12.0),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Image.asset('assets/images/pen.png', width: 24, height: 24), // Use your own image from assets
          SizedBox(width: 10.0),
          Text(
            "Customize Itemization",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17.0,
            ),
          ),
        ],
      ),
      Icon(Icons.chevron_right),
    ],
  ),
);
final tax = Container(
      child: Text(
        "Tax & Tip",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 25.0,
        ),
      ),
    );

    final tax1 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Service Tax",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.0,
          ),
        ),
        Switch(
          value: _isclosed,
          onChanged: (value) { 
            setState(() {
              _isclosed = value;
            });
          },
          activeColor: primaryColor,
        ),
      ],
    );

    final tax2 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Tip",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.0,
          ),
        ),
        Switch(
          value: _isopened,
          onChanged: (value) { 
            setState(() {
              _isopened = value;
            });
          },
          activeColor: primaryColor,
        ),
      ],
    );


    

    final submitBtn = Padding(
      padding: EdgeInsets.only(top: 5.0),
      child: Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 20.0),
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.white),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(7.0),
          color: primaryColor,
          elevation: 10.0,
          shadowColor: Colors.white70,
          child: MaterialButton(
            onPressed: () => Navigator.of(context).pushNamed(homeViewRoute),
            child: Text(
              'Submit',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 40.0),
          child: Column(
            children: <Widget>[
              appBar,
              Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    pageTitle,
                    formFieldSpacing,
                    formFieldSpacing,
                    Location,
                    formFieldSpacing,
                    Location1,
                    formFieldSpacing,
                    formFieldSpacing,
                    Itemization,
                    formFieldSpacing,
                    Itemization1,
                    formFieldSpacing,
                    Itemization2,
                    formFieldSpacing,
                    Itemization3,
                    formFieldSpacing,
                    Itemization4,
                    formFieldSpacing,
                    customItemization,
                    formFieldSpacing,
                    tax,
                    formFieldSpacing,
                    tax1,
                    formFieldSpacing,
                    tax2,
                    submitBtn,
                    paymentmethod 
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}