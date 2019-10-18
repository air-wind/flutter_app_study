import 'package:flutter/material.dart';


class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _curentStep = 0;

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
            Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.black
              ),
              child: Stepper(
                currentStep: _curentStep,
                onStepTapped: (int index){
                  setState(() {
                    _curentStep = index;
                  });
                },
                onStepContinue: (){
                  setState(() {
                    _curentStep<2 ? _curentStep+=1 : _curentStep=0;
                  });
                },
                onStepCancel: (){
                  setState(() {
                    _curentStep>0 ? _curentStep-=1 : _curentStep=0;
                  });
                },
                  steps: [
                    Step(
                        title: Text("First"),
                        subtitle: Text("Go and Do it"),
                        content: Text("Do FirstDo FirstDo FirstDo FirstDo FirstDo FirstDo FirstDo FirstDo FirstDo FirstDo FirstDo FirstDo First"),
                        isActive: true
                    ),
                    Step(
                        title: Text("Second"),
                        subtitle: Text("Go and Do it"),
                        content: Text("Do Second"),
                        isActive: true
                    ),
                    Step(
                        title: Text("Third"),
                        subtitle: Text("Go and Do it"),
                        content: Text("Do Third"),
                        isActive: true
                    ),
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
