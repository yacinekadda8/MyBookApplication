import 'package:dio/dio.dart';

class Failures {
  final String errMsg;

  const Failures(this.errMsg);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMsg);
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            'Connection Timeout: The request took too long to establish a connection.');
      case DioExceptionType.sendTimeout:
        return ServerFailure(
            'Send Timeout: The request took too long to send.');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
            'Receive Timeout: The server took too long to respond.');
      case DioExceptionType.badCertificate:
        return ServerFailure('Caused by an incorrect certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Caused when the request is cancelled.');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error, Please try again.');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure("No internet connection!");
        }
        return ServerFailure(dioException.error.toString());
        default: return ServerFailure('Something went wrong, Please try later!');
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Not Found: The requested resource was not found.');
    } else if (statusCode == 500) {
      return ServerFailure(
          'Internal Server Error: Something went wrong on the server side.');
    } else if (statusCode == 503) {
      return ServerFailure(
          'The server is temporarily unavailable, possibly due to overload or maintenance.');
    } else {
      return ServerFailure('Something went wrong, Please try again.');
    }
  }
}
