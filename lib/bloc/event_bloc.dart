import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:events_admin_screen/bloc/event_event.dart';
import 'package:events_admin_screen/models/event.dart';
part 'event_state.dart';

class EventBloc extends Bloc<EventBlocEvent, EventState> {
  EventBloc() : super(const EventState()) {
    on<EventIdChanged>(_onEventIdChanged);

    on<ListingStartDateChanged>(_onListingStartDateChanged);

    on<EndDateChanged>(_onEndDateChanged);

    on<TitleChanged>(_onTitleChanged);

    on<EventLevelChanged>(_onEventLevelChanged);

    on<EventLanguageChanged>(_onEventLanguageChanged);

    on<DaysChanged>(_onDaysChanged);

    on<WeeksChanged>(_onWeeksChanged);

    on<EventDeliveryChanged>(_onEventDeliveryChanged);

    on<CourseFrequencyChanged>(_onCourseFrequencyChanged);

    on<CourseRepeatsEveryChanged>(_onCourseRepeatsEveryChanged);

    on<CohortRepeatsOnChanged>(_onCohortRepeatsOnChanged);

    on<RepeatsOnChanged>(_onRepeatsOnChanged);

    on<AndMonthChanged>(_onAndMonthChanged);

    on<EveryChanged>(_onEveryChanged);

    on<VenueNameChanged>(_onVenueNameChanged);

    on<MeetingRoomNoChanged>(_onMeetingRoomNoChanged);

    on<NameChanged>(_onNameChanged);

    on<CountryChanged>(_onCountryChanged);

    on<Address1Changed>(_onAddress1Changed);

    on<Address2Changed>(_onAddress2Changed);

    on<CityChanged>(_onCityChanged);

    on<StateChanged>(_onStateChanged);

    on<PostalCodeChanged>(_onPostalCodeChanged);

    on<LiveProviderChanged>(_onLiveProviderChanged);

    on<AccountNameChanged>(_onAccountNameChanged);

    on<ProviderRegistrationRequiredChanged>(
        _onProviderRegistrationRequiredChanged);

    on<LiveMeetingIdChanged>(_onLiveMeetingIdChanged);

    on<PasswordChanged>(_onPasswordChanged);

    on<PricingCategoryChanged>(_onPricingCategoryChanged);

    on<CurrencyChanged>(_onCurrencyChanged);

    on<ListPriceChanged>(_onListPriceChanged);

    on<EventProviderNameChanged>(_onEventProviderNameChanged);

    on<ProviderDescriptionChanged>(_onProviderDescriptionChanged);

    on<SpeakerNameChanged>(_onSpeakerNameChanged);

    on<SpeakerProfileChanged>(_onSpeakerProfileChanged);

    on<TaglineChanged>(_onTaglineChanged);

    on<BriefDescriptionChanged>(_onBriefDescriptionChanged);

    on<FullDescriptionChanged>(_onFullDescriptionChanged);

    on<FeaturesChanged>(_onFeaturesChanged);

    on<StructureDescriptionChanged>(_onStructureDescriptionChanged);

    on<BenefitsChanged>(_onBenefitsChanged);

    on<AddPreRequisitesChanged>(_onAddPreRequisitesChanged);

    on<ListOfPreRequisitesChanged>(_onListOfPreRequisitesChanged);

    on<AttendanceChanged>(_onAttendanceChanged);

    on<QuizCompletionChanged>(_onQuizCompletionChanged);

    on<QuizGradingChanged>(_onQuizGradingChanged);

    on<AssessmentCompletionChanged>(_onAssessmentCompletionChanged);

    on<AssessmentGradingChanged>(_onAssessmentGradingChanged);

    on<SessionIdChanged>(_onSessionIdChanged);

    on<SessionDateChanged>(_onSessionDateChanged);

    on<StartTimeChanged>(_onStartTimeChanged);

    on<EndTimeChanged>(_onEndTimeChanged);

    on<SessionTitleChanged>(_onSessionTitleChanged);

    on<SessionDescriptionChanged>(_onSessionDescriptionChanged);

    on<SessionVenueNumberChanged>(_onSessionVenueNumberChanged);

    on<SessionInfoVenueNameChanged>(_onSessionInfoVenueNameChanged);

    on<SessionSpeakersChanged>(_onSessionSpeakersChanged);

    on<SessionInfoSpeakerProfileChanged>(_onSessionInfoSpeakerProfileChanged);

    on<SpeakerImageChanged>(_onSpeakerImageChanged);

    on<SessionInfoLiveProviderChanged>(_onSessionInfoLiveProviderChanged);

    on<RegistrationRequiredChanged>(_onRegistrationRequiredChanged);

    on<SessionInfoAccountNameChanged>(_onSessionInfoAccountNameChanged);

    on<MeetingIdChanged>(_onMeetingIdChanged);

    on<SessionInfoPasswordChanged>(_onSessionInfoPasswordChanged);

    on<SessionInfoTitleChanged>(_onSessionInfoTitleChanged);

    on<DescriptionChanged>(_onDescriptionChanged);

    on<ContentTypeChanged>(_onContentTypeChanged);

    on<ContentLinkChanged>(_onContentLinkChanged);

    on<ContentTagsChanged>(_onContentTagsChanged);
  }

  void _onEventIdChanged(
    EventIdChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          eventId: event.eventId,
        ),
      ),
    );
  }

  void _onListingStartDateChanged(
    ListingStartDateChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          listingStartDate: event.listingStartDate,
        ),
      ),
    );
  }

  void _onEndDateChanged(
    EndDateChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          endDate: event.endDate,
        ),
      ),
    );
  }

  void _onTitleChanged(
    TitleChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          title: event.title,
        ),
      ),
    );
  }

  void _onEventLevelChanged(
    EventLevelChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          eventLevel: event.eventLevel,
        ),
      ),
    );
  }

  void _onEventLanguageChanged(
    EventLanguageChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          eventLanguage: event.eventLanguage,
        ),
      ),
    );
  }

  void _onDaysChanged(
    DaysChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          days: event.days,
        ),
      ),
    );
  }

  void _onWeeksChanged(
    WeeksChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          weeks: event.weeks,
        ),
      ),
    );
  }

  void _onEventDeliveryChanged(
    EventDeliveryChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          eventDelivery: event.eventDelivery,
        ),
      ),
    );
  }

  void _onCourseFrequencyChanged(
    CourseFrequencyChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          courseFrequency: event.courseFrequency,
        ),
      ),
    );
  }

  void _onCourseRepeatsEveryChanged(
    CourseRepeatsEveryChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          courseRepeatsEvery: event.courseRepeatsEvery,
        ),
      ),
    );
  }

  void _onCohortRepeatsOnChanged(
    CohortRepeatsOnChanged event,
    Emitter<EventState> emit,
  ) {
    if (state.eventData.cophortRepeatsOn.contains(event.cohortRepeatsOn)) {
      final repeats = List.of(state.eventData.cophortRepeatsOn);
      repeats.remove(event.cohortRepeatsOn);

      emit(
        state.copyWith(
          eventData: state.eventData.copyWith(cophortRepeatsOn: repeats),
        ),
      );
    } else {
      final repeats = List.of(state.eventData.cophortRepeatsOn);
      repeats.add(event.cohortRepeatsOn);

      emit(
        state.copyWith(
          eventData: state.eventData.copyWith(cophortRepeatsOn: repeats),
        ),
      );
    }
  }

  void _onRepeatsOnChanged(
    RepeatsOnChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          repeatsOn: event.repeatsOn,
        ),
      ),
    );
  }

  void _onAndMonthChanged(
    AndMonthChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          andMonth: event.andMonth,
        ),
      ),
    );
  }

  void _onEveryChanged(
    EveryChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          every: event.every,
        ),
      ),
    );
  }

  void _onVenueNameChanged(
    VenueNameChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          venueName: event.venueName,
        ),
      ),
    );
  }

  void _onMeetingRoomNoChanged(
    MeetingRoomNoChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          meetingRoomNo: event.meetingRoomNo,
        ),
      ),
    );
  }

  void _onNameChanged(
    NameChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          name: event.name,
        ),
      ),
    );
  }

  void _onCountryChanged(
    CountryChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          country: event.country,
        ),
      ),
    );
  }

  void _onAddress1Changed(
    Address1Changed event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          address1: event.address1,
        ),
      ),
    );
  }

  void _onAddress2Changed(
    Address2Changed event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          address2: event.address2,
        ),
      ),
    );
  }

  void _onCityChanged(
    CityChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          city: event.city,
        ),
      ),
    );
  }

  void _onStateChanged(
    StateChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          state: event.state,
        ),
      ),
    );
  }

  void _onPostalCodeChanged(
    PostalCodeChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          postalCode: event.postalCode,
        ),
      ),
    );
  }

  void _onLiveProviderChanged(
    LiveProviderChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          liveProvider: event.liveProvider,
        ),
      ),
    );
  }

  void _onAccountNameChanged(
    AccountNameChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          accountName: event.accountName,
        ),
      ),
    );
  }

  void _onProviderRegistrationRequiredChanged(
    ProviderRegistrationRequiredChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          providerRegistrationRequired: event.providerRegistrationRequired,
        ),
      ),
    );
  }

  void _onLiveMeetingIdChanged(
    LiveMeetingIdChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          liveMeetingId: event.liveMeetingId,
        ),
      ),
    );
  }

  void _onPasswordChanged(
    PasswordChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          password: event.password,
        ),
      ),
    );
  }

  void _onPricingCategoryChanged(
    PricingCategoryChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          pricingCategory: event.pricingCategory,
        ),
      ),
    );
  }

  void _onCurrencyChanged(
    CurrencyChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          currency: event.currency,
        ),
      ),
    );
  }

  void _onListPriceChanged(
    ListPriceChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          listPrice: event.listPrice,
        ),
      ),
    );
  }

  void _onEventProviderNameChanged(
    EventProviderNameChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          eventProviderName: event.eventProviderName,
        ),
      ),
    );
  }

  void _onProviderDescriptionChanged(
    ProviderDescriptionChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          providerDescription: event.providerDescription,
        ),
      ),
    );
  }

  void _onSpeakerNameChanged(
    SpeakerNameChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          speakerName: event.speakerName,
        ),
      ),
    );
  }

  void _onSpeakerProfileChanged(
    SpeakerProfileChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          speakerProfile: event.speakerProfile,
        ),
      ),
    );
  }

  void _onTaglineChanged(
    TaglineChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          tagline: event.tagline,
        ),
      ),
    );
  }

  void _onBriefDescriptionChanged(
    BriefDescriptionChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          briefDescription: event.briefDescription,
        ),
      ),
    );
  }

  void _onFullDescriptionChanged(
    FullDescriptionChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          fullDescription: event.fullDescription,
        ),
      ),
    );
  }

  void _onFeaturesChanged(
    FeaturesChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          features: event.features,
        ),
      ),
    );
  }

  void _onStructureDescriptionChanged(
    StructureDescriptionChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          structureDescription: event.structureDescription,
        ),
      ),
    );
  }

  void _onBenefitsChanged(
    BenefitsChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          benefits: event.benefits,
        ),
      ),
    );
  }

  void _onAddPreRequisitesChanged(
    AddPreRequisitesChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          addPreRequisites: event.addPreRequisites,
        ),
      ),
    );
  }

  void _onListOfPreRequisitesChanged(
    ListOfPreRequisitesChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          listOfPreRequisites: event.listOfPreRequisites,
        ),
      ),
    );
  }

  void _onAttendanceChanged(
    AttendanceChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          attendance: event.attendance,
        ),
      ),
    );
  }

  void _onQuizCompletionChanged(
    QuizCompletionChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          quizCompletion: event.quizCompletion,
        ),
      ),
    );
  }

  void _onQuizGradingChanged(
    QuizGradingChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          quizGrading: event.quizGrading,
        ),
      ),
    );
  }

  void _onAssessmentCompletionChanged(
    AssessmentCompletionChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          assessmentCompletion: event.assessmentCompletion,
        ),
      ),
    );
  }

  void _onAssessmentGradingChanged(
    AssessmentGradingChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          assessmentGrading: event.assessmentGrading,
        ),
      ),
    );
  }

  void _onSessionIdChanged(
    SessionIdChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          sessionId: event.sessionId,
        ),
      ),
    );
  }

  void _onSessionDateChanged(
    SessionDateChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          sessionDate: event.sessionDate,
        ),
      ),
    );
  }

  void _onStartTimeChanged(
    StartTimeChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          startTime: event.startTime,
        ),
      ),
    );
  }

  void _onEndTimeChanged(
    EndTimeChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          endTime: event.endTime,
        ),
      ),
    );
  }

  void _onSessionTitleChanged(
    SessionTitleChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          sessionTitle: event.sessionTitle,
        ),
      ),
    );
  }

  void _onSessionDescriptionChanged(
    SessionDescriptionChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          sessionDescription: event.sessionDescription,
        ),
      ),
    );
  }

  void _onSessionVenueNumberChanged(
    SessionVenueNumberChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          sessionVenueNumber: event.sessionVenueNumber,
        ),
      ),
    );
  }

  void _onSessionInfoVenueNameChanged(
    SessionInfoVenueNameChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          sessionInfoVenueName: event.sessionInfoVenueName,
        ),
      ),
    );
  }

  void _onSessionSpeakersChanged(
    SessionSpeakersChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          sessionSpeakers: event.sessionSpeakers,
        ),
      ),
    );
  }

  void _onSessionInfoSpeakerProfileChanged(
    SessionInfoSpeakerProfileChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          sessionInfoSpeakerProfile: event.sessionInfoSpeakerProfile,
        ),
      ),
    );
  }

  void _onSpeakerImageChanged(
    SpeakerImageChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          speakerImage: event.speakerImage,
        ),
      ),
    );
  }

  void _onSessionInfoLiveProviderChanged(
    SessionInfoLiveProviderChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          sessionInfoLiveProvider: event.sessionInfoLiveProvider,
        ),
      ),
    );
  }

  void _onRegistrationRequiredChanged(
    RegistrationRequiredChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          registrationRequired: event.registrationRequired,
        ),
      ),
    );
  }

  void _onSessionInfoAccountNameChanged(
    SessionInfoAccountNameChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          sessionInfoAccountName: event.sessionInfoAccountName,
        ),
      ),
    );
  }

  void _onMeetingIdChanged(
    MeetingIdChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          meetingId: event.meetingId,
        ),
      ),
    );
  }

  void _onSessionInfoPasswordChanged(
    SessionInfoPasswordChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData
            .copyWith(sessionInfoPassword: event.sessionInfoPassword),
      ),
    );
  }

  void _onSessionInfoTitleChanged(
    SessionInfoTitleChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          sessionInfoTitle: event.sessionInfoTitle,
        ),
      ),
    );
  }

  void _onDescriptionChanged(
    DescriptionChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          description: event.description,
        ),
      ),
    );
  }

  void _onContentTypeChanged(
    ContentTypeChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          contentType: event.contentType,
        ),
      ),
    );
  }

  void _onContentLinkChanged(
    ContentLinkChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          contentLink: event.contentLink,
        ),
      ),
    );
  }

  void _onContentTagsChanged(
    ContentTagsChanged event,
    Emitter<EventState> emit,
  ) {
    emit(
      state.copyWith(
        eventData: state.eventData.copyWith(
          contentTags: event.contentTags,
        ),
      ),
    );
  }
}
