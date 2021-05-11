import 'package:flutter/material.dart';
import 'package:avso_test/widgets/custom_expansion_tile.dart' as custom;
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    Key key,
    @required Uri emailLaunchUri,
  })  : _emailLaunchUri = emailLaunchUri,
        super(key: key);

  final Uri _emailLaunchUri;

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      tileColor: Color(0xffF6F6F6),
      contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
      dense: true,
      child: custom.ExpansionTile(
        title: Container(
          child: Text(
            "Contact Information",
            style: TextStyle(
              fontSize: 22,
              color: Color(0xff213F99),
            ),
          ),
        ),
        children: [
          Container(
            padding: EdgeInsets.only(top: 32),
            child: DefaultTextStyle(
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff121212),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 200, bottom: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shop Address',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 7),
                        Text('939 Holland Road'),
                        Text('Marion, OH 43302')
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contact',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 7),
                        Text('Brandy Brynt'),
                        Row(
                          children: [
                            Icon(
                              Icons.phone,
                              size: 20,
                              color: Color(0xff127CB6),
                            ),
                            SizedBox(width: 5),
                            Text('730-224-9878'),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.email,
                              size: 20,
                              color: Color(0xff127CB6),
                            ),
                            SizedBox(width: 5),
                            InkWell(
                              child: Text(
                                'marion@utlx.com',
                                style: TextStyle(
                                    color: Color(0xff3477DB),
                                    decoration: TextDecoration.underline),
                              ),
                              onTap: () => launch(_emailLaunchUri.toString()),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
