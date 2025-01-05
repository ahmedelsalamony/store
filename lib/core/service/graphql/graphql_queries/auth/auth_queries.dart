import 'package:store/features/auth/data/models/login_request_body.dart';
import 'package:store/features/auth/data/models/signup_request_body.dart';
import 'package:store/features/auth/presentation/widgets/singup_body.dart';

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

  Map<String, dynamic> signupMapQuery(
          {required SignupRequestBody signupBody}) =>
      {
        'query':
            r'''mutation Signup($name: String!,$email: String!, $password: String!,$avatar: String!) {
      addUser(
      data: {
        name: $name,
        email: $email,
        password: $password,
        avatar: $avatar,
        role: customer
      }
      ){
      id
      email
      }
    }''',
        'variables': {
          'name': signupBody.name,
          'email': signupBody.email,
          'password': signupBody.password,
          'avatar': signupBody.avatar
        },
      };
}
