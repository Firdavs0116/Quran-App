import 'package:dartz/dartz.dart';
import 'package:quran_app/features/auth/domain/entity/user_entity.dart';


abstract class AuthRepository {
  Future<Either<String, UserEntity>> signUp(String email, String password);
  Future<Either<String, UserEntity>> signIn(String email, String password);
  Future<void> signOut();
}