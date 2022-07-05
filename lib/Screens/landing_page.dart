import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/fracation_sized_box.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Stack(
        children: [
          Image.asset(
            screenWidth > 500
                ? 'images/desktop_landing.png'
                : 'images/landing_mobile_bk.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          screenWidth < 500
              ? FractionallyAlignedSizedBox(
                  topFactor: .35,
                  child: Padding(
                    padding: EdgeInsets.only(right: 1, left: 1),
                    child: Image.asset(
                      'images/coming_soon.png',
                      width: screenWidth,
                      //  height:,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              : SizedBox()
          // FractionallyAlignedSizedBox(
          //   bottomFactor: .1,
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Align(
          //       alignment: Alignment.bottomCenter,
          //       child: Container(
          //         decoration: BoxDecoration(
          //             // borderRadius: BorderRadius.circular(5.0),
          //             //border: borderColor == null ? null : Border.all(color: borderColor),
          //             borderRadius: BorderRadius.all(Radius.circular(50)),
          //             color: Colors.white),
          //         child: Align(
          //           alignment: Alignment.center,
          //           child: Text(
          //             'Workshops',
          //             //   textAlign: TextAlign.center,
          //             style: TextStyle(
          //                 fontSize: ResponsiveValue(
          //                   context,
          //                   defaultValue: 20.0,
          //                   valueWhen: const [
          //                     Condition.smallerThan(
          //                       name: MOBILE,
          //                       value: 20.0,
          //                     ),
          //                     Condition.largerThan(
          //                       name: TABLET,
          //                       value: 40.0,
          //                     )
          //                   ],
          //                 ).value,
          //                 fontWeight: FontWeight.w700),
          //           ),
          //         ),
          //         width: MediaQuery.of(context).size.width * 0.4,
          //         height: 60,
          //         //    color: Colors.white,
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
