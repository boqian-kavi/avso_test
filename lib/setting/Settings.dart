import 'package:avso_test/fragment/SideBar.dart';
import 'package:avso_test/fragment/TopHeader.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TopHeader(),
                Expanded(
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    heightFactor: 1,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Settings',
                            style: TextStyle(
                              letterSpacing: 0.0,
                              fontSize: 40,
                              color: Color(0xff213F99),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xffBDBDBD),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                SettingList(
                                  option: 'Account',
                                  account: 'admin@test123.com',
                                  icon: Icons.account_circle_outlined,
                                ),
                                SettingList(
                                    option: 'Change Password',
                                    icon: Icons.lock_outlined),
                                SettingList(
                                  option: 'Notifications',
                                  icon: Icons.notifications_outlined,
                                ),
                                SettingList(
                                  option: 'Support',
                                  icon: Icons.help_outline,
                                ),
                                SettingList(
                                  option: 'About',
                                  icon: Icons.info_outline,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SettingList extends StatelessWidget {
  final String option;
  final String account;
  final IconData icon;
  const SettingList({
    @required this.option,
    this.account = '',
    @required this.icon,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Color(0xffF6F6F6),
        border: Border.all(
          width: 1,
          color: Color(0xffF6F6F6),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: account.length == 0
          ? InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        icon,
                        size: 30,
                      ),
                      SizedBox(width: 8),
                      Text(
                        option,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 30,
                  ),
                ],
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      icon,
                      size: 30,
                    ),
                    SizedBox(width: 8),
                    Text(
                      option,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Text(account,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    )),
              ],
            ),
    );
  }
}
