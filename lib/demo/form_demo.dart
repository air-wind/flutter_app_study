import 'package:flutter/material.dart';

class FormDmeo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("register".toUpperCase()),
      ),
      body: Theme(
          data: Theme.of(context).copyWith(
              primaryColor: Colors.black,
          ),
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FormDemo(),
              ],
            ),
          )),
    );
  }
}

class FormDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FormDemoState();
  }
}

class FormDemoState extends State<FormDemo> {
  final registerFormkey = GlobalKey<FormState>();
  String username, password;
  bool autovalidate = false;

  void submitRegisterForm(){
    if (registerFormkey.currentState.validate()){
      registerFormkey.currentState.save();
      debugPrint("username: $username");
      debugPrint("password: $password");

      Scaffold.of(context).showSnackBar(
        SnackBar(content: Text("registing...."))
      );
    }else{
      setState(() {
        autovalidate = true;
      });
    }
  }

  String validatorUsername(value){
    if (value.isEmpty){
      return "can not empty";
    }
    return null;
  }

  String validatorPassword(value){
    if (value.isEmpty){
      return "can not empty";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: registerFormkey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: "username",
              helperText: ""
            ),
            onSaved: (value){
              username = value;
            },
            validator: validatorUsername,
            autovalidate: autovalidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "password",
              helperText: ""
            ),
            onSaved: (value){
              password = value;
            },
            validator: validatorPassword,
            autovalidate: autovalidate,
          ),
          SizedBox(height: 30,),
          Container(
            width: double.infinity,
            child: RaisedButton(
                color: Colors.blue,
                elevation: 0,
                child: Text(
                  "submit",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: (){
                  submitRegisterForm();
                },

            ),
          )
        ],
      ),
    );
  }
}

class TextFiledDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TextFiledDemoState();
  }
}

class TextFiledDemoState extends State<TextFiledDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.addListener(() {
      debugPrint(textEditingController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(
      controller: textEditingController,
//                  onChanged: (value){
//                    debugPrint(value);
//                  },
//                  onFieldSubmitted: (value){
//                    debugPrint(value);
//                  },
      decoration: InputDecoration(
        icon: Icon(Icons.description),
        labelText: "impact",
        hintText: "please input",
//                    border: InputBorder.none,
//                    border: OutlineInputBorder()
        filled: true,
//                    fillColor: Colors.black12
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container();
  }
}
