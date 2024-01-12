import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  int? selectedDate;

  CalendarScreen({this.selectedDate});

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    void _onDaySelected(DateTime day, DateTime focusedDay) {
      setState(() {
        today = day;
      });
      Navigator.of(context).pop(widget.selectedDate);
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "History",
          style: TextStyle(
              color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            color: Colors.white,
            child: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: TableCalendar(
                  locale: "en_US",
                  rowHeight: 43,
                  headerStyle: HeaderStyle(
                      formatButtonVisible: false, titleCentered: true),
                  availableGestures: AvailableGestures.all,
                  focusedDay: today,
                  selectedDayPredicate: (day) => isSameDay(day, today),
                  firstDay: DateTime.utc(1900, 10, 16),
                  lastDay: DateTime.utc(3000, 3, 14),
                  onDaySelected: _onDaySelected,
                )),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';

// // ignore: must_be_immutable
// class CalendarScreen extends StatefulWidget {
//   int? selectedDate;

//   CalendarScreen({this.selectedDate});

//   @override
//   _CalendarScreenState createState() => _CalendarScreenState();
// }

// class _CalendarScreenState extends State<CalendarScreen> {
//   CalendarFormat _calendarFormat = CalendarFormat.week;
//   DateTime _focusedDay = DateTime.now();
//   late DateTime _firstDay;
//   late DateTime _lastDay;

//   @override
//   void initState() {
//     super.initState();
//     _updateVisibleDays(_focusedDay);
//   }

//   void _updateVisibleDays(DateTime currentDate) {
//     // Calculate the start and end of the current week
//     _firstDay = currentDate.subtract(Duration(days: currentDate.weekday - 1));
//     _lastDay = _firstDay.add(Duration(days: 6));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade100,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Text(
//           "History",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 13,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height * 0.15,
//             color: Colors.white,
//             child: Padding(
//               padding: const EdgeInsets.only(top: 0),
//               child: TableCalendar(
//                 headerVisible: false,
//                 availableCalendarFormats: {
//                   CalendarFormat.week: 'Week',
//                 },
//                 calendarFormat: _calendarFormat,
//                 startingDayOfWeek: StartingDayOfWeek.monday,
//                 focusedDay: _focusedDay,
//                 firstDay: _firstDay,
//                 lastDay: _lastDay,
//                 daysOfWeekStyle: DaysOfWeekStyle(
//                   weekdayStyle: TextStyle(
//                     color: Colors.transparent, // Make weekday text transparent
//                   ),
//                   weekendStyle: TextStyle(
//                     color: Colors.transparent, // Make weekend text transparent
//                   ),
//                 ),
//                 selectedDayPredicate: (day) => isSameDay(day, _focusedDay),
//                 onDaySelected: (selectedDay, focusedDay) {
//                   setState(() {
//                     _focusedDay = selectedDay;
//                     _updateVisibleDays(_focusedDay);
//                   });
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
