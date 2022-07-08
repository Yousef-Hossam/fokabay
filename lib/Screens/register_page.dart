import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  static const String route = '/register';

  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color(0xff71B3E3),
        toolbarHeight: 90,
        shadowColor: Color(0xff71B3E3).withOpacity(0.6),
        bottomOpacity: 5,
        centerTitle: true,
        title: Image.asset(
          'images/foka_bay.png',
          width: 200,
          height: 60,
          fit: BoxFit.contain,
        ),
        key:_formKey,

        //  title: Text('fffff'),
      ),
      key:,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  w > 800
                      ? 'images/desktop_register.png'
                      : 'images/mobile_register.png',
                ),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.24,
                vertical: 8.0),
            child: Container(
              child: cardRegister(),
            ),
          ),
        ),
      ),
    );
  }

  Widget cardRegister() {
    double wd = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Container(
          //  width: MediaQuery.of(context).size.width * 0.5,
          //    height: MediaQuery.of(context).size.height * 0.5,
          child: Card(
            color: Colors.white,
            elevation: 1,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Register now!',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Quick and easy.',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  Divider(
                    height: 10,
                    thickness: 2,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    //   color: Colors.black12,
                    child: TextFormField(
                      autocorrect: true,
                      keyboardType:TextInputType.name,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black12,
                        border: OutlineInputBorder(),
                        hintText: 'Name',
                        hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black45,
                            fontWeight: FontWeight.bold),
                      ),
                      validator:(value){
                        if(value!.isEmpty||value.length<1){
                          return 'please enter vaild name' ;

                        }else return null ;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    //   color: Colors.black12,
                    child: TextFormField(
                      autocorrect: true,
                      keyboardType:TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black12,
                        border: OutlineInputBorder(),
                        hintText: 'Email',
                        hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black45,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    //   color: Colors.black12,
                    child: TextFormField(
                      autocorrect: true,
                      keyboardType:TextInputType.phone,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black12,
                        border: OutlineInputBorder(),
                        hintText: 'Phone number',
                        hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black45,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          width: wd * 0.22,
                          //   color: Colors.black12,
                          child: TextFormField(
                            autocorrect: true,
                            keyboardType:TextInputType.text,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.black12,
                              border: OutlineInputBorder(),
                              hintText: 'Unit number',
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black45,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          //   color: Colors.black12,
                          width: wd * 0.21,
                          child: TextField(
                            autocorrect: true,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.black12,
                              border: OutlineInputBorder(),
                              hintText: 'No. of attendees',
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black45,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
