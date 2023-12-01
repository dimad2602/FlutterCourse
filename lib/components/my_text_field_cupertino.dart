import 'package:curse_app_1/components/big_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextFieldCupertino extends StatefulWidget {
  final String? placeholder;
  final String? helperText;
  final TextEditingController? controller;
  final bool hiddenText;
  final String obscuringCharacter;
  final Icon trailingIcon;
  const MyTextFieldCupertino({
    Key? key,
    this.placeholder,
    this.controller,
    this.hiddenText = false,
    this.helperText,
    this.obscuringCharacter = "*",
    this.trailingIcon = const Icon(
      CupertinoIcons.clear_circled_solid,
      color: CupertinoColors.systemGrey,
    ),
  }) : super(key: key);

  @override
  State<MyTextFieldCupertino> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextFieldCupertino> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BigText(
                text: widget.helperText ?? '',
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          CupertinoTextField(
            controller: widget.controller,
            obscureText: widget.hiddenText,
            obscuringCharacter: widget.obscuringCharacter,
            onChanged: (value) {
              setState(() {});
            },
            decoration: BoxDecoration(
              border: Border.all(
                color: CupertinoColors.white,
              ),
            ),
            //padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            placeholder: widget.placeholder,
            placeholderStyle: const TextStyle(
              color: CupertinoColors.black,
            ),
            suffix: widget.controller!.text.isNotEmpty
                ? CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      setState(() {
                        widget.controller!.clear();
                      });
                    },
                    child: widget.trailingIcon,
                  )
                : null,
          ),
          const Divider(),
        ],
      ),
    );
  }
}
