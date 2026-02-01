// ignore_for_file: public_member_api_docs, sort_constructors_first
// ! quiketype auto generet
// ? website. ==> https://app.quicktype.io/?l=dart
// ? extenstion ==>  dart data class generator : hzgood
// ? extenstion ==> Thunder Client : Thunder Client
import 'dart:convert';

class UserOnlineModel {
    final int id;
    final String name;
    final String username;
    final String email;
    final Address address;
    final String phone;
    final String website;
    final Company company;

    UserOnlineModel({
        required this.id,
        required this.name,
        required this.username,
        required this.email,
        required this.address,
        required this.phone,
        required this.website,
        required this.company,
    });

    UserOnlineModel copyWith({
        int? id,
        String? name,
        String? username,
        String? email,
        Address? address,
        String? phone,
        String? website,
        Company? company,
    }) => 
        UserOnlineModel(
            id: id ?? this.id,
            name: name ?? this.name,
            username: username ?? this.username,
            email: email ?? this.email,
            address: address ?? this.address,
            phone: phone ?? this.phone,
            website: website ?? this.website,
            company: company ?? this.company,
        );

    factory UserOnlineModel.fromRawJson(String str) => UserOnlineModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory UserOnlineModel.fromJson(Map<String, dynamic> json) => UserOnlineModel(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        address: Address.fromJson(json["address"]),
        phone: json["phone"],
        website: json["website"],
        company: Company.fromJson(json["company"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "address": address.toJson(),
        "phone": phone,
        "website": website,
        "company": company.toJson(),
    };

  @override
  String toString() {
    return 'UserOnlineModel(id: $id, name: $name, username: $username, email: $email, address: $address, phone: $phone, website: $website, company: $company)';
  }
}

class Address {
    final String street;
    final String suite;
    final String city;
    final String zipcode;
    final Geo geo;

    Address({
        required this.street,
        required this.suite,
        required this.city,
        required this.zipcode,
        required this.geo,
    });

    Address copyWith({
        String? street,
        String? suite,
        String? city,
        String? zipcode,
        Geo? geo,
    }) => 
        Address(
            street: street ?? this.street,
            suite: suite ?? this.suite,
            city: city ?? this.city,
            zipcode: zipcode ?? this.zipcode,
            geo: geo ?? this.geo,
        );

    factory Address.fromRawJson(String str) => Address.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"],
        suite: json["suite"],
        city: json["city"],
        zipcode: json["zipcode"],
        geo: Geo.fromJson(json["geo"]),
    );

    Map<String, dynamic> toJson() => {
        "street": street,
        "suite": suite,
        "city": city,
        "zipcode": zipcode,
        "geo": geo.toJson(),
    };
}

class Geo {
    final String lat;
    final String lng;

    Geo({
        required this.lat,
        required this.lng,
    });

    Geo copyWith({
        String? lat,
        String? lng,
    }) => 
        Geo(
            lat: lat ?? this.lat,
            lng: lng ?? this.lng,
        );

    factory Geo.fromRawJson(String str) => Geo.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Geo.fromJson(Map<String, dynamic> json) => Geo(
        lat: json["lat"],
        lng: json["lng"],
    );

    Map<String, dynamic> toJson() => {
        "lat": lat,
        "lng": lng,
    };
}

class Company {
    final String name;
    final String catchPhrase;
    final String bs;

    Company({
        required this.name,
        required this.catchPhrase,
        required this.bs,
    });

    Company copyWith({
        String? name,
        String? catchPhrase,
        String? bs,
    }) => 
        Company(
            name: name ?? this.name,
            catchPhrase: catchPhrase ?? this.catchPhrase,
            bs: bs ?? this.bs,
        );

    factory Company.fromRawJson(String str) => Company.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Company.fromJson(Map<String, dynamic> json) => Company(
        name: json["name"],
        catchPhrase: json["catchPhrase"],
        bs: json["bs"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "catchPhrase": catchPhrase,
        "bs": bs,
    };
}
