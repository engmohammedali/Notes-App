abstract class NotedState {}

class InitNotesState extends NotedState {}

class AddNotesInit extends NotedState {}

class AddNotesLoading extends NotedState {}

class AddNoteSucces extends NotedState {}

class AddNoteFailure extends NotedState {
  final String message;
  AddNoteFailure({required this.message});
}
