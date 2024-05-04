import 'package:dio/dio.dart';

abstract class Failure{
  final String errorMessage ;
  Failure(this.errorMessage);
}

class ServerFailure extends Failure{
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError ){
    switch(dioError.type){

      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data
        );
      case DioExceptionType.cancel:
        return ServerFailure('Request was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with ApiServer');
      case DioExceptionType.unknown:
       if(dioError.message!.contains('Socket Exception')){
         return ServerFailure('No Internet Connection ');
       }else{
         return ServerFailure('Unexpected Error');
       }
      default : return ServerFailure('Opps there was an error');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response){
    if(statusCode == 400 ||statusCode == 401 || statusCode == 403){
      return ServerFailure(response['error']['message']);
    }else if(statusCode == 404 ){
      return ServerFailure('Your request not found  , Please try again ');
    }else if(statusCode == 500 ){
      return ServerFailure('Internal Server error , Please try again ');
    }else{
      return ServerFailure('Opps there was an error , Please try again ');
    }
  }
}