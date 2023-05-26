import 'package:flutter/material.dart';
import 'package:flutter_social/_routing/routes.dart';
import 'package:flutter_social/utils/colors.dart';
import 'package:line_icons/line_icons.dart';

class EditPage extends StatefulWidget {
  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController(text: 'Simba');
  final _nicknameController = TextEditingController(text: 'simba');
  final _emailController = TextEditingController(text: 'Simba@gmail.com');
  final _phoneNumberController = TextEditingController(text: '123456');
  final _addressController = TextEditingController(text: 'Dartmouth college');

  @override
  Widget build(BuildContext context) {
    final appBar = Padding(
      padding: EdgeInsets.only(bottom: 40.0),
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
        "Edit personal detail",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 35.0,
        ),
      ),
    );

    final formFieldSpacing = SizedBox(
      height: 30.0,
    );

    final registerForm = Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            _buildFormField('Name', LineIcons.user, _nameController),
            formFieldSpacing,
            _buildFormField('Nickname', LineIcons.user, _nicknameController),
            formFieldSpacing,
            _buildFormField('Email', LineIcons.envelope, _emailController),
            formFieldSpacing,
            _buildFormField('Phone number', LineIcons.phone, _phoneNumberController, asset: 'assets/images/united-states.png'),
            formFieldSpacing,
            _buildFormField('Address', LineIcons.home, _addressController),
            formFieldSpacing,
          ],
        ),
      ),
    );

    final submitBtn = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
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
                    registerForm,
                    submitBtn,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFormField(String label, IconData icon, TextEditingController controller, {String asset}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: label,
      labelStyle: TextStyle(color: Colors.black),
      prefixIcon: asset == null ? Icon(icon, color: Colors.black38,) : Image.asset(asset, width: 15, height: 15,),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.black38),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.orange),
      ),
    ),
    keyboardType: TextInputType.text,
    style: TextStyle(color: Colors.black),
    cursorColor: Colors.black,
  );
}

}
