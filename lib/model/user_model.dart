class UserModel{
  String? uid;
  String? name;
  String? email;
  UserModel({this.uid,this.name,this.email});
  //retrieving data
  factory UserModel.fromMap(map)
  {
    return UserModel(
      uid:map['uid'],
      name:map['name'],
      email:map['email'],
    );
  }
  //send data to server
Map<String,dynamic> toMap(){
    return{
      'uid':uid,
      'name':name,
      'email':email,
    };
}
}