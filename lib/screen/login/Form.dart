import "package:flutter/material.dart";
import "package:NeteaseMusicMobileFake/components/Input.dart";

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
              // icon: Icons.person,
              validator: (v) {
                return v.trim().length > 0 ? null : "请输入手机号或邮箱";
              },
            ),
            Input(
              controller: _passwdController,
              hintText: "请输入密码",
              obscureText: true,
              // icon: Icons.lock,
              validator: (v) {
                return v.trim().length >= 6 ? null : "请输入密码";
              },
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  children: [
                    Expanded(
                      child: Builder(
                        builder: (context) {
                          return Container(
                            height: 40,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                              ),
                              padding: EdgeInsets.all(8),
                              child: Text("登录"),
                              color: Colors.white,
                              textColor: Colors.black,
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
                            ),
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
