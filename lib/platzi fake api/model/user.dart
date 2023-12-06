class User{

  String? name;
  String? email;
  String? pass;
  String? avatar;

  String? id;
  String? role;
  String? createdat;


  User.withid({this.name, this.email, this.pass, this.avatar, this.id, this.role,
    this.createdat});



  User({this.name, this.email, this.pass, this.avatar});


  factory User.fromMap(Map<String, dynamic> map) {
    return User.withid(
      name: map['name'] as String,
      email: map['email'] as String,
      pass: map['pass'] as String,
      avatar: map['avatar'] as String,
      id: map['id'] as String,
      role: map['role'] as String,
      createdat: map['creationAt'] as String,
    );
  }

Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'email': this.email,
      'password': this.pass,
      'avatar': this.avatar,
    };
  }



}