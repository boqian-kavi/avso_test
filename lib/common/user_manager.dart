import 'global.dart';

class UserManager {
  String _userObjStr;
  static String get userObjStr {
    return UserManager._getInstance._userObjStr;
  }

  static void saveUser(String userObjStr) {
    UserManager._getInstance._saveUser(userObjStr);
  }

  static UserManager _instance;
  static UserManager get _getInstance {
    if (_instance == null) {
      _instance = UserManager();
      _instance.loadUserFromLocal();
    }
    return _instance;
  }

  void _saveUser(String userObjStr) async {
    _userObjStr = userObjStr;
    if (userObjStr != null) {
      preferences.setString('userObjStr', userObjStr);
    }
  }

  loadUserFromLocal() {
    if (userObjStr != null) {
      _userObjStr = preferences.getString('userObjStr');
    }
  }
}
