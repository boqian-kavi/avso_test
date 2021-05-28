import 'package:avso_test/redux/actions.dart';
import 'package:avso_test/redux/app_state.dart';
import 'package:avso_test/widgets/auth0_flutter_web/auth0_flutter_web.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class Login extends StatefulWidget {
  final Auth0 auth0;
  const Login(this.auth0);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(bottom: 80),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/login_background.jpg"),
                ),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  child: Text(
                    'Login with Auth0',
                    style: TextStyle(
                      fontSize: 28,
                      color: Color(0xff213F99),
                    ),
                  ),
                  onPressed: () async {
                    print('click');
                    // await widget.auth0.loginWithPopup();
                    // _onAuthenticationChanged(
                    //     await widget.auth0.isAuthenticated());
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 40,
                    ),
                    minimumSize: Size(140, 46),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  // void _onAuthenticationChanged(bool isAuthenticated) {
  //   if (isAuthenticated) {
  //     widget.auth0.getUser().then(
  //           (Map<String, dynamic> user) => {
  //             StoreProvider.of<AppState>(context).dispatch(UpdateUser(user)),
  //             setState(() {
  //               Navigator.of(context).pushNamed('/');
  //             })
  //           },
  //         );
  //   }
  // }
}
