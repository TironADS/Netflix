part of 'netflix_bloc.dart';

@immutable
abstract class NetflixState {}

class NetflixInitial extends NetflixState {}
class NetflixBlocLoading extends  NetflixState {}
class NetflixBlocLoaded extends NetflixState{}
class NetflixBlocError extends NetflixState{}
