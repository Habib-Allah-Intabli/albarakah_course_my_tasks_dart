// ignore_for_file: public_member_api_docs, sort_constructors_first


// ? To Review Depenecy Injection and Complex json serlize
class GeoModel {
  String lat;
  String lng;
  GeoModel({required this.lat, required this.lng});

  static GeoModel fromMap(Map<String, dynamic> map) {
    return GeoModel(lat: map['lat'], lng: map['lng']);
  }

  @override
  String toString() => 'GeoModel(lat: $lat, lng: $lng)';
}

class AddressModel {
  String street;
  String suite;
  String city;
  String zipcode;
  GeoModel geo;
  AddressModel({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  static AddressModel fromMap(Map<String, dynamic> map) {
    return AddressModel(
      street: map['street'],
      suite: map['suite'],
      city: map['city'],
      zipcode: map['zipcode'],
      geo: GeoModel.fromMap(map['geo']),
    );
  }
  // toMap(){

  // }

  @override
  String toString() {
    return 'AddressModel(street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo)';
  }
}

class UserModel {
  num id;
  String name;
  String username;
  String email;
  AddressModel address;
  String phone;
  String website;
  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
  });

  static UserModel fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      name: map['name'],
      username: map['username'],
      email: map['email'],
      address: AddressModel.fromMap(map['address']) ,
      phone: map['phone'],
      website: map['website'],
    );
  }

  // toMap(){
  //   return {
  //     "address":address.toMap()
  //   };
  // }

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, username: $username, email: $email, address: $address, phone: $phone, website: $website)';
  }
}
