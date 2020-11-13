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
      height: 70,
      child: TextFormField(
        controller: _controller,
        autofocus: true,
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xCCFFFFFF),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide.none,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16),
          prefixIcon: icon != null
              ? Icon(
                  icon,
                  size: 20,
                )
              : null,
          errorStyle: TextStyle(color: Colors.white, height: 0.8, fontSize: 10),
        ),
        validator: validator,
      ),
    );
  }
}
