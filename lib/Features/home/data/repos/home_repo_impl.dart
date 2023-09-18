import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mybook/Core/errors/failures.dart';
import 'package:mybook/Core/utils/api_service.dart';
import 'package:mybook/Features/home/data/models/book_model/book_model.dart';
import 'package:mybook/Features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.getBooks(
          endPoint: 'volumes?Filtering=free-ebooks&q=arabic');
      List<BookModel> bookList = [];
      for (var item in data['items']) {
        bookList.add(BookModel.fromJson(item));
      }
      return right(bookList);
    } catch (err) {
      if (err is DioException) {
        return left(ServerFailure.fromDioException(err));
      }
      return left(ServerFailure(err.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.getBooks(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:a');
      List<BookModel> bookList = [];
      for (var item in data['items']) {
        bookList.add(BookModel.fromJson(item));
      }
      return right(bookList);
    } catch (err) {
      if (err is DioException) {
        return left(ServerFailure.fromDioException(err));
      }
      return left(ServerFailure(err.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchSimilarBooks(
      {required String categorey}) async {
    try {
      var data = await apiService.getBooks(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:w');
      List<BookModel> bookList = [];
      for (var item in data['items']) {
        bookList.add(BookModel.fromJson(item));
      }
      return right(bookList);
    } catch (err) {
      if (err is DioException) {
        return left(ServerFailure.fromDioException(err));
      }
      return left(ServerFailure(err.toString()));
    }
  }
}
