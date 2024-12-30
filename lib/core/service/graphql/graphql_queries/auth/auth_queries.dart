import 'package:store/features/auth/data/models/login_request_body.dart';

class AuthQueries {
  factory AuthQueries() => _instance;

  AuthQueries._();

  static final AuthQueries _instance = AuthQueries._();

  Map<String, dynamic> loginMapQuery({required LoginRequestBody login}) => {
        'query': r'''mutation login($email: String!, $password: String!) {
      login(email: $email, password: $password) {
         access_token,
         refresh_token
      }
    }''',
        'variables': {
          'email': login.email,
          'password': login.password,
        },
      };
}
