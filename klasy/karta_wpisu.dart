import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class karta extends StatefulWidget {
  @override
  _kartaState createState() => _kartaState();
}

class _kartaState extends State<karta> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.grey,width: 1.5,),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
      child:SizedBox(
        height: 450.0,
        width: 375.0,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.white,),
        child: Container(
        child:Column(
          children: <Widget>[
            Text('Testowy Tekst', style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
            ),
            Center(
              child:SizedBox(
                height: 400,
                width: 350,
                child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.grey,width: 1.5,
                    ),),
                  child:ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child:Image.network('https://images.unsplash.com/photo-1597053448029-d4b6571d78ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80',
                  fit: BoxFit.cover,

                  ),
                  ),
                ),
                ),
            )
          ],
        )
      ),
        ),
    ),
      ),
    );
  }
}
