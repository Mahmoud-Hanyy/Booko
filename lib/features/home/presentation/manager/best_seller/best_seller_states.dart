import 'package:booko/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class BestSellerStates extends Equatable{
  @override
  List<Object?> get props => throw UnimplementedError();

  const BestSellerStates();
}

class BestSellerStatesInitial extends BestSellerStates{}

class BestSellerStatesLoading extends BestSellerStates{}

class BestSellerStatesSuccess extends BestSellerStates{
  final List<BookModel> books ;

  const BestSellerStatesSuccess(this.books);
}

class BestSellerStatesFailure extends BestSellerStates{
  final String errMessage ;

  const BestSellerStatesFailure(this.errMessage);
}