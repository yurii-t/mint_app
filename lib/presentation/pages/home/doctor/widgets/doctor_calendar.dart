import 'dart:math';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mint_app/data/data.dart';
import 'package:mint_app/data/models/session.dart';
import 'package:mint_app/gen/assets.gen.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/sessions/bloc/sessions_bloc.dart';
import 'package:mint_app/routes/app_router.gr.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';
import 'package:table_calendar/table_calendar.dart';

class DocotorCalendar extends StatefulWidget {
  const DocotorCalendar({
    required this.doctor,
    this.session,
    this.sessionsBloc,
    super.key,
  });
  final Doctor doctor;
  final Session? session;
  final SessionsBloc? sessionsBloc;

  @override
  State<DocotorCalendar> createState() => _DocotorCalendarState();
}

class _DocotorCalendarState extends State<DocotorCalendar> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  final _pageController = PageController();
  int pageIdx = 0;
  DateTime? pickedItem;
  List<DateTime> workHours = [];
  List<DateTime> bookedDate = [];
  DateTime t = DateTime.now().toUtc();

  @override
  void initState() {
    _generateDateTime();
    super.initState();
  }

  void _generateDateTime() {
    const int workDayInMonth = 25;
    const int doctorWorkHours = 17;
    final random = Random();

    for (var i = 1; i < DateTime.daysPerWeek; i++) {
      final rand = random.nextInt(workDayInMonth) + 1;

      bookedDate
          .add(DateTime(_focusedDay.year, _focusedDay.month, rand).toUtc());
    }

    workHours = List.generate(
      doctorWorkHours,
      (index) => DateTime(
        _focusedDay.year,
        _focusedDay.month,
        _focusedDay.day,
        12,
        0,
      ).add(Duration(minutes: index * 30)),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.68,
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: 5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                indent: 160,
                endIndent: 160,
                thickness: 4,
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.close),
                  ),
                  Text(
                    '${l10n.chooseAvailable} ${pageIdx == 0 ? l10n.date : l10n.time}',
                    style: AppTextStyles.boldNormal,
                  ),
                  const Icon(
                    Icons.close,
                    color: Colors.transparent,
                  ),
                ],
              ),
              if (pageIdx == 0)
                const SizedBox.shrink()
              else
                SizedBox(
                  height: 10.h,
                ),
              if (pageIdx == 0)
                const SizedBox.shrink()
              else
                Text(
                  l10n.chooseTheRightTimeToBook,
                  style: AppTextStyles.regularTextGrey,
                ),
              if (pageIdx == 0)
                const SizedBox.shrink()
              else
                SizedBox(
                  height: 10.h,
                ),
              if (pageIdx == 0)
                const SizedBox.shrink()
              else
                GestureDetector(
                  onTap: () {
                    _pageController.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                    setState(() {
                      pageIdx--;
                    });
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const $AssetsIconsGen().calendar.svg(),
                        Container(
                          margin: const EdgeInsets.only(
                            right: 16,
                            left: 16,
                          ),
                          width: 2,
                          color: AppColors.lightGrey,
                        ),
                        Text(
                          DateFormat('dd.MM.yyyy')
                              .format(_selectedDay ?? DateTime.now()),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  children: [
                    TableCalendar<Widget>(
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2130, 3, 14),
                      focusedDay: _focusedDay,
                      selectedDayPredicate: (day) {
                        return isSameDay(_selectedDay, day);
                      },
                      holidayPredicate: (day) =>
                          bookedDate.any((element) => day.day == element.day),
                      onDaySelected: (selectedDay, focusedDay) {
                        final bookedDay =
                            !bookedDate.any((e) => e.day == selectedDay.day);

                        if (!isSameDay(_selectedDay, selectedDay) &&
                            bookedDay) {
                          setState(() {
                            _selectedDay = selectedDay;
                          });
                        }
                      },
                      calendarStyle: CalendarStyle(
                        holidayDecoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        holidayTextStyle:
                            const TextStyle(color: AppColors.lightGrey),
                        weekendTextStyle:
                            const TextStyle(color: AppColors.lightGrey),
                        todayTextStyle: const TextStyle(color: Colors.black),
                        todayDecoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.blue),
                        ),
                        selectedTextStyle: const TextStyle(color: Colors.black),
                        selectedDecoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.amber),
                        ),
                      ),
                      headerStyle: const HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                      ),
                    ),
                    GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 50,
                        childAspectRatio: 1 / 1,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: workHours.length,
                      itemBuilder: (context, index) {
                        final hour = workHours[index];

                        return InkWell(
                          onTap: () {
                            setState(
                              () {
                                pickedItem = hour;
                              },
                            );
                          },
                          child: Container(
                            width: 48,
                            height: 38,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: hour == pickedItem
                                    ? AppColors.blue
                                    : Colors.transparent,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                            ),
                            child: Center(
                              child: Text(
                                DateFormat('HH:mm').format(hour),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          right: 10,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(MediaQuery.of(context).size.width, 50),
            ),
            child: Text(l10n.continueButton),
            onPressed: () {
              if (pageIdx == 0) {
                setState(() {
                  pageIdx++;
                });
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              } else {
                final currentSeesionBloc = widget.sessionsBloc;
                final currentSession = widget.session;
                if (currentSession != null && currentSeesionBloc != null) {
                  currentSeesionBloc.add(SessionsEvent.rescheduleSession(
                    oldSession: currentSession,
                    newSession: Session(
                      id: currentSession.id,
                      doctor: currentSession.doctor,
                      bookedDateTime: DateTime(
                        _selectedDay?.year ?? DateTime.now().year,
                        _selectedDay?.month ?? DateTime.now().month,
                        _selectedDay?.day ?? DateTime.now().day,
                        pickedItem?.hour ?? 0,
                        pickedItem?.minute ?? 0,
                      ),
                      notes: currentSession.notes,
                    ),
                  ));
                } else {
                  context.router.push(ConfirmBookingRoute(
                    doctor: widget.doctor,
                    bookedDateTime: DateTime(
                      _selectedDay?.year ?? DateTime.now().year,
                      _selectedDay?.month ?? DateTime.now().month,
                      _selectedDay?.day ?? DateTime.now().day,
                      pickedItem?.hour ?? 0,
                      pickedItem?.minute ?? 0,
                    ),
                  ));
                }
                context.router.pop();
              }
            },
          ),
        ),
      ],
    );
  }
}
