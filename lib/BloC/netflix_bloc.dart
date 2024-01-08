import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:netflix/Repository/Api/Netflix_Api.dart';

import '../Repository/Model_Class/NetflixModel.dart';

part 'netflix_event.dart';

part 'netflix_state.dart';

class NetflixBloc extends Bloc<NetflixEvent, NetflixState> {
  NetflixApi netflixApi = NetflixApi();
  late NetflixModel netflixModel;

  NetflixBloc() : super(NetflixInitial()) {
    on<FetchNetflix>((event, emit) async {
      emit(NetflixBlocLoading());
      try {
        netflixModel = await netflixApi.getNetflix(name: event.name);
        emit(NetflixBlocLoaded());
      }
      catch(e){
        print(e);
        emit(NetflixBlocError());
      }
    });
  }
}
