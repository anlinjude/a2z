import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({
     Key? key,
     this.width,
     this.onChanged
   }) : super(key: key);

  double ?width;
  Function(String) ?onChanged;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,7,10,10),
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          boxShadow: const [BoxShadow(
            color: Color(0x5000000),
            offset: Offset(0,2),
            blurRadius: 1
          )]
        ),
        child: TextFormField(
          onChanged: onChanged ?? (input){},
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.white)
            )
          ),
        ),
      ),
    );
  }
}
