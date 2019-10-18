import 'package:flutter/material.dart';
import 'package:flutter_app/demo/radio_demo.dart';
import 'buttondemo.dart';
import 'floating_button_demo.dart';
import 'popub_menu_button.dart';
import 'form_demo.dart';
import 'check_box_demo.dart';
import 'switch_demo.dart';
import 'slider_demo.dart';
import 'datetime_dmeo.dart';
import 'simple_dialog.dart';
import 'alter_dialog.dart';
import 'bottom_sheet.dart';
import 'snack_bar.dart';
import 'expansion_panel.dart';
import 'chip_demo.dart';
import 'date_table.dart';
import 'paginated_data_table.dart';

class MaterialCompontent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello".toUpperCase()),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: "PaginatedDateTable", page: PaginatedDateTableDemo(),),
          ListItem(title: "DateTable", page: DateTableDemo(),),
          ListItem(title: "Chip", page: ChipDemo(),),
          ListItem(title: "ExpansionPanel", page: ExpansionPanelDemo(),),
          ListItem(title: "SnackBar", page: SnackBarDemo(),),
          ListItem(title: "BottomSheet", page: BottomSheetDemo(),),
          ListItem(title: "AlertDialog", page: AlertDialogDemo(),),
          ListItem(title: "SimpleDialog", page: SimpleDialogDemo(),),
          ListItem(title: "DateTime", page: DateTimeDemo(),),
          ListItem(title: "Slider", page: SliderDmeo(),),
          ListItem(title: "Switch", page: SwitchDemo(),),
          ListItem(title: "Radio", page: RadioDemo(),),
          ListItem(title: "ChexBox", page: CheckBoxDemo(),),
          ListItem(title: "Form", page: FormDmeo(),),
          ListItem(title: "PopubMenuButton", page: PopupMenuButtonDemo(),),
          ListItem(title: " BUTTON", page: ButtonDemo(),),
          ListItem(title: "FloatingActionButton", page: FloatingActionButtonDemo(),)
        ],
      ),
    );
  }
}

class  Demo extends StatelessWidget {
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

              ],
            )
          ],
        ),
      ),
    );
  }
}



class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => page
          ),
        );
      },
    );
  }
}