const String baseUrl = 'http://localhost:8080';

abstract class Endpoints {
  static const String signin = '$baseUrl/login';
  static const String signup = '$baseUrl/register-person/save';
}
