import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;

  const Failures(this.errorMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeOut with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeOut with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recieve timeOut with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate error');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was cancled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection Error');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Unknown error , please try again!');
      default:
        return ServerFailure('Opps There was an error , please try later!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found , please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error , please try later!');
    } else {
      return ServerFailure('Opps There was an error , please try later!');
    }
  }
}
