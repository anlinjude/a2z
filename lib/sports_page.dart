import 'package:a2z_sports/widgets/customShape.dart';
import 'package:a2z_sports/widgets/custom_bottombar.dart';
import 'package:a2z_sports/widgets/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SportsPage extends StatefulWidget {
  const SportsPage({Key? key}) : super(key: key);

  @override
  _SportsPageState createState() => _SportsPageState();
}

class _SportsPageState extends State<SportsPage> {

  TextStyle titleStyle = const TextStyle(color: Color(0x70000000),fontWeight: FontWeight.w600,fontSize: 16);
  Color bgColor = const Color(0xffF6E8D2);
  Color customShapeColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Stack(
               clipBehavior: Clip.none,
               children: [
                 SizedBox(
                     width: MediaQuery.of(context).size.width,
                     height: 320,
                     child: CustomPaint(
                         painter: CustomShape(shapeColor: customShapeColor)
                     )
                 ),
                 Positioned(
                     top: 100,
                  /*   left: MediaQuery.of(context).size.width/11.8,*/
                     child:Padding(
                       padding: const EdgeInsets.symmetric(horizontal:32),
                       child: Container(
                         width: MediaQuery.of(context).size.width/1.2,
                         height: MediaQuery.of(context).size.height/4,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(10)
                         ),
                       ),
                     )
                 )
               ],
             ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Card number',style: titleStyle),
                  CustomTextField(width: MediaQuery.of(context).size.width/1.2),
                  Row(
                    children: [
                      Expanded(
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text('Expiry date',style: titleStyle),
                            CustomTextField(width: MediaQuery.of(context).size.width/2.5),
                          ]
                        ),
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Text('CVV',style: titleStyle),
                          ),
                          CustomTextField(width: MediaQuery.of(context).size.width/2.6),
                        ]
                      )
                    ],
                  ),
                  Text('Name on card',style: titleStyle),
                  CustomTextField(width: MediaQuery.of(context).size.width/1.2),
                  CustomTextField(width: MediaQuery.of(context).size.width/1.2),
                  CustomTextField(width: MediaQuery.of(context).size.width/1.2),
                  CustomTextField(width: MediaQuery.of(context).size.width/1.2),
                ],
              ),
            )
          ],
        )
      ),
      bottomNavigationBar:  CustomBottomBar(),
    );
  }
}
