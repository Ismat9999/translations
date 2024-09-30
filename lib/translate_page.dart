import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TranslatePage extends StatefulWidget {
  const TranslatePage({super.key});

  @override
  State<TranslatePage> createState() => _TranslatePageState();
}

class _TranslatePageState extends State<TranslatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Translation"),
      ),
      body:Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: Center(
              child: Text("welcome".tr(),style: TextStyle(fontSize: 30),),
            ),
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    height: 45,
                      color: Colors.green,
                      textColor: Colors.white,
                      onPressed: (){
                        context.setLocale(Locale('en', 'US'));
                      },
                    child: Text("English",)
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: MaterialButton(
                    height: 45,
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: (){
                      context.setLocale(Locale('ko', 'KR'));
                    },
                    child: Text("Korean"),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: MaterialButton(
                    height: 45,
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: (){
                      context.setLocale(Locale('ja', 'JP'));
                    },
                    child: Text("Japanes"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
