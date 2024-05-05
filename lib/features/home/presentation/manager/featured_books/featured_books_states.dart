import 'package:booko/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class FeaturedBooksStates extends Equatable{
  @override
  List<Object?> get props => throw UnimplementedError();

  const FeaturedBooksStates();
}

class FeaturedBooksInitial extends FeaturedBooksStates{}

class FeaturedBooksLoading extends FeaturedBooksStates{}

class FeaturedBooksSuccess extends FeaturedBooksStates{
  final List<BookModel>books ;

  const FeaturedBooksSuccess(this.books);
}

class FeaturedBooksFailure extends FeaturedBooksStates{
  final String errMessage ;

  const FeaturedBooksFailure(this.errMessage);
}