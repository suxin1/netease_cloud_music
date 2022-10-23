import "package:flutter/material.dart";

class Input extends StatelessWidget {
  final String hintText;
  final FormFieldValidator validator;
  final bool obscureText;
  final bool autofocus;
  final IconData icon;
  final TextEditingController _controller;

  const Input({
    Key? key,
    required this.hintText,
    required this.validator,
    this.obscureText = false,
    this.autofocus = false,
    required this.icon,
    required TextEditingController controller,
  })  : _controller = controller,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: TextFormField(
        controller: _controller,
        autofocus: autofocus,
        obscureText: obscureText,
        // style: TextStyle(
        //   height: 1,
        //   fontSize: 16,
        //   textBaseline: TextBaseline.ideographic,
        // ),
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: Color(0xCCFFFFFF),
          hintText: hintText,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide.none,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          prefixIcon: icon != null
              ? Icon(
                  icon,
                  size: 20,
                )
              : null,
          errorStyle: const TextStyle(
            color: Colors.white,
            height: 1,
            fontSize: 10,
            textBaseline: TextBaseline.ideographic,
          ),
        ),
        textAlignVertical: TextAlignVertical.center,
        validator: validator,
      ),
    );
  }
}
