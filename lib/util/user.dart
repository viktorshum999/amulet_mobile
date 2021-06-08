class User {
  String name;
  String surname;
  String patronymic;
  String phone;
  String password;
  int id;
  // bool isMale;
  // DateTime birthDate;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      surname: json['surname'],
      patronymic: json['patronymic'],
      phone: json['phone'],
      password: json['password'],
      id: json['id'],

      // isMale: json['isMale'],
      // birthDate: json['birthDate'],
    );
  }
  User({
    this.name,
    this.surname,
    this.patronymic,
    this.phone,
    this.password,
    this.id,
    // this.isMale,
    // this.birthDate
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'surname': surname,
        'patronymic': patronymic,
        'phone': phone,
        'password': password,
      };
}
