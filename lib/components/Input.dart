import "package:flutter/material.dart";

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
