import 'dart:convert';

class UserModel {
  final String uid;
  final String email;
  final String? userName;
  UserModel({
    required this.uid,
    required this.email,
    this.userName,
  });

  UserModel copyWith({
    String? uid,
    String? email,
    String? userName,
  }) {
    return UserModel(
      uid: uid ?? this.uid,
      email: email ?? this.email,
      userName: userName ?? this.userName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'userName': userName,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] ?? '',
      email: map['email'] ?? '',
      userName: map['userName'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  @override
  String toString() => 'UserModel(uid: $uid, email: $email, userName: $userName)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel && other.uid == uid && other.email == email && other.userName == userName;
  }

  @override
  int get hashCode => uid.hashCode ^ email.hashCode ^ userName.hashCode;
}
