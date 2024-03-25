import 'package:equatable/equatable.dart';

abstract class EventBlocEvent extends Equatable {
  const EventBlocEvent();
}

class EventIdChanged extends EventBlocEvent {
  const EventIdChanged(this.eventId);

  final int eventId;

  @override
  List<Object> get props => [eventId];
}

class ListingStartDateChanged extends EventBlocEvent {
  const ListingStartDateChanged(this.listingStartDate);

  final String listingStartDate;

  @override
  List<Object> get props => [listingStartDate];
}

class EndDateChanged extends EventBlocEvent {
  const EndDateChanged(this.endDate);

  final String endDate;

  @override
  List<Object> get props => [endDate];
}

class TitleChanged extends EventBlocEvent {
  const TitleChanged(this.title);

  final String title;

  @override
  List<Object> get props => [title];
}

class EventLevelChanged extends EventBlocEvent {
  const EventLevelChanged(this.eventLevel);

  final String eventLevel;

  @override
  List<Object> get props => [eventLevel];
}

class EventLanguageChanged extends EventBlocEvent {
  const EventLanguageChanged(this.eventLanguage);

  final String eventLanguage;

  @override
  List<Object> get props => [eventLanguage];
}

class DaysChanged extends EventBlocEvent {
  const DaysChanged(this.days);

  final String days;

  @override
  List<Object> get props => [days];
}

class WeeksChanged extends EventBlocEvent {
  const WeeksChanged(this.weeks);

  final String weeks;

  @override
  List<Object> get props => [weeks];
}

class EventDeliveryChanged extends EventBlocEvent {
  const EventDeliveryChanged(this.eventDelivery);

  final String eventDelivery;

  @override
  List<Object> get props => [eventDelivery];
}

class CourseFrequencyChanged extends EventBlocEvent {
  const CourseFrequencyChanged(this.courseFrequency);

  final String courseFrequency;

  @override
  List<Object> get props => [courseFrequency];
}

class CourseRepeatsEveryChanged extends EventBlocEvent {
  const CourseRepeatsEveryChanged(this.courseRepeatsEvery);

  final String courseRepeatsEvery;

  @override
  List<Object> get props => [courseRepeatsEvery];
}

class CohortRepeatsOnChanged extends EventBlocEvent {
  const CohortRepeatsOnChanged(this.cohortRepeatsOn);

  final String cohortRepeatsOn;

  @override
  List<Object> get props => [cohortRepeatsOn];
}

class RepeatsOnChanged extends EventBlocEvent {
  const RepeatsOnChanged(this.repeatsOn);

  final String repeatsOn;

  @override
  List<Object> get props => [repeatsOn];
}

class AndMonthChanged extends EventBlocEvent {
  const AndMonthChanged(this.andMonth);

  final String andMonth;

  @override
  List<Object> get props => [andMonth];
}

class EveryChanged extends EventBlocEvent {
  const EveryChanged(this.every);

  final String every;

  @override
  List<Object> get props => [every];
}

class VenueNameChanged extends EventBlocEvent {
  const VenueNameChanged(this.venueName);

  final String venueName;

  @override
  List<Object> get props => [venueName];
}

class MeetingRoomNoChanged extends EventBlocEvent {
  const MeetingRoomNoChanged(this.meetingRoomNo);

  final String meetingRoomNo;

  @override
  List<Object> get props => [meetingRoomNo];
}

class NameChanged extends EventBlocEvent {
  const NameChanged(this.name);

  final String name;

  @override
  List<Object> get props => [name];
}

class CountryChanged extends EventBlocEvent {
  const CountryChanged(this.country);

  final String country;

  @override
  List<Object> get props => [country];
}

class Address1Changed extends EventBlocEvent {
  const Address1Changed(this.address1);

  final String address1;

  @override
  List<Object> get props => [address1];
}

class Address2Changed extends EventBlocEvent {
  const Address2Changed(this.address2);

  final String address2;

  @override
  List<Object> get props => [address2];
}

class CityChanged extends EventBlocEvent {
  const CityChanged(this.city);

  final String city;

  @override
  List<Object> get props => [city];
}

class StateChanged extends EventBlocEvent {
  const StateChanged(this.state);

  final String state;

  @override
  List<Object> get props => [state];
}

class PostalCodeChanged extends EventBlocEvent {
  const PostalCodeChanged(this.postalCode);

  final String postalCode;

  @override
  List<Object> get props => [postalCode];
}

class LiveProviderChanged extends EventBlocEvent {
  const LiveProviderChanged(this.liveProvider);

  final String liveProvider;

  @override
  List<Object> get props => [liveProvider];
}

class AccountNameChanged extends EventBlocEvent {
  const AccountNameChanged(this.accountName);

  final String accountName;

  @override
  List<Object> get props => [accountName];
}

class ProviderRegistrationRequiredChanged extends EventBlocEvent {
  const ProviderRegistrationRequiredChanged(this.providerRegistrationRequired);

  final String providerRegistrationRequired;

  @override
  List<Object> get props => [providerRegistrationRequired];
}

class LiveMeetingIdChanged extends EventBlocEvent {
  const LiveMeetingIdChanged(this.liveMeetingId);

  final String liveMeetingId;

  @override
  List<Object> get props => [liveMeetingId];
}

class PasswordChanged extends EventBlocEvent {
  const PasswordChanged(this.password);

  final String password;

  @override
  List<Object> get props => [password];
}

class PricingCategoryChanged extends EventBlocEvent {
  const PricingCategoryChanged(this.pricingCategory);

  final String pricingCategory;

  @override
  List<Object> get props => [pricingCategory];
}

class CurrencyChanged extends EventBlocEvent {
  const CurrencyChanged(this.currency);

  final String currency;

  @override
  List<Object> get props => [currency];
}

class ListPriceChanged extends EventBlocEvent {
  const ListPriceChanged(this.listPrice);

  final String listPrice;

  @override
  List<Object> get props => [listPrice];
}

class EventProviderNameChanged extends EventBlocEvent {
  const EventProviderNameChanged(this.eventProviderName);

  final String eventProviderName;

  @override
  List<Object> get props => [eventProviderName];
}

class ProviderDescriptionChanged extends EventBlocEvent {
  const ProviderDescriptionChanged(this.providerDescription);

  final String providerDescription;

  @override
  List<Object> get props => [providerDescription];
}

class SpeakerNameChanged extends EventBlocEvent {
  const SpeakerNameChanged(this.speakerName);

  final String speakerName;

  @override
  List<Object> get props => [speakerName];
}

class SpeakerProfileChanged extends EventBlocEvent {
  const SpeakerProfileChanged(this.speakerProfile);

  final String speakerProfile;

  @override
  List<Object> get props => [speakerProfile];
}

class TaglineChanged extends EventBlocEvent {
  const TaglineChanged(this.tagline);

  final String tagline;

  @override
  List<Object> get props => [tagline];
}

class BriefDescriptionChanged extends EventBlocEvent {
  const BriefDescriptionChanged(this.briefDescription);

  final String briefDescription;

  @override
  List<Object> get props => [briefDescription];
}

class FullDescriptionChanged extends EventBlocEvent {
  const FullDescriptionChanged(this.fullDescription);

  final String fullDescription;

  @override
  List<Object> get props => [fullDescription];
}

class FeaturesChanged extends EventBlocEvent {
  const FeaturesChanged(this.features);

  final String features;

  @override
  List<Object> get props => [features];
}

class StructureDescriptionChanged extends EventBlocEvent {
  const StructureDescriptionChanged(this.structureDescription);

  final String structureDescription;

  @override
  List<Object> get props => [structureDescription];
}

class BenefitsChanged extends EventBlocEvent {
  const BenefitsChanged(this.benefits);

  final String benefits;

  @override
  List<Object> get props => [benefits];
}

class AddPreRequisitesChanged extends EventBlocEvent {
  const AddPreRequisitesChanged(this.addPreRequisites);

  final String addPreRequisites;

  @override
  List<Object> get props => [addPreRequisites];
}

class ListOfPreRequisitesChanged extends EventBlocEvent {
  const ListOfPreRequisitesChanged(this.listOfPreRequisites);

  final String listOfPreRequisites;

  @override
  List<Object> get props => [listOfPreRequisites];
}

class AttendanceChanged extends EventBlocEvent {
  const AttendanceChanged(this.attendance);

  final String attendance;

  @override
  List<Object> get props => [attendance];
}

class QuizCompletionChanged extends EventBlocEvent {
  const QuizCompletionChanged(this.quizCompletion);

  final String quizCompletion;

  @override
  List<Object> get props => [quizCompletion];
}

class QuizGradingChanged extends EventBlocEvent {
  const QuizGradingChanged(this.quizGrading);

  final String quizGrading;

  @override
  List<Object> get props => [quizGrading];
}

class AssessmentCompletionChanged extends EventBlocEvent {
  const AssessmentCompletionChanged(this.assessmentCompletion);

  final String assessmentCompletion;

  @override
  List<Object> get props => [assessmentCompletion];
}

class AssessmentGradingChanged extends EventBlocEvent {
  const AssessmentGradingChanged(this.assessmentGrading);

  final String assessmentGrading;

  @override
  List<Object> get props => [assessmentGrading];
}

class SessionIdChanged extends EventBlocEvent {
  const SessionIdChanged(this.sessionId);

  final String sessionId;

  @override
  List<Object> get props => [sessionId];
}

class SessionDateChanged extends EventBlocEvent {
  const SessionDateChanged(this.sessionDate);

  final String sessionDate;

  @override
  List<Object> get props => [sessionDate];
}

class StartTimeChanged extends EventBlocEvent {
  const StartTimeChanged(this.startTime);

  final String startTime;

  @override
  List<Object> get props => [startTime];
}

class EndTimeChanged extends EventBlocEvent {
  const EndTimeChanged(this.endTime);

  final String endTime;

  @override
  List<Object> get props => [endTime];
}

class SessionTitleChanged extends EventBlocEvent {
  const SessionTitleChanged(this.sessionTitle);

  final String sessionTitle;

  @override
  List<Object> get props => [sessionTitle];
}

class SessionDescriptionChanged extends EventBlocEvent {
  const SessionDescriptionChanged(this.sessionDescription);

  final String sessionDescription;

  @override
  List<Object> get props => [sessionDescription];
}

class SessionVenueNumberChanged extends EventBlocEvent {
  const SessionVenueNumberChanged(this.sessionVenueNumber);

  final String sessionVenueNumber;

  @override
  List<Object> get props => [sessionVenueNumber];
}

class SessionInfoVenueNameChanged extends EventBlocEvent {
  const SessionInfoVenueNameChanged(this.sessionInfoVenueName);

  final String sessionInfoVenueName;

  @override
  List<Object> get props => [sessionInfoVenueName];
}

class SessionSpeakersChanged extends EventBlocEvent {
  const SessionSpeakersChanged(this.sessionSpeakers);

  final String sessionSpeakers;

  @override
  List<Object> get props => [sessionSpeakers];
}

class SessionInfoSpeakerProfileChanged extends EventBlocEvent {
  const SessionInfoSpeakerProfileChanged(this.sessionInfoSpeakerProfile);

  final String sessionInfoSpeakerProfile;

  @override
  List<Object> get props => [sessionInfoSpeakerProfile];
}

class SpeakerImageChanged extends EventBlocEvent {
  const SpeakerImageChanged(this.speakerImage);

  final String speakerImage;

  @override
  List<Object> get props => [speakerImage];
}

class SessionInfoLiveProviderChanged extends EventBlocEvent {
  const SessionInfoLiveProviderChanged(this.sessionInfoLiveProvider);

  final String sessionInfoLiveProvider;

  @override
  List<Object> get props => [sessionInfoLiveProvider];
}

class RegistrationRequiredChanged extends EventBlocEvent {
  const RegistrationRequiredChanged(this.registrationRequired);

  final String registrationRequired;
  @override
  List<Object> get props => [registrationRequired];
}

class SessionInfoAccountNameChanged extends EventBlocEvent {
  const SessionInfoAccountNameChanged(this.sessionInfoAccountName);

  final String sessionInfoAccountName;

  @override
  List<Object> get props => [sessionInfoAccountName];
}

class MeetingIdChanged extends EventBlocEvent {
  const MeetingIdChanged(this.meetingId);

  final String meetingId;

  @override
  List<Object> get props => [meetingId];
}

class SessionInfoPasswordChanged extends EventBlocEvent {
  const SessionInfoPasswordChanged(this.sessionInfoPassword);

  final String sessionInfoPassword;

  @override
  List<Object> get props => [sessionInfoPassword];
}

class SessionInfoTitleChanged extends EventBlocEvent {
  const SessionInfoTitleChanged(this.sessionInfoTitle);

  final String sessionInfoTitle;

  @override
  List<Object> get props => [sessionInfoTitle];
}

class DescriptionChanged extends EventBlocEvent {
  const DescriptionChanged(this.description);

  final String description;

  @override
  List<Object> get props => [description];
}

class ContentTypeChanged extends EventBlocEvent {
  const ContentTypeChanged(this.contentType);

  final String contentType;

  @override
  List<Object> get props => [contentType];
}

class ContentLinkChanged extends EventBlocEvent {
  const ContentLinkChanged(this.contentLink);

  final String contentLink;

  @override
  List<Object> get props => [contentLink];
}

class ContentTagsChanged extends EventBlocEvent {
  const ContentTagsChanged(this.contentTags);

  final String contentTags;

  @override
  List<Object> get props => [contentTags];
}
