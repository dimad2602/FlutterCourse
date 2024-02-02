class PersonModel {
  String firstName;
  String lastName;
  int age;

  static const JSON_FIRST_NAME = 'firstName';
  static const JSON_LAST_NAME = 'lastName';
  static const JSON_AGE = 'age';

  PersonModel(
      {required this.firstName, required this.lastName, required this.age});

  factory PersonModel.fromJson(Map<String, dynamic> json) {
    return PersonModel(
      firstName: json[JSON_FIRST_NAME],
      lastName: json[JSON_LAST_NAME],
      age: json[JSON_AGE],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data[JSON_FIRST_NAME] = firstName;
    data[JSON_LAST_NAME] = lastName;
    data[JSON_AGE] = age;
    return data;
  }
}
