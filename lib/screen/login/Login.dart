import "package:flutter/material.dart";
import "package:NeteaseMusicMobileFake/theme/default.dart";

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color(colors["primary"]),
              width: double.infinity,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                    ),
                    LoginForm(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey _formKey = new GlobalKey<FormState>();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _passwdController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child: Form(
        key: _formKey,
        autovalidate: true,
        child: Column(
          children: <Widget>[
            Input(
              controller: _nameController,
              hintText: "手机号或邮箱",
              autofocus: true,
              icon: Icons.person,
              validator: (v) {
                return v.trim().length > 0 ? null : "请输入手机号或邮箱";
              },
            ),
            Input(
              controller: _passwdController,
              hintText: "请输入密码",
              obscureText: true,
              icon: Icons.lock,
              validator: (v) {
                return v.trim().length >= 6 ? null : "请输入密码";
              },
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Builder(
                        builder: (context) {
                          return RaisedButton(
                            padding: EdgeInsets.all(8),
                            child: Text("登录"),
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            onPressed: () {
                              if ((_formKey.currentState as FormState)
                                  .validate()) {
                                var uname = _nameController.value;
                                var passwd = _passwdController.value;
                              }
                              if (Form.of(context).validate()) {
                                var uname = _nameController.value;
                                var passwd = _passwdController.value;
                              }
                            },
                          );
                        },
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class Input extends StatelessWidget {
  final String hintText;
  final Function validator;
  final bool obscureText;
  final bool autofocus;
  final IconData icon;

  const Input({
    Key key,
    this.hintText,
    this.validator,
    this.obscureText = false,
    this.autofocus = false,
    this.icon,
    @required TextEditingController controller,
  })  : _controller = controller,
        super(key: key);

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: TextFormField(
        controller: _controller,
        autofocus: true,
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.only(top: 0, bottom: 0),
          prefixIcon: Icon(icon),
          errorStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        validator: validator,
      ),
    );
  }
}
