import 'package:flutter/material.dart';

class ExpansionPanelItem{
  String headerText;
  Widget body;
  bool isExpanded;

  ExpansionPanelItem({
    this.headerText,
    this.body,
    this.isExpanded
});
}


class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
//  bool _isExpanded = false;
  List<ExpansionPanelItem> _expansionPanelItems;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _expansionPanelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
        headerText: "Panel A",
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Text("Content for Panel A"),
        ),
        isExpanded: false
      ),
      ExpansionPanelItem(
            headerText: "Panel B",
          body: Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Text("Content for Panel B"),
          ),
          isExpanded: false
      ),
      ExpansionPanelItem(
          headerText: "Panel C",
          body: Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Text("Content for Panel C"),
          ),
          isExpanded: false
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionPanel"),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16),
              child: ExpansionPanelList(
                expansionCallback: (int panelIndex, bool isExtended){
                  setState(() {
                    _expansionPanelItems[panelIndex].isExpanded = !isExtended;
                  });
                },
                children:
                _expansionPanelItems.map(
                  (ExpansionPanelItem item){
                    return ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded){
                      return Container(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          item.headerText,
                          style: Theme.of(context).textTheme.title,
                        ),
                      );
                    },
                        body: item.body,
                      isExpanded: item.isExpanded
                    );
                  }
                ).toList()
              ),
            )

          ],
        ),
      ),
    );
  }
}
