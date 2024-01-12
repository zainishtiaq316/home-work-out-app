import 'package:flutter/material.dart';
import 'package:homeworkout/Home/calenderScreen.dart';
import 'package:homeworkout/Widget/advancedStyle.dart';
import 'package:homeworkout/Widget/beginnerStyle.dart';
import 'package:homeworkout/Widget/discoverCard.dart';
import 'package:homeworkout/Widget/intermediateStyle.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedDate = 1;
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  late DateTime _firstDay;
  late DateTime _lastDay;
  @override
  void initState() {
    super.initState();
    _updateVisibleDays(_focusedDay);
  }

  void _updateVisibleDays(DateTime currentDate) {
    // Calculate the start and end of the current week
    _firstDay = currentDate.subtract(Duration(days: currentDate.weekday - 1));
    _lastDay = _firstDay.add(Duration(days: 6));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HOME WORKOUT",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: Row(
                  children: [
                    homeworkout(0, "WORKOUT"),
                    homeworkout(0, "kCAL"),
                    homeworkout(0, "MINUTE")
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 17, right: 17),
              child: Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(children: [
                  GestureDetector(
                    child: Row(
                      children: [
                        Text(
                          "WEEK GOAL",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.edit,
                          color: Colors.grey,
                          size: 12,
                        ),
                        Spacer(),
                        Text(
                          "0/1",
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  tableCalender()
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 17, right: 17),
              child: Text(
                "BEGINNER",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.only(left: 17, right: 17),
                child: BeginnerStyle()),
            Container(
              padding: EdgeInsets.only(left: 17, right: 17),
              child: Text(
                "Intermediate",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.only(left: 17, right: 17),
                child: IntermediateStyle()),
            Container(
              padding: EdgeInsets.only(left: 17, right: 17),
              child: Text(
                "ADVANCED",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.only(left: 17, right: 17),
                child: advancedStyle()),
            Container(
                padding: EdgeInsets.only(left: 17, right: 17),
                child: DiscoverCard())
          ],
        ),
      ),
    );
  }

  Widget homeworkout(int? num, String? activity) {
    return Expanded(
      child: Column(
        children: [
          Text(
            "$num",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text("${activity}")
        ],
      ),
    );
  }

  Widget date(int? num) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedDate = num!;
          });
          _navigateToCalendarScreen(context, selectedDate);
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "$num",
                style: TextStyle(
                    color: selectedDate == num
                        ? Colors.blue.shade900
                        : Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToCalendarScreen(BuildContext context, int selectedDate) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CalendarScreen(selectedDate: selectedDate),
      ),
    );
  }

  Widget tableCalender() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      child: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: TableCalendar(
          headerVisible: false,
          availableCalendarFormats: {
            CalendarFormat.week: 'Week',
          },
          calendarFormat: _calendarFormat,
          startingDayOfWeek: StartingDayOfWeek.monday,
          focusedDay: _focusedDay,
          firstDay: _firstDay,
          lastDay: _lastDay,
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: TextStyle(
              color: Colors.transparent,
            ),
            weekendStyle: TextStyle(
              color: Colors.transparent,
            ),
          ),
          selectedDayPredicate: (day) => isSameDay(day, _focusedDay),
          calendarBuilders:
              CalendarBuilders(defaultBuilder: (context, date, events) {
            return Container(
              margin: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSameDay(date, _focusedDay)
                    ? Colors.blue // Change color for the focused day
                    : Colors.transparent,
              ),
              child: Center(
                child: Text(
                  '${date.day}',
                  style: TextStyle(
                    color: isSameDay(date, _focusedDay)
                        ? Colors.white // Change text color for the focused day
                        : Colors.black,
                  ),
                ),
              ),
            );
          }),
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _focusedDay = selectedDay;
              _updateVisibleDays(_focusedDay);
            });
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => CalendarScreen(
                          selectedDate: selectedDate,
                        ))));
          },
        ),
      ),
    );
  }
}
