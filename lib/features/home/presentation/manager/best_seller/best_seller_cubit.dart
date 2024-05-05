import 'package:booko/features/home/data/repos/home_repo.dart';
import 'package:booko/features/home/presentation/manager/best_seller/best_seller_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerCubit extends Cubit<BestSellerStates>{
  BestSellerCubit(this.homeRepo):super(BestSellerStatesInitial());

  final HomeRepo homeRepo ;

  Future<void> fetchBestSeller()async {
    emit(BestSellerStatesLoading());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold((failure) {
      emit(BestSellerStatesFailure(failure.errorMessage));
    }, (books){
      emit(BestSellerStatesSuccess(books));
    }
    );
  }
}