part of 'search_bloc.dart';

sealed class SearchEvent extends Equatable {
  const SearchEvent();
}
final class SearchPlayerEvent extends SearchEvent{
  final String playerName;
  const SearchPlayerEvent({required this.playerName});

  @override
  List<Object?> get props => [];

}
