import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  final userNameControl = TextEditingController();
  final passwordControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(child: _Principal(context)),
    );
  }

  Widget _Principal(context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/mountBack.png"),
              fit: BoxFit.cover)),
      child: _LogIn(context),
    );
  }

  Widget _LogIn(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[_Logo(), _UserTop(), _PassTop(), _SignIn(), _SingUp(),],
      ),
    );
  }

  Widget _Logo() {
    return Padding(
        padding: EdgeInsets.only(top: 50, bottom: 160),
        child: Image.asset(
          "assets/images/logo.png",
          height: 80,
          fit: BoxFit.fill,
        ));
  }

  Widget _UserName() {
    return Theme(
      data: new ThemeData(
          primaryColor: Colors.grey, primaryColorDark: Colors.grey),
      child: Padding(
          padding: EdgeInsets.only(right: 15, bottom: 5),
          child: Container(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            child: TextField(
              controller: userNameControl,
              style: GoogleFonts.lato(color: Colors.white),
              decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: GoogleFonts.lato(color: Colors.grey),
                  floatingLabelBehavior: FloatingLabelBehavior.never),
            ),
          )),
    );
  }

  Widget _Password() {
    return Theme(
      data: new ThemeData(
          primaryColor: Colors.grey, primaryColorDark: Colors.grey),
      child: Padding(
        padding: EdgeInsets.only(bottom: 50, right: 15),
        child: Container(
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: TextField(
            controller: passwordControl,
            obscureText: true,
            style: GoogleFonts.lato(color: Colors.white),
            decoration: InputDecoration(
                labelStyle: GoogleFonts.lato(color: Colors.grey),
                labelText: 'Password',
                floatingLabelBehavior: FloatingLabelBehavior.never),
          ),
        ),
      ),
    );
  }

  Widget _SignIn() {
    return
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF4FE3C1),
              blurRadius: 6,
              offset: Offset(0, 4),
            )
          ]
        ),
        child: ElevatedButton(
          onPressed: () {
            passwordControl.clear();
            userNameControl.clear();
          },
          child: Padding(
            padding: EdgeInsets.only(left: 110, right: 110, bottom: 20, top: 15),
            child: Text(
              "SIGN IN",
              style: GoogleFonts.lato(color: Colors.white, fontSize: 17),
            ),
          ),
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(26))),
              backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF4FE3C1))),
        ),
      );
  }

  Widget _SingUp(){
    return Padding(
      padding: EdgeInsets.only(top: 70),
      child: Column(
        children: <Widget>[
          Text("DON'T HAVE ACCOUNT?", style: GoogleFonts.lato(color: Colors.grey, fontSize: 14),),
          TextButton(
              onPressed: (){},
              child: Text("Sign up", style: GoogleFonts.lato(color: Colors.white, fontSize: 17),),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(26))),
              ),
          )
        ],
      ),
    );
  }

  Widget _PassTop(){
    return ListTile(
      leading: GestureDetector(
        behavior: HitTestBehavior.translucent,
        child: Container(
          width: 48,
          height: 48,
          alignment: Alignment.center,
          child: Image.asset("assets/images/candado.png", width: 35, height: 35,),
        ),
      ),
      title: _Password(),
      onTap: () {
      },
      dense: false,
    );
  }

  Widget _UserTop(){
    return ListTile(
      leading: GestureDetector(
        behavior: HitTestBehavior.translucent,
        child: Container(
          width: 48,
          height: 48,
          alignment: Alignment.center,
          child: Image.asset("assets/images/user.png", width: 35, height: 35,),
        ),
      ),
      title: _UserName(),
      onTap: () {
      },
      dense: false,
    );
  }
}
