import 'package:events_admin_screen/app/app_block_observer.dart';
import 'package:events_admin_screen/bloc/event_bloc.dart';
import 'package:events_admin_screen/bloc/event_event.dart';
import 'package:events_admin_screen/widgets/AppElevatedbutton.dart';
import 'package:events_admin_screen/widgets/AppTextformfield.dart';
import 'package:events_admin_screen/widgets/AppDropdownButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/weekday.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = const AppBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EventBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeView(),
      ),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool? certificateAvaliable;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    'Admin Screens-',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Create Event',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              const Text('Event Overview Page'),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  const Text(
                    'Event ID',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  AppTextFormField(
                    width: 300,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (String value) {
                      context.read<EventBloc>().add(
                            EventIdChanged(int.parse(value)),
                          );
                    },
                  ),
                  const SizedBox(width: 30),
                  const Text(
                    'listing Start Date',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  AppTextFormField(
                    width: 200,
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(ListingStartDateChanged(value));
                    },
                  ),
                  const SizedBox(width: 30),
                  const Text(
                    'End Date',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  AppTextFormField(
                    width: 200,
                    onChanged: (value) {
                      context.read<EventBloc>().add(EndDateChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Title*',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 3),
              AppTextFormField(
                width: 1000,
                onChanged: (value) {
                  context.read<EventBloc>().add(TitleChanged(value));
                },
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    'Event Level*',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  AppDropdownButton<String>(
                    onChanged: (value) {
                      context.read<EventBloc>().add(EventLevelChanged(value));
                    },
                    width: 300,
                    data: [
                      DropdownData(value: 'introductory', name: 'Introductory'),
                      DropdownData(value: 'intermediate', name: 'Intermediate'),
                      DropdownData(value: 'advanced', name: 'Advanced'),
                    ],
                    //onChanged: (value) {},
                  ),
                  const SizedBox(width: 50),
                  const Text(
                    'Event Language*',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  AppDropdownButton<String>(
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(EventLanguageChanged(value));
                    },
                    width: 300,
                    data: [
                      DropdownData(value: 'english', name: 'English'),
                      DropdownData(value: 'telugu', name: 'Telugu'),
                      DropdownData(value: 'kannada', name: 'Kannada'),
                      DropdownData(value: 'hindi', name: 'Hindi'),
                    ],
                    //onChanged: (value) {},
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Event Duration*',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 70,
                    onChanged: (value) {
                      context.read<EventBloc>().add(DaysChanged(value));
                    },
                  ),
                  const SizedBox(width: 3),
                  const Text(
                    'Days',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 3),
                  AppTextFormField(
                    width: 70,
                    onChanged: (value) {
                      context.read<EventBloc>().add(WeeksChanged(value));
                    },
                  ),
                  const SizedBox(width: 3),
                  const Text(
                    'Weeks',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 100),
                  const Text(
                    'Event Delivery*',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  AppDropdownButton<String>(
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(EventDeliveryChanged(value));
                    },
                    width: 300,
                    data: [
                      DropdownData(value: 'online', name: 'Online'),
                      DropdownData(value: 'physical', name: 'Physical'),
                      DropdownData(value: 'hybrid', name: 'Hybrid'),
                    ],
                    //onChanged: (value) {},
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Course Frequency*',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  AppDropdownButton<String>(
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(CourseFrequencyChanged(value));
                    },
                    width: 300,
                    data: [
                      DropdownData(value: 'daily', name: 'Daily'),
                      DropdownData(value: 'weekly', name: 'Weekly'),
                      DropdownData(value: 'monthly', name: 'Monthly'),
                      DropdownData(value: 'yearly', name: 'Yearly'),
                    ],
                    //onChanged: (value) {},
                  ),
                  const SizedBox(width: 40),
                  const Text(
                    'Course Repeats Every*',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  AppDropdownButton(
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(CourseRepeatsEveryChanged(value.toString()));
                    },
                    width: 100,
                    data: List.generate(
                      99,
                      (index) => DropdownData(
                        value: index + 1,
                        name: (index + 1).toString(),
                      ),
                    ),
                    //onChanged: (value) {},
                  ),
                  const SizedBox(width: 20),
                  AppDropdownButton<String>(
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(CourseRepeatsEveryChanged(value));
                    },
                    width: 300,
                    data: [
                      DropdownData(value: 'day', name: 'Day'),
                      DropdownData(value: 'week', name: 'Week'),
                      DropdownData(value: 'month', name: 'Month'),
                      DropdownData(value: 'year', name: 'Year'),
                    ],
                    //onChanged: (value) {},
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                '*Required for Weekly recurrence:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              BlocBuilder<EventBloc, EventState>(
                builder: (context, state) {
                  return Row(
                    children: [
                      const Text(
                        'Cohort repeats on:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 5),
                      WeekDayButton(
                        text: 'MO',
                        isSelected: state.eventData.repeatsOn.contains('MO'),
                        onTap: () {
                          context
                              .read<EventBloc>()
                              .add(const RepeatsOnChanged('MO'));
                        },
                      ),
                      const SizedBox(width: 5),
                      WeekDayButton(
                        text: 'TU',
                        isSelected: state.eventData.repeatsOn.contains('TU'),
                        onTap: () {
                          context
                              .read<EventBloc>()
                              .add(const RepeatsOnChanged('TU'));
                        },
                      ),
                      const SizedBox(width: 5),
                      WeekDayButton(
                        text: 'WE',
                        isSelected: state.eventData.repeatsOn.contains('WE'),
                        onTap: () {
                          context
                              .read<EventBloc>()
                              .add(const RepeatsOnChanged('WE'));
                        },
                      ),
                      const SizedBox(width: 5),
                      WeekDayButton(
                        text: 'TH',
                        isSelected: state.eventData.repeatsOn.contains('TH'),
                        onTap: () {
                          context
                              .read<EventBloc>()
                              .add(const RepeatsOnChanged('TH'));
                        },
                      ),
                      const SizedBox(width: 5),
                      WeekDayButton(
                        text: 'FR',
                        isSelected: state.eventData.repeatsOn.contains('FR'),
                        onTap: () {
                          context
                              .read<EventBloc>()
                              .add(const RepeatsOnChanged('FR'));
                        },
                      ),
                      const SizedBox(width: 5),
                      WeekDayButton(
                        text: 'SA',
                        isSelected: state.eventData.repeatsOn.contains('SA'),
                        onTap: () {
                          context
                              .read<EventBloc>()
                              .add(const RepeatsOnChanged('SA'));
                        },
                      ),
                      const SizedBox(width: 5),
                      WeekDayButton(
                        text: 'SU',
                        isSelected: state.eventData.repeatsOn.contains('SU'),
                        onTap: () {
                          context
                              .read<EventBloc>()
                              .add(const RepeatsOnChanged('SU'));
                        },
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'For Monthly/Yearly recurrence:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  const Text(
                    'Repeats On:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  AppDropdownButton(
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(RepeatsOnChanged(value.toString()));
                    },
                    width: 100,
                    data: List.generate(
                      31,
                      (index) => DropdownData(
                        value: index + 1,
                        name: (index + 1).toString(),
                      ),
                    ),
                    //onChanged: (value) {},
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Day of Month (1-31)',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  const Text(
                    'and Month',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  AppDropdownButton(
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(AndMonthChanged(value.toString()));
                    },
                    width: 200,
                    data: List.generate(
                      12,
                      (index) => DropdownData(
                        value: index + 1,
                        name: (index + 1).toString(),
                      ),
                    ),
                    //onChanged: (value) {},
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '(1-12) only for Yearly',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const Text(
                'OR',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: Text(
                      'Every',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  AppDropdownButton<String>(
                    onChanged: (value) {
                      context.read<EventBloc>().add(EveryChanged(value));
                    },
                    width: 300,
                    data: [
                      DropdownData(value: 'first', name: 'First'),
                      DropdownData(value: 'second', name: 'Second'),
                      DropdownData(value: 'third', name: 'Third'),
                      DropdownData(value: 'fourth', name: 'Fourth'),
                      DropdownData(value: 'last', name: 'Last'),
                    ],
                    //onChanged: (value) {},
                  ),
                  const SizedBox(width: 50),
                  AppDropdownButton<String>(
                    onChanged: (value) {
                      context.read<EventBloc>().add(EveryChanged(value));
                    },
                    width: 300,
                    data: [
                      DropdownData(value: 'monday', name: 'Mon'),
                      DropdownData(value: 'tuesdey', name: 'Tue'),
                      DropdownData(value: 'wednesday', name: 'Wed'),
                      DropdownData(value: 'thursday', name: 'Thur'),
                      DropdownData(value: 'friday', name: 'Fri'),
                      DropdownData(value: 'saturday', name: 'Sat'),
                      DropdownData(value: 'sunday', name: 'Sun'),
                    ],
                    //onChanged: (value) {},
                  ),
                ],
              ),
              const SizedBox(height: 100),
              const Text(
                'Location Info* (required if Physical delivery)',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Venue Name:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 1000,
                    onChanged: (value) {
                      context.read<EventBloc>().add(VenueNameChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Meeting Room No:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 100,
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(MeetingRoomNoChanged(value));
                    },
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'Name:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 700,
                    onChanged: (value) {
                      context.read<EventBloc>().add(NameChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'Adress Fields Based On',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text(
                    'Country  ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 500,
                    onChanged: (value) {
                      context.read<EventBloc>().add(CountryChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    'Adress 1',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 500,
                    onChanged: (value) {
                      context.read<EventBloc>().add(Address1Changed(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    'Adress 2',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 500,
                    onChanged: (value) {
                      context.read<EventBloc>().add(Address2Changed(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    'City        ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 500,
                    onChanged: (value) {
                      context.read<EventBloc>().add(CityChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    'State      ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 500,
                    onChanged: (value) {
                      context.read<EventBloc>().add(StateChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    'Zip/PostalCode',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 500,
                    onChanged: (value) {
                      context.read<EventBloc>().add(PostalCodeChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'Required for Live Courses:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Live Provider:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10),
                  AppDropdownButton<String>(
                    onChanged: (value) {
                      context.read<EventBloc>().add(LiveProviderChanged(value));
                    },
                    width: 300,
                    data: [
                      DropdownData(value: 'first', name: 'First'),
                      DropdownData(value: 'second', name: 'Second'),
                      DropdownData(value: 'third', name: 'Third'),
                      DropdownData(value: 'fourth', name: 'Fourth'),
                    ],
                    //onChanged: (value) {},
                  ),
                  const SizedBox(width: 80),
                  const Text(
                    'Account Name:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 300,
                    onChanged: (value) {
                      context.read<EventBloc>().add(AccountNameChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Provider Registration Required?',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 50,
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(ProviderRegistrationRequiredChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Live Meeting ID:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 300,
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(LiveMeetingIdChanged(value));
                    },
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'Password:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 300,
                    onChanged: (value) {
                      context.read<EventBloc>().add(PasswordChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    '*Pricing Category:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  AppDropdownButton<String>(
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(PricingCategoryChanged(value));
                    },
                    width: 300,
                    data: [
                      DropdownData(value: 'free', name: 'Free'),
                      DropdownData(value: 'priced', name: 'Priced'),
                      DropdownData(value: 'subscription', name: 'Subscription'),
                    ],
                    //onChanged: (value) {},
                  ),
                  const SizedBox(width: 50),
                  const Text(
                    '*Currency',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  AppDropdownButton<String>(
                    onChanged: (value) {
                      context.read<EventBloc>().add(CurrencyChanged(value));
                    },
                    width: 300,
                    data: [
                      DropdownData(value: 'ind', name: 'IND'),
                      DropdownData(value: 'usd', name: 'USD'),
                      DropdownData(value: 'aed', name: 'AED'),
                      DropdownData(value: 'euro', name: 'Euro'),
                    ],
                    //onChanged: (value) {},
                  ),
                  const SizedBox(width: 50),
                  const Text(
                    'List Price:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 200,
                    onChanged: (value) {
                      context.read<EventBloc>().add(ListPriceChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Discount Options:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 600),
                  AppElevatedButton(
                    label: 'Add',
                    onTap: () {},
                  ),
                  const SizedBox(width: 20),
                  AppElevatedButton(
                    label: 'Edit',
                    onTap: () {},
                  ),
                  const SizedBox(width: 20),
                  AppElevatedButton(
                    label: 'Delete',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 30),
              DataTable(
                border: TableBorder.all(
                  color: Colors.grey,
                ),
                columnSpacing: 80,
                //dataRowMaxHeight: 140,
                //dataRowMinHeight: 80,
                columns: const [
                  DataColumn(
                    label: Text(
                      'Discount ID',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Country',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Code',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Type',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Value',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Expiray Date',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: SizedBox(
                      width: 400,
                      child: Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
                rows: const [
                  DataRow(
                    cells: [
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('sdfsdf')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('sdfsdf')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppElevatedButton(
                    label: 'Next',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Text(
                    'Event Provider Name*',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  AppDropdownButton<String>(
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(EventProviderNameChanged(value));
                    },
                    width: 300,
                    data: [
                      DropdownData(value: 'Rakesh', name: 'Rakesh'),
                      DropdownData(
                          value: 'Chandra Pulamarasetti',
                          name: 'Chandra Pulamarasetti'),
                      DropdownData(value: 'Sai Sagar', name: 'Sai Sagar'),
                      DropdownData(value: 'Dr.Newton', name: 'Dr.Newton'),
                    ],
                    //onChanged: (value) {},
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'Provider Description*',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              AppTextFormField(
                width: 1400,
                maxLines: 6,
                onChanged: (value) {
                  context
                      .read<EventBloc>()
                      .add(ProviderDescriptionChanged(value));
                },
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Event Host/speaker Name*',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  AppTextFormField(
                    width: 500,
                    onChanged: (value) {
                      context.read<EventBloc>().add(SpeakerNameChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'Speaker Profile*',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              AppTextFormField(
                width: 1400,
                maxLines: 6,
                onChanged: (value) {
                  context.read<EventBloc>().add(SpeakerProfileChanged(value));
                },
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Tag Line*',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  AppTextFormField(
                    width: 1300,
                    maxLines: 2,
                    minLines: 2,
                    onChanged: (value) {
                      context.read<EventBloc>().add(TaglineChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'Brief Description*',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              AppTextFormField(
                width: 1400,
                maxLines: 6,
                onChanged: (value) {
                  context.read<EventBloc>().add(BriefDescriptionChanged(value));
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppElevatedButton(
                    label: 'Next',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 100),
              const Text(
                'Full Description*',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              AppTextFormField(
                width: 1400,
                maxLines: 6,
                onChanged: (value) {
                  context.read<EventBloc>().add(FullDescriptionChanged(value));
                },
              ),
              const SizedBox(height: 30),
              const Text(
                'Features',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              AppTextFormField(
                width: 1400,
                maxLines: 6,
                onChanged: (value) {
                  context.read<EventBloc>().add(FeaturesChanged(value));
                },
              ),
              const SizedBox(height: 30),
              const Text(
                'Structure Description',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              AppTextFormField(
                width: 1400,
                maxLines: 6,
                onChanged: (value) {
                  context
                      .read<EventBloc>()
                      .add(StructureDescriptionChanged(value));
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppElevatedButton(
                    label: 'Next',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 100),
              const Text(
                'Benefits/Skills',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              AppTextFormField(
                width: 1400,
                maxLines: 6,
                onChanged: (value) {
                  context.read<EventBloc>().add(BenefitsChanged(value));
                },
              ),
              const SizedBox(height: 30),
              const Text(
                'Add Pre-requisites',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              AppDropdownButton<String>(
                onChanged: (value) {
                  context.read<EventBloc>().add(AddPreRequisitesChanged(value));
                },
                width: 1400,
                data: [
                  DropdownData(value: '1', name: '1'),
                  DropdownData(value: '2', name: '2'),
                  DropdownData(value: '3', name: '3'),
                  DropdownData(value: '4', name: '4'),
                ],
                //onChanged: (value) {},
              ),
              const SizedBox(height: 30),
              const Text(
                'List of Pre-requisites',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              AppTextFormField(
                width: 1400,
                onChanged: (value) {
                  context
                      .read<EventBloc>()
                      .add(ListOfPreRequisitesChanged(value));
                },
              ),
              const SizedBox(height: 30),
              const Text(
                'Promo Video Link',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              AppTextFormField(
                width: 1400,
                maxLines: 2,
                onChanged: (value) {
                  context.read<EventBloc>().add(SpeakerProfileChanged(value));
                },
              ),
              const SizedBox(height: 10),
              const Text(
                'Course Images',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Overview Cover Image*(Image measurements-WxH,Image size requirements-#KB)',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              AppTextFormField(
                width: 1400,
                maxLines: 2,
                onChanged: (value) {
                  context.read<EventBloc>().add(SpeakerProfileChanged(value));
                },
              ),
              const SizedBox(height: 20),
              const Text(
                'Live Card Image*(Image measurements-WxH,Image size requirements-#KB)',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              AppTextFormField(
                width: 1400,
                maxLines: 2,
                onChanged: (value) {
                  context.read<EventBloc>().add(SpeakerProfileChanged(value));
                },
              ),
              const SizedBox(height: 20),
              const Text(
                'Listing Image*(Image measurements-WxH,Image size requirements-#KB)',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              AppTextFormField(
                width: 1400,
                maxLines: 2,
                onChanged: (value) {
                  context.read<EventBloc>().add(SpeakerProfileChanged(value));
                },
              ),
              const SizedBox(height: 100),
              Row(
                children: [
                  const Text(
                    'Certificate Available?*',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text('Yes'),
                  const SizedBox(width: 4),
                  Radio.adaptive(
                    value: true,
                    groupValue: certificateAvaliable,
                    onChanged: (value) {
                      setState(() {
                        certificateAvaliable = value;
                      });
                    },
                  ),
                  const SizedBox(width: 12),
                  const Text('No'),
                  const SizedBox(width: 4),
                  Radio.adaptive(
                    value: false,
                    groupValue: certificateAvaliable,
                    onChanged: (value) {
                      setState(() {
                        certificateAvaliable = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Certificate Criteria(required for certification)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    'Attendance:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 90),
                  const Text(
                    '(>=)',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 50,
                    onChanged: (value) {
                      context.read<EventBloc>().add(AttendanceChanged(value));
                    },
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '%',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    'Quiz Completion:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 60),
                  const Text(
                    '(>=)',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 50,
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(QuizCompletionChanged(value));
                    },
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '%',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    'Quiz Grading:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 85),
                  const Text(
                    '(>=)',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 50,
                    onChanged: (value) {
                      context.read<EventBloc>().add(QuizGradingChanged(value));
                    },
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '%',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    'Assessment Completion:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    '(>=)',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 50,
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(AssessmentCompletionChanged(value));
                    },
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '%',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    'Assessment Grading:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 35),
                  const Text(
                    '(>=)',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 50,
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(AssessmentGradingChanged(value));
                    },
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '%',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppElevatedButton(
                    label: 'Next',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 100),
              Row(
                children: [
                  const Text(
                    'Session Info',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 700),
                  AppElevatedButton(
                    label: 'Add Session',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 30),
              DataTable(
                border: TableBorder.all(
                  color: Colors.grey,
                ),
                columns: const [
                  DataColumn(
                    label: Text(
                      'Session ID',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Session Date',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Start Time',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'End Time',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Title',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Speaker',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
                rows: const [
                  DataRow(
                    cells: [
                      DataCell(Text('XX')),
                      DataCell(Text('DD/MM/YY')),
                      DataCell(Text('HH:MM:SS')),
                      DataCell(Text('HH:MM:SS')),
                      DataCell(Text('Welcome Session(Link to Edit)')),
                      DataCell(Text('Chandra')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'Session Details (add/edit Screen)',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Session ID:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 200,
                    onChanged: (value) {
                      context.read<EventBloc>().add(SessionIdChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Session Date:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 200,
                    onChanged: (value) {
                      context.read<EventBloc>().add(SessionDateChanged(value));
                    },
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'Start Time:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 200,
                    onChanged: (value) {
                      context.read<EventBloc>().add(StartTimeChanged(value));
                    },
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'End Time:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 200,
                    onChanged: (value) {
                      context.read<EventBloc>().add(EndTimeChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Session Title:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 850,
                    onChanged: (value) {
                      context.read<EventBloc>().add(SessionTitleChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Session Description:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 800,
                    maxLines: 3,
                    minLines: 2,
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(SessionDescriptionChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Session Venue Number',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 100,
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(SessionVenueNumberChanged(value));
                    },
                  ),
                  const SizedBox(width: 50),
                  const Text(
                    'Venue Name',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 500,
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(SessionInfoVenueNameChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'Add Speakers',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Session Speakers',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppDropdownButton<String>(
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(SessionSpeakersChanged(value));
                    },
                    width: 500,
                    data: [
                      DropdownData(value: 'Rakesh', name: 'Rakesh'),
                      DropdownData(
                          value: 'Chandra Pulamarasetti',
                          name: 'Chandra Pulamarasetti'),
                      DropdownData(value: 'Sai Sagar', name: 'Sai Sagar'),
                      DropdownData(value: 'Dr.Newton', name: 'Dr.Newton'),
                    ],
                    //onChanged: (value) {},
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'Speaker Profile',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              AppTextFormField(
                width: 1000,
                maxLines: 3,
                minLines: 2,
                onChanged: (value) {
                  context
                      .read<EventBloc>()
                      .add(SessionInfoSpeakerProfileChanged(value));
                },
              ),
              const SizedBox(height: 30),
              const Text(
                'Speaker Image',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              AppTextFormField(
                width: 1000,
                minLines: 2,
                maxLines: 2,
                onChanged: (value) {
                  context.read<EventBloc>().add(SpeakerImageChanged(value));
                },
              ),
              const SizedBox(height: 30),
              RichText(
                text: const TextSpan(
                    text: 'Session Live Meeting Info - ',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(
                        text:
                            'will default from event level values that can be changed at session level',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                        ),
                      ),
                    ]),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Live Provider',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 300,
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(SessionInfoLiveProviderChanged(value));
                    },
                  ),
                  const SizedBox(width: 50),
                  const Text(
                    'Registration required?',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 50,
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(RegistrationRequiredChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Account Name',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 500,
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(SessionInfoAccountNameChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Meeting ID',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 300,
                    onChanged: (value) {
                      context.read<EventBloc>().add(MeetingIdChanged(value));
                    },
                  ),
                  const SizedBox(width: 50),
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 300,
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(SessionInfoPasswordChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const Text(
                'Add Session or Event Content/Resources',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  const Text(
                    '   Title:         ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 800,
                    onChanged: (value) {
                      context
                          .read<EventBloc>()
                          .add(SessionInfoTitleChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Description:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 800,
                    maxLines: 2,
                    onChanged: (value) {
                      context.read<EventBloc>().add(DescriptionChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Content Type',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppDropdownButton<String>(
                    onChanged: (value) {
                      context.read<EventBloc>().add(ContentTypeChanged(value));
                    },
                    width: 300,
                    data: [
                      DropdownData(value: 'video', name: 'Video'),
                      DropdownData(value: 'audio', name: 'Audio'),
                      DropdownData(value: 'form', name: 'Form'),
                      DropdownData(value: 'pdf', name: 'Pdf'),
                      DropdownData(value: 'doc', name: 'Doc'),
                      DropdownData(value: 'ppt', name: 'Ppt'),
                      DropdownData(value: 'text', name: 'Text'),
                      DropdownData(value: 'image', name: 'Image'),
                    ],
                    //onChanged: (value) {},
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Content link:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 800,
                    onChanged: (value) {
                      context.read<EventBloc>().add(ContentLinkChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'OR',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(
                    width: 800,
                    child: TextFormField(
                      style: const TextStyle(fontSize: 14),
                      maxLines: 2,
                      //minLines: 2,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 10,
                        ),
                        hintText: 'Choose/Drop File to upload',
                        border: OutlineInputBorder(),
                        isCollapsed: true,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Upload'),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Text(
                    'Content Tags:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AppTextFormField(
                    width: 800,
                    onChanged: (value) {
                      context.read<EventBloc>().add(ContentTagsChanged(value));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              AppElevatedButton(
                label: 'Save',
                onTap: () {},
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  const Text(
                    'Events Listing',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 700,
                  ),
                  AppElevatedButton(
                    label: 'Add Event',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 30),
              DataTable(
                border: TableBorder.all(
                  color: Colors.grey,
                ),
                columns: const [
                  DataColumn(
                    label: Text(
                      'Title',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Level',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Delivery',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Language',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Listing Start Date',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Listing End Date',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Event start Date',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Duration',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
                rows: const [
                  DataRow(
                    cells: [
                      DataCell(Text(
                        'Event 1',
                        style: TextStyle(color: Colors.blue),
                      )),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text(
                        'Event 2',
                        style: TextStyle(color: Colors.blue),
                      )),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text(
                        'Event 3',
                        style: TextStyle(color: Colors.blue),
                      )),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 200),
            ],
          ),
        ),
      ),
    );
  }
}
