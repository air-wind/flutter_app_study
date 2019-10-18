import 'package:flutter/material.dart';

class SliderDmeo extends StatefulWidget {
  @override
  _SliderDmeoState createState() => _SliderDmeoState();
}

class _SliderDmeoState extends State<SliderDmeo> {
  double _sliderItemA = 2.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Slider(
                  value: _sliderItemA,
                  onChanged: (value){
                    setState(() {
                      _sliderItemA = value;
                    });
                  },
                  activeColor: Colors.amberAccent,
                  inactiveColor: Colors.amber,
                  max: 4,
                  min: 0,
                  divisions: 4,
                  label: "${_sliderItemA.toInt()}",
                ),

              ],
            ),
            SizedBox(height: 20,),
            Text("$_sliderItemA")
          ],
        ),
      ),
    );
  }
}
