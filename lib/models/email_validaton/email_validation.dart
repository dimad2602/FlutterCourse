import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_validation.freezed.dart';

@freezed
class EmailValidation with _$EmailValidation {
  const factory EmailValidation.success() = _Success;
  const factory EmailValidation.emptyString() = _EmptyString;
  const factory EmailValidation.invalidEmail() = _InvalidEmail;
  const factory EmailValidation.emailExists() = _EmailExists;
}

void main(){
  final email = EmailValidation.emailExists();

  email.map(
    success: (value) {
      print('Email is valid');
    },
    emptyString: (value) {
      print('Email is empty');
    },
    invalidEmail: (value) {
      print('Email is invalid');
    },
    emailExists: (value) {
      print('Email already exists');
    },
  );
}