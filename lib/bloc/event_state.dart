// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'event_bloc.dart';

class EventState extends Equatable {
  const EventState({
    this.eventData = Event.empty,
  });

  final Event eventData;

  @override
  List<Object> get props => [eventData];

  EventState copyWith({
    Event? eventData,
  }) {
    return EventState(
      eventData: eventData ?? this.eventData,
    );
  }

  @override
  bool get stringify => true;
}
