import 'package:avso_test/dashboard/DashboardCard.dart';
import 'package:avso_test/fragment/SideDrawer.dart';
import 'package:avso_test/fragment/TopHeader.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:reorderables/reorderables.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Widget> _tiles;

  void initState() {
    super.initState();
    _tiles = <Widget>[
      DashboardCard(
        title: 'Yet to be Schduled',
        content: '25',
        isPowerBi: false,
      ),
      DashboardCard(
        title: 'En Route',
        content: '32',
        isPowerBi: false,
      ),
      DashboardCard(
        title: 'In Shop',
        content: '15',
        isPowerBi: false,
      ),
      DashboardCard(
        title: 'Shop Capacity',
        isPowerBi: true,
        viewType: 'powerbi-html',
      ),
      DashboardCard(
        title: 'Program Tracking',
        isPowerBi: true,
        viewType: 'powerbi2-html',
      ),
      // AddMetricsCard()
    ];
  }

  @override
  Widget build(BuildContext context) {
    void _onReorder(int oldIndex, int newIndex) {
      setState(() {
        Widget row = _tiles.removeAt(oldIndex);
        _tiles.insert(newIndex, row);
      });
    }

    var wrap = ReorderableWrap(
      reorderAnimationDuration: Duration(milliseconds: 100),
      needsLongPressDraggable: false,
      spacing: 50.0,
      runSpacing: 50.0,
      padding: const EdgeInsets.all(8),
      children: _tiles,
      onReorder: _onReorder,
      onNoReorder: (int index) {
        //this callback is optional
        // debugPrint(
        //     '${DateTime.now().toString().substring(5, 22)} reorder cancelled. index:$index');
      },
      onReorderStarted: (int index) {
        //this callback is optional
        // debugPrint(
        //     '${DateTime.now().toString().substring(5, 22)} reorder started: index:$index');
      },
    );

    var column = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        wrap,
      ],
    );

    return Scaffold(
      body: Row(children: [
        SideDrawer(),
        Expanded(
          flex: 1,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            TopHeader(),
            Expanded(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 40,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Good Afternoon, Admin',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff127CB6),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        child: Text(
                          'Edit Dashboard',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff3477DB),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: column,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}

class AddMetricsCard extends StatelessWidget {
  const AddMetricsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      child: DottedBorder(
        dashPattern: [8],
        color: Color(0xff1B7690),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: SizedBox(
            height: 160,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Add Metrics',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xff707070),
                      ),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff000000).withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      iconSize: 36,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Color(0xff1B7690),
                      icon: Icon(Icons.add),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
