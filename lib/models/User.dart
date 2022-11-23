import 'package:shared_preferences/shared_preferences.dart';
class User{
  var _uid;
  var _name;
  var _email;
  var _password;

  User.Empty();



  Map<String, dynamic> toJson() =>{
    'uid': _uid,
    'name': _name,
    'email': _email,
    'password': _password,
  };

  get uid => _uid;

  set uid(value) {
    _uid = value;
  }

  User.fromJson(Map<String, dynamic> json)
  :     _uid = json['uid'],
        _name = json['name'],
        _email = json['email'],
        _password = json['password'];


  User(this._uid, this._name, this._email, this._password);

  get name => _name;

  set name(value) {
    _name = value;
  }

  get email => _email;

  get password => _password;

  set password(value) {
    _password = value;
  }

  set email(value) {
    _email = value;
  }
}

