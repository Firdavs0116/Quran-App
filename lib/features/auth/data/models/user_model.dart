
import 'package:quran_app/features/auth/domain/entity/user_entity.dart';

class UserModel extends UserEntity{
  UserModel({required super.id, required super.email,});

  factory UserModel.fromFirebase(Map<String, dynamic> data){
    return UserModel(id: data['id'], email: data['email']);
  }

}