import 'package:flutter/material.dart';
import 'package:fokabay/Models/events_model.dart';

class DescriptionPage extends StatefulWidget {
  static const String route = '/description';
  //Events eventsModel;
  DescriptionPage({Key? key}) : super(key: key);

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              w > 800
                  ? 'images/desktop_register.png'
                  : 'images/mobile_register.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1.2,
              fit: BoxFit.fill,
            ),
            Column(
              children: [],
            )
          ],
        ),
      ),
    );
  }

  Widget cardworkShop(Events workShopModel) {
    double wd = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
      child: Container(
        // height: wd > 600 ? MediaQuery.of(context).size.height * 0.3 : 200,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12.0)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/test.png",
                width: wd * .8,
                height: 220,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            workShopModel.eventName != null
                                ? workShopModel.eventName.toString()
                                : '',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.black,
                                fontWeight: FontWeight.w700)),
                        Text('Workshop',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w400)),
                      ]),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text('Date',
                          style: TextStyle(
                              fontSize: 26,
                              color: Colors.black,
                              fontWeight: FontWeight.w400)),
                      Text(workShopModel.datetime.toString(),
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Time',
                          style: TextStyle(
                              fontSize: 26,
                              color: Colors.black,
                              fontWeight: FontWeight.w400)),
                      Text(workShopModel.datetime.toString(),
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w400)),
                      Column(
                        children: [
                          Text('Duration',
                              style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                          Text(workShopModel.durationHours.toString(),
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                          Column(
                            children: [
                              Text('Age group',
                                  style: TextStyle(
                                      fontSize: 26,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400)),
                              Text(workShopModel.minAge.toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400)),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Text('Description',
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                      fontWeight: FontWeight.w400)),
              SizedBox(height: 5),
              Text(workShopModel.description.toString(),
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w400)),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 60,
                  width: 200,
                  child: ButtonTheme(
                      //minWidth: 200.0,
                      //   height:32.h,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          side: const BorderSide(color: Color(0xFF71B3E3))),
                      child: RaisedButton(
                          color: Color(0xFF71B3E3),
                          child: Text("Register now ",
                              style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                          onPressed: () {})),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget cardWorkShopMobile(Events workShopModel) {
    double wd = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      child: Container(
        // height: wd > 600 ? MediaQuery.of(context).size.height * 0.3 : 200,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12.0)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Image.asset(
                  "images/test.png",
                  width: wd * 0.6,
                  height: 160,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Flexible(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                                    workShopModel.eventName != null
                                        ? workShopModel.eventName.toString()
                                        : '',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700))),
                            const SizedBox(width: 15),
                            Text('WorkShop',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400))
                          ])),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text('Date',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                          Text(workShopModel.datetime.toString(),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Time',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                          Text(workShopModel.datetime.toString(),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text('Duration',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                          Text(workShopModel.durationHours.toString(),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Age group',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                          Text(workShopModel.minAge.toString(),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                        ],
                      )
                    ],
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(bottom: 6.0),
                  //   child: Text(workShopModel.datetime.toString(),
                  //       style: TextStyle(
                  //           fontSize: 18,
                  //           color: Colors.black,
                  //           fontWeight: FontWeight.w400)),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(bottom: 6.0),
                  //   child: Text(workShopModel.durationHours.toString(),
                  //       style: TextStyle(
                  //           fontSize: 18,
                  //           color: Colors.black,
                  //           fontWeight: FontWeight.w400)),
                  // ),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: ButtonTheme(
                        //minWidth: 200.0,
                        //   height:32.h,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: const BorderSide(color: Color(0xFF71B3E3))),
                        child: RaisedButton(
                            color: Color(0xFF71B3E3),
                            child: Text("Register now",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500)),
                            onPressed: () {})),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
