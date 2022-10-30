import 'package:shared_preferences/shared_preferences.dart';
class User{
  var _name;
  var _email;
  var _password;

  User.Empty();



  Map<String, dynamic> toJson() =>{
    'name': _name,
    'email': _email,
    'password': _password,
  };

  User.fromJson(Map<String, dynamic> json)
  : _name = json['name'],
        _email = json['email'],
        _password = json['password'];


  User(this._name, this._email, this._password);

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

