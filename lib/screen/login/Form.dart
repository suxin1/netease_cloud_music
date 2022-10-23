import 'package:netease_cloud_music/config/application.dart';
import 'package:netease_cloud_music/service/service.dart';
import 'package:netease_cloud_music/service/user/user.dart';
import "package:flutter/material.dart";
import "package:netease_cloud_music/components/Input.dart";
import "package:netease_cloud_music/theme/default.dart";

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey _formKey = new GlobalKey<FormState>();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _passwdController = new TextEditingController();

  final userService = service.get<User>();

  void handleSubmit(BuildContext context) {
    if ((_formKey.currentState as FormState).validate()) {
      // Application.router.navigateTo(
      //   context,
      //   "/personal",
      // );
      var uname = _nameController.value.text;
      var passwd = _passwdController.value.text;
      userService.login(uname, passwd).then((value) {
        Navigator.pushNamed(
          context,
          "/home",
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: <Widget>[
            Input(
              controller: _nameController,
              hintText: "手机号或邮箱",
              autofocus: false,
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
            _submitButton(),
          ],
        ),
      ),
    );
  }

  Widget _submitButton() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: SizedBox(
        height: 40,
        width: double.infinity,
        child: TextButton(
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(28),
          // ),
          // padding: EdgeInsets.all(8),
          child: Text("登录"),
          // color: Colors.white,
          // textColor: Colors.black,
          onPressed: () {
            handleSubmit(context);
          },
          style: TextButton.styleFrom(
            foregroundColor: themeColors["primary"],
            backgroundColor: themeColors["secondaryLight"],
            textStyle: const TextStyle(fontSize: 16),
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
          )
        ),
      ),
    );
  }
}
