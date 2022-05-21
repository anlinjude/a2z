import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({
    Key? key,
  }) : super(key: key);
  bool ?buttonTapped = false;

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          width: MediaQuery.of(context).size.width/1.5,
          height: 50,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: const Color(0xFFDB4035),
            borderRadius: BorderRadius.circular(10),
            boxShadow:  [
              BoxShadow(
                offset: !widget.buttonTapped!?const Offset(0,3):const Offset(0,0),
                color: const Color(0x50000000),
                blurRadius: 5
              )
            ]
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: const Color(0xFFF3473A)
            ),
            child: const Center(
              child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600)),
            ),
          ),
        ),
      ),
      onTapDown: (tap){
        setState(() {
          widget.buttonTapped=true;
        });
      },
      onTapUp:(tap){
        setState(() {
          widget.buttonTapped=false;
        });
      },
      onLongPressDown:(tap){
        setState(() {
          widget.buttonTapped=true;
        });
      },
      onLongPressUp: (){
        setState(() {
          widget.buttonTapped=false;
        });
      },
    );
  }
}
