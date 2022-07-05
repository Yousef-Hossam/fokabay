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
      //backgroundColor: Color(0xff71B3E3),
      //  appBar: AppBar(),
      // appBar: AppBar(
      //   elevation: 0,
      //   toolbarHeight: 200,
      //   backgroundColor: Color(0xff71B3E3),
      //   leading: Column(
      //     //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Padding(
      //         padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      //         child: Image.asset(
      //           'images/foka_bay.png',
      //           width: 80,
      //           height: 80,
      //           fit: BoxFit.contain,
      //         ),
      //       ),
      //
      //       // Container(
      //       //   decoration: BoxDecoration(
      //       //       // borderRadius: BorderRadius.circular(5.0),
      //       //       //border: borderColor == null ? null : Border.all(color: borderColor),
      //       //       borderRadius: BorderRadius.all(Radius.circular(50)),
      //       //       color: Colors.white),
      //       //   child: Align(
      //       //     alignment: Alignment.center,
      //       //     child: Text(
      //       //       'Workshops',
      //       //       //   textAlign: TextAlign.center,
      //       //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
      //       //     ),
      //       //   ),
      //       //   width: 100,
      //       //   height: 60,
      //       //   //    color: Colors.white,
      //       // ),
      //     ],
      //   ),
      //   leadingWidth: double.infinity,
      // ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'images/eeeee.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1.4,
              fit: BoxFit.fill,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Padding(
            //       padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            //       child: Image.asset(
            //         'images/foka_bay.png',
            //         width: w > 500 ? 300 : 140,
            //         height: 100,
            //         fit: BoxFit.contain,
            //       ),
            //     ),
            //     Padding(
            //       padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            //       child: Container(
            //         decoration: BoxDecoration(
            //             // borderRadius: BorderRadius.circular(5.0),
            //             //border: borderColor == null ? null : Border.all(color: borderColor),
            //             borderRadius: BorderRadius.all(Radius.circular(40)),
            //             color: Colors.white),
            //         width: w > 500 ? 220 : 150,
            //         height: 70,
            //         //    color: Colors.white,
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 50,
            // ),
            // Container(
            //   width: 100,
            //   height: 100,
            //   child: Image.asset(
            //     'images/pattern.png',
            //     //    width: double.infinity,
            //     //    height: 80,
            //     fit: BoxFit.cover,
            //   ),
            // ),
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
                    height: MediaQuery.of(context).size.height * 0.8,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: MediaQuery.removePadding(
                      removeTop: false,
                      removeBottom: false,
                      context: context,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: w > 500 ? 2 : 1,
                                  crossAxisSpacing: 5.0,
                                  mainAxisSpacing: 5.0,
                                  childAspectRatio: 3.8 / 2),
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
        height: wd > 500
            ? MediaQuery.of(context).size.height * 0.3
            : MediaQuery.of(context).size.height * 0.28,
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
