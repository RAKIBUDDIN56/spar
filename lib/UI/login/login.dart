import 'package:flutter/material.dart';
import 'package:spar/UI/home/home.dart';

import 'package:spar/UI/login/color_utils.dart';
import 'package:spar/UI/login/common_styles.dart';
import 'package:spar/UI/login/raised_gradient_button.dart';
import 'package:spar/UI/signup.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Container(
                //height: MediaQuery.of(context).size.height * 0.40,
                width: double.infinity,
                decoration: BoxDecoration(gradient: ColorUtils.appBarGradient),
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 32.0),
                    ),
                  )),
              Positioned(
                top: 150,
                left: 10,
                right: 10,
                child: LoginFormWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginFormWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginFormWidgetState();
  }
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final _formKey = GlobalKey<FormState>();
  var _userEmailController = TextEditingController(text: "");
  var _userPasswordController = TextEditingController(text: "");
  var _emailFocusNode = FocusNode();
  var _passwordFocusNode = FocusNode();
  bool _isPasswordVisible = true;
  bool _autoValidate = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidate: _autoValidate,
      child: Container(
        padding: EdgeInsets.only(left: 15.0, right: 10.0),
        child: Column(
          children: <Widget>[
            Card(
              elevation: 8,
              child: Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
                  children: <Widget>[
                    _buildLogo(),
                    _buildIntroText(),
                    _buildEmailField(context),
                    _buildPasswordField(context),
                    _buildForgotPasswordWidget(context),
                    _buildSignUpButton(context),
                    _buildLoginOptionText(),
                    _buildSocialLoginRow(context),
                  ],
                ),
              ),
            ),
            _buildSignUp(),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialLoginRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
      child: Row(
        children: <Widget>[
          __buildFacebookButtonWidget(context),
          __buildTwitterButtonWidget(context)
        ],
      ),
    );
  }

  Widget __buildTwitterButtonWidget(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: RaisedButton(
            color: Color.fromRGBO(29, 161, 242, 1.0),
            child: Image.asset(
              "images/twitter.png",
              width: 25,
              height: 25,
              color: Colors.white,
            ),
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0))),
      ),
    );
  }

  Widget __buildFacebookButtonWidget(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: RaisedButton(
            color: Color.fromRGBO(42, 82, 151, 1.0),
            child: Image.asset(
              "images/facebook.png",
              width: 25,
              height: 25,
              color: Colors.white,
            ),
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0))),
      ),
    );
  }

  Widget _buildLoginOptionText() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        "Or sign up with social account",
        style: TextStyle(
            fontSize: 14, color: Colors.black54, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildIntroText() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 0),
          child: Text(
            "",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget _buildLogo() {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Image.asset(
        "images/appicon.png",
        height: 150,
        width: 150,
      ),
    );
  }

  String _userNameValidation(String value) {
    if (value.isEmpty) {
      return "Please enter valid user name";
    } else {
      return null;
    }
  }

  Widget _buildEmailField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: TextFormField(
        controller: _userEmailController,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (_) {
          FocusScope.of(context).requestFocus(_passwordFocusNode);
        },
        validator: (value) => _emailValidation(value),
        decoration: CommonStyles.textFormFieldStyle("Email", ""),
      ),
    );
  }

  String _emailValidation(String value) {
    bool emailValid =
        RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
    if (!emailValid) {
      return "Enter valid email address";
    } else {
      return null;
    }
  }

  Widget _buildPasswordField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: TextFormField(
        controller: _userPasswordController,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (_) {
          FocusScope.of(context).requestFocus(_emailFocusNode);
        },
        validator: (value) => _userNameValidation(value),
        obscureText: _isPasswordVisible,
        decoration: InputDecoration(
          labelText: "Password",
          hintText: "",
          labelStyle: TextStyle(color: Colors.black),
          alignLabelWithHint: true,
          contentPadding: EdgeInsets.symmetric(vertical: 5),
          suffixIcon: IconButton(
              icon: Icon(
                _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                color: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
              }),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
        ),
      ),
    );
  }

  Widget _buildForgotPasswordWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: FlatButton(
            onPressed: () {},
            child: Text(
              'Forgot your password ?',
              style:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.w500),
            )),
      ),
    );
  }

  Widget _buildSignUpButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        width: double.infinity,
        child: RaisedGradientButton(
          child: Text(
            "Login",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          onPressed: () {
            _signUpProcess(context);
          },
        ),
      ),
    );
  }

  void _signUpProcess(BuildContext context) {
    var validate = _formKey.currentState.validate();

    if (validate) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
      //Do login stuff
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }

  void _clearAllFields() {
    setState(() {
      _userEmailController = TextEditingController(text: "");
      _userPasswordController = TextEditingController(text: "");
    });
  }

  Widget _buildSignUp() {
    return Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Container(
          //margin: EdgeInsets.only(left: 100),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't you have an account?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                ),
                RaisedButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  child: Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.w800),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
