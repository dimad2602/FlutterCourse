import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String labelText;
  final String? helperText;
  final Icon? icon;
  final TextEditingController? controller;
  final bool hiddenText;
  final String obscuringCharacter;
  final Icon? trailingIcon;
  const MyTextField({
    Key? key,
    required this.labelText,
    this.icon,
    this.controller,
    this.hiddenText = false,
    this.helperText,
    this.obscuringCharacter = "*",
    this.trailingIcon = const Icon(Icons.cancel_outlined),
  }) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          controller: widget.controller,
          obscureText: widget.hiddenText,
          obscuringCharacter: widget.obscuringCharacter,
          onChanged: (value) {
            setState(() {});
          },
          decoration: InputDecoration(
            prefixIcon: widget.icon,
            suffixIcon: widget.controller!.text.isNotEmpty
                ? IconButton(
                    icon: widget.trailingIcon!,
                    onPressed: () {
                      setState(() {
                        widget.controller!.clear();
                      });
                    },
                  )
                : null,
            // enabledBorder: const OutlineInputBorder(),
            // focusedBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(14),
            //   borderSide: const BorderSide(color: Colors.purple),
            // ),
            fillColor: const Color(0xFFe6e0e9),
            filled: true,
            labelText: widget.labelText,
            helperText: widget.helperText,
          ),
        ),
      ),
    );
  }
}
