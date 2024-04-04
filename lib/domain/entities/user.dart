class User {
  final String name;
  final String lastname;
  final String email;
  final String contact;
  final String password;
  final String ref;

  User({
    this.name = '',
    this.lastname = '',
    required this.email,
    this.contact = '',
    required this.password,
    this.ref = '',
  });
}
