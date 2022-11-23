import 'package:shared_preferences/shared_preferences.dart';

class Site{
  var _id;
  var _name;
  var _description;
  var _rating;

  get id => _id;

  set id(value) {
    _id = value;
  } //Site.Empty();



  Site(this._id, this._name, this._description, this._rating);

  Map<String, dynamic> toJson() =>{
    'id': _id,
    'name': _name,
    'description': _description,
    'rating': _rating,
  };




  Site.fromJson(Map<String, dynamic> json)
      :     _id = json['id'],
        _name = json['name'],
        _description = json['description'],
        _rating = json['rating'];

  get name => _name;

  set name(value) {
    _name = value;
  }

  get description => _description;

  set description(value) {
    _description = value;
  }

  get rating => _rating;

  set rating(value) {
    _rating = value;
  }
}