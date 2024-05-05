import 'package:booko/features/home/data/repos/home_repo.dart';
import 'package:booko/features/home/presentation/manager/featured_books/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates>{
  FeaturedBooksCubit(this.homeRepo):super(FeaturedBooksInitial());
  final HomeRepo homeRepo ;

  Future<void> fetchFeaturedBooks()async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errorMessage));
    }, (books){
      emit(FeaturedBooksSuccess(books));
    }
    );
  }
}