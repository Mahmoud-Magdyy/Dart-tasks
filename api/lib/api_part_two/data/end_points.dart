class EndPoints{
  static const String baseUrl = 'https://food-api-omega.vercel.app/api/v1/';
  static const String chefSignIn = 'chef/signin';
  static const String chefChangePassword = 'chef/change-password';
  static const String chefDelete = 'chef/delete';
  static const String chefGet = 'chef/get-chef/';
  static const String chefSendCode = 'chef/send-code';
  static const String chefForgetPassword = 'chef/change-forgotten-password';
  
  static String getChefDataEndPoints(id){
    return '$chefGet$id';

  }

}