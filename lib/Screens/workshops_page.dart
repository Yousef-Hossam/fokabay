import 'dart:convert';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:fokabay/Models/events_model.dart';
import 'package:fokabay/Models/workshop_model.dart';
import 'package:fokabay/provider/workshop_provider.dart';
import 'package:fokabay/routes/routes.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class WorkShops extends StatefulWidget {
  static const String route = '/events';

  const WorkShops({Key? key}) : super(key: key);

  @override
  State<WorkShops> createState() => _WorkShopsState();
}

class _WorkShopsState extends State<WorkShops> with AfterLayoutMixin {
  late WorkShopProvider workShopProvider;
  DateFormat dateFormat = new DateFormat('dd-MM-yyyy hh:mm a');
  List<WorkShopModel> listWorkShop = [
    WorkShopModel(
        image: 'images/test.png',
        duration: '5 July 2022',
        name: 'Tie Die',
        time: 'Friday 11:00 AM'),
    WorkShopModel(
        image: 'images/test.png',
        duration: '5 July 2022',
        name: 'Tie Die',
        time: 'Friday 11:00 AM'),
    WorkShopModel(
        image: 'images/test.png',
        duration: '2 Hours',
        name: 'Tie Die',
        time: 'Friday 11:00 AM'),
    WorkShopModel(
        image: 'images/test.png',
        duration: '5 July 2022',
        name: 'Tie Die',
        time: 'Friday 11:00 AM'),
    WorkShopModel(
        image: 'images/test.png',
        duration: '5 July 2022',
        name: 'Tie Die',
        time: 'Friday 11:00 AM'),
  ];

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   callWorkShops();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    WorkShopProvider workShopProvider =
        Provider.of<WorkShopProvider>(context, listen: true);
    print("length" + workShopProvider.listWorkshops.length.toString());
    // workShopProvider.getAllEvents();
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color(0xff71B3E3),
        toolbarHeight: 100,
        shadowColor: Color(0xff71B3E3).withOpacity(0.6),
        bottomOpacity: 5,
        centerTitle: true,
        title: Image.asset(
          'images/foka_bay.png',
          width: 200,
          height: 70,
          fit: BoxFit.contain,
        ),

        //  title: Text('fffff'),
      ),
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
              children: [
                // Align(
                //   alignment: Alignment.topCenter,
                //   child: Image.asset(
                //     'images/foka_bay.png',
                //     width: 200,
                //     height: 100,
                //     fit: BoxFit.contain,
                //   ),
                // ),
                workShopProvider.listWorkshops.length != null &&
                        workShopProvider.listWorkshops.length > 0
                    ? w > 800
                        ? Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.2,
                              // right: MediaQuery.of(context).size.width * 0.18,
                              //   top: 40
                            ),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.95,
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: MediaQuery.removePadding(
                                removeTop: false,
                                removeBottom: false,
                                context: context,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: ListView.builder(
                                    // gridDelegate:
                                    //     SliverGridDelegateWithFixedCrossAxisCount(
                                    //         crossAxisCount: w > 750 ? 1 : 1,
                                    //         crossAxisSpacing: 5.0,
                                    //         mainAxisSpacing: 5.0,
                                    //         childAspectRatio: 3.8 / 2),
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(top: 16.0),
                                        child: cardworkShop(workShopProvider
                                            .listWorkshops[index]),
                                      );
                                    },
                                    itemCount:
                                        workShopProvider.listWorkshops.length,
                                    primary: false,
                                    shrinkWrap: true,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(
                            //    color: Color(0xffE5E5E5),
                            child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: ListView.builder(
                                    itemBuilder: (context, index) {
                                      return cardWorkShopMobile(workShopProvider
                                          .listWorkshops[index]);
                                    },
                                    itemCount:
                                        workShopProvider.listWorkshops.length,
                                    primary: false,
                                    shrinkWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ))
                    : Container()
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget cardworkShop(Events workShopModel) {
    double wd = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.description,
            arguments: workShopModel);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
        child: Container(
          // height: wd > 600 ? MediaQuery.of(context).size.height * 0.3 : 200,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12.0)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.memory(
                  base64Decode(workShopModel.imageBase64.toString()),
                  height: 210,
                  width: 210,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 20),
                Flexible(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
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
                                  fontSize: 24,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                          DateFormat("dd").format(dateFormat
                                  .parse(workShopModel.datetime.toString())) +
                              ' ' +
                              DateFormat("MMMM").format(dateFormat
                                  .parse(workShopModel.datetime.toString())) +
                              ' ' +
                              DateFormat("yyyy").format(dateFormat
                                  .parse(workShopModel.datetime.toString())),
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.black,
                              fontWeight: FontWeight.w400)),
                      SizedBox(height: 10),
                      Text(
                          DateFormat.jm().format(dateFormat
                              .parse(workShopModel.datetime.toString())),
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w400)),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 50,
                        width: 180,
                        child: ButtonTheme(
                            //minWidth: 200.0,
                            //   height:32.h,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                side:
                                    const BorderSide(color: Color(0xFF71B3E3))),
                            child: RaisedButton(
                                color: Color(0xFF71B3E3),
                                child: Text("Details",
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                                onPressed: () {})),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget cardWorkShopMobile(Events workShopModel) {
    double wd = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.description,
            arguments: workShopModel);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        child: Container(
          // height: wd > 600 ? MediaQuery.of(context).size.height * 0.3 : 200,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12.0)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Image.memory(
                    base64Decode(workShopModel.imageBase64.toString()),
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
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
                              Text('Workshop',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400))
                            ])),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Text(
                          DateFormat("dd").format(dateFormat
                                  .parse(workShopModel.datetime.toString())) +
                              ' ' +
                              DateFormat("MMMM").format(dateFormat
                                  .parse(workShopModel.datetime.toString())) +
                              ' ' +
                              DateFormat("yyyy").format(dateFormat
                                  .parse(workShopModel.datetime.toString())),
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w400)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Text(
                          DateFormat.jm().format(dateFormat
                              .parse(workShopModel.datetime.toString())),
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w400)),
                    ),
                    SizedBox(
                      height: 35,
                      width: 120,
                      child: ButtonTheme(
                          //minWidth: 200.0,
                          //   height:32.h,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              side: const BorderSide(color: Color(0xFF71B3E3))),
                          child: RaisedButton(
                              color: Color(0xFF71B3E3),
                              child: Text("Details",
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
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    workShopProvider = Provider.of<WorkShopProvider>(context, listen: false);
    workShopProvider.getAllEvents();

    setState(() {});
  }

  Future callWorkShops() async {
    await workShopProvider.getAllEvents();
    // sleep(const Duration(seconds: 15));
    //  userAddressProvider.faillRegions();
    //   userAddressProvider.faillCities();
    //setState(() {});
  }
}
