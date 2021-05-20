import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text('welcome', style: TextStyle(fontSize: 20),).tr(),
              ),
            ),

            Container(
              height: 45,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      height: 45,
                      color: Colors.green,
                      child: Text('English', style: TextStyle(fontSize: 13),),
                      onPressed: () {
                        context.locale = Locale('en', 'US');
                      },
                    ),
                  ),

                  SizedBox(width: 5,),

                  Expanded(
                    child: FlatButton(
                      height: 45,
                      color: Colors.red,
                      child: Text('Russian', style: TextStyle(fontSize: 13),),
                      onPressed: () {
                        context.locale = Locale('ru', 'RU');
                      },
                    ),
                  ),

                  SizedBox(width: 5,),

                  Expanded(
                    child: FlatButton(
                      height: 45,
                      color: Colors.blue,
                      child: Text('Uzbek', style: TextStyle(fontSize: 13),),
                      onPressed: () {
                        context.locale = Locale('uz', 'UZ');
                      },
                    ),
                  ),

                  SizedBox(width: 5,),

                  Expanded(
                    child: FlatButton(
                      height: 45,
                      color: Colors.orange,
                      child: Text('French', style: TextStyle(fontSize: 13),),
                      onPressed: () {
                        context.locale = Locale('fr', 'FR');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
