import 'package:dartz/dartz.dart';
import 'package:quran_app/features/auth/data/data_source/firebaseauth.dart';
import 'package:quran_app/features/auth/domain/entity/user_entity.dart';
import 'package:quran_app/features/auth/domain/repositories/auth_repository.dart';

class AuthrepositoryImpl implements AuthRepository{
  final FirebaseAuthDataSource dataSource;

  AuthrepositoryImpl({required this.dataSource});

  @override
  Future<Either<String, UserEntity>> signIn(String email, String password) async {
    final user = await dataSource.signIn(email, password);
    return user != null ? Right(user) : Left("Kirishda xatolik yuz berdi");
  
  }

  @override
  Future<void> signOut() async {
    await dataSource.signOut();
  }

  @override
  Future<Either<String, UserEntity>> signUp(String email, String password) async {
     final user = await dataSource.signUp(email, password);
    return user != null ? Right(user) : Left("Ro'yxatdan o'tishda xatolik yuz berdi");
  
  }
}