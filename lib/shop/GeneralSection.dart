import 'package:flutter/material.dart';

class GeneralSection extends StatelessWidget {
  const GeneralSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      padding: EdgeInsets.only(top: 32),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Wrap(
              children: [
                GeneralSectionItem(title: 'Station Stencil', subTitle: 'UTCO'),
                GeneralSectionItem(title: 'DDCT ID', subTitle: 'UTCX'),
                GeneralSectionItem(
                    title: 'SLPC Code (Station)', subTitle: 'UTCX'),
                GeneralSectionItem(title: 'SLPC Code', subTitle: '739590000'),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GeneralSectionItem(
                title: 'Class One Railroad(1)', subTitle: 'CSX'),
          ),
        ],
      ),
    );
  }
}

class GeneralSectionItem extends StatelessWidget {
  final String title;
  final String subTitle;

  GeneralSectionItem({
    this.title,
    this.subTitle,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 72, bottom: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xff127CB6),
              fontSize: 22,
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
