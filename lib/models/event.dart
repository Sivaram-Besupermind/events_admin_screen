import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    @Default(0) int eventId,
    @Default('') String listingStartDate,
    @Default('') String endDate,
    @Default('') String title,
    @Default('') String eventLevel,
    @Default('') String eventLanguage,
    @Default('') String days,
    @Default('') String weeks,
    @Default('') String eventDelivery,
    @Default('') String courseFrequency,
    @Default('') String courseRepeatsEvery,
    @Default([]) List<String> cophortRepeatsOn,
    @Default('') String repeatsOn,
    @Default('') String andMonth,
    @Default('') String every,
    @Default('') String venueName,
    @Default('') String meetingRoomNo,
    @Default('') String name,
    @Default('') String country,
    @Default('') String address1,
    @Default('') String address2,
    @Default('') String city,
    @Default('') String state,
    @Default('') String postalCode,
    @Default('') String liveProvider,
    @Default('') String accountName,
    @Default('') String providerRegistrationRequired,
    @Default('') String liveMeetingId,
    @Default('') String password,
    @Default('') String pricingCategory,
    @Default('') String currency,
    @Default('') String listPrice,
    @Default('') String eventProviderName,
    @Default('') String providerDescription,
    @Default('') String speakerName,
    @Default('') String speakerProfile,
    @Default('') String tagline,
    @Default('') String briefDescription,
    @Default('') String fullDescription,
    @Default('') String features,
    @Default('') String structureDescription,
    @Default('') String benefits,
    @Default('') String addPreRequisites,
    @Default('') String listOfPreRequisites,
    @Default('') String attendance,
    @Default('') String quizCompletion,
    @Default('') String quizGrading,
    @Default('') String assessmentCompletion,
    @Default('') String assessmentGrading,
    @Default('') String sessionId,
    @Default('') String sessionDate,
    @Default('') String startTime,
    @Default('') String endTime,
    @Default('') String sessionTitle,
    @Default('') String sessionDescription,
    @Default('') String sessionVenueNumber,
    @Default('') String sessionInfoVenueName,
    @Default('') String sessionSpeakers,
    @Default('') String sessionInfoSpeakerProfile,
    @Default('') String speakerImage,
    @Default('') String sessionInfoLiveProvider,
    @Default('') String registrationRequired,
    @Default('') String sessionInfoAccountName,
    @Default('') String meetingId,
    @Default('') String sessionInfoPassword,
    @Default('') String sessionInfoTitle,
    @Default('') String description,
    @Default('') String contentType,
    @Default('') String contentLink,
    @Default('') String contentTags,





  }) = _Event;

  const Event._();

  factory Event.fromJson(Map<String, Object?> json) => _$EventFromJson(json);

  static const empty = Event();
  bool get isEmpty => this == empty;
  bool get isNotEmpty => this != empty;
}
