part of 'netflix_bloc.dart';

@immutable
abstract class NetflixEvent {}
class FetchNetflix extends NetflixEvent {
  final String name;
  FetchNetflix({required this.name});
}

