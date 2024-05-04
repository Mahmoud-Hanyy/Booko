import 'package:booko/core/errors/failures.dart';
import 'package:booko/core/utils/api_service.dart';
import 'package:booko/features/home/data/models/book_model/book_model.dart';
import 'package:booko/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo{
  final ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async{
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest');
      List<BookModel> books = [];
      for( var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e){
      if(e is DioException){
        return left(ServerFailure.fromDioError(e));
      }else{
        return left(ServerFailure(e.toString()));
      }
      }
    }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks()async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=programming');
      List<BookModel> books = [];
      for( var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e){
      if(e is DioException){
        return left(ServerFailure.fromDioError(e));
      }else{
        return left(ServerFailure(e.toString()));
      }
    }
  }

}