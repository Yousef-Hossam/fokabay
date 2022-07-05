import 'package:flutter/material.dart';
import 'package:fokabay/Models/workshop_model.dart';

class WorkShops extends StatefulWidget {
  const WorkShops({Key? key}) : super(key: key);

  @override
  State<WorkShops> createState() => _WorkShopsState();
}

class _WorkShopsState extends State<WorkShops> {
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
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              w > 600 ? 'images/eeeee.png' : 'images/workshop_bk.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1.3,
              fit: BoxFit.fill,
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'images/foka_bay.png',
                    width: 200,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.9,
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
                            return cardworkShop(listWorkShop[index]);
                          },
                          itemCount: listWorkShop.length,
                          primary: false,
                          shrinkWrap: true,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget cardworkShop(WorkShopModel workShopModel) {
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
          padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                workShopModel.image,
                //  width: 100,
                height: MediaQuery.of(context).size.height * 0.3,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 10),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(workShopModel.name,
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.w700)),
                    SizedBox(height: 10),
                    Text(workShopModel.time,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w400)),
                    SizedBox(height: 10),
                    Text(workShopModel.duration,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w400)),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 40,
                      width: 150,
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
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
