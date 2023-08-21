class  LoginInModel{
  final String message;
  final String token;

  LoginInModel({required this.message, required this.token});
  factory LoginInModel.fromJson(Map<String,dynamic> jsonDataLogin){
    return LoginInModel(
      message:jsonDataLogin["message"],
      token: jsonDataLogin["token"],
    );
  }
}