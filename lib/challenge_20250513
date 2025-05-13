import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 60),
              Padding(
                padding: EdgeInsets.all(10),                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      size: 60,
                      color: Colors.white,
                    ),
                    Icon(Icons.add_rounded, size: 60, color: Colors.white),
                  ],
                ), // Row
              ), // Padding
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MONDAY 16',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Row(
                      children: [
                        Text(
                          'TODAY',
                          style: TextStyle(color: Colors.white, fontSize: 60),
                        ),
                        SizedBox(width: 4),
                        Text(
                          '·',
                          style: TextStyle(
                            color: Color(0xFFFE34B7),
                            fontSize: 96,
                          ),
                        ),
                        SizedBox(width: 4),
                        Transform.translate(
                          offset: Offset(0, 0),
                          child: Text(
                            '17',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 48,
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(20, 0),
                          child: Text(
                            '18',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 48,
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(40, 0),
                          child: Text(
                            '19',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 48,
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(60, 0),
                          child: Text(
                            '20',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 48,
                            ),
                          ),
                        ),
                      ],
                    ), // Row
                  ],
                ), // Column
              ), // Padding
              ScheduleCard(
                startHour: '11',
                startMinute: '30',
                endHour: '12',
                endMinute: '20',
                text1: 'DESIGN',
                text2: 'MEETING',
                name1: 'ALEX',
                name2: 'HELENA',
                name3: 'NANA',
                name4: '',
                bgColor: Color(0xFFFAFF54),
              ), // ScheduleCard
              ScheduleCard(
                startHour: '12',
                startMinute: '35',
                endHour: '14',
                endMinute: '10',
                text1: 'DAILY',
                text2: 'PROJECT',
                name1: 'ME',
                name2: 'RICHARD',
                name3: 'CIRY',
                name4: '+4',
                bgColor: Color(0xFF9C6BCE),
              ), // ScheduleCard
              ScheduleCard(
                startHour: '15',
                startMinute: '00',
                endHour: '16',
                endMinute: '30',
                text1: 'WEEKLY',
                text2: 'PLANNING',
                name1: 'DEN',
                name2: 'NANA',
                name3: 'MARK',
                name4: '',
                bgColor: Color(0xFFBCEE4B),
              ), // ScheduleCard
            ],
          ),
        ),
      ),
    );
  }
}

class ScheduleCard extends StatelessWidget {
  final String startHour, startMinute, endHour, endMinute, text1, text2, name1, name2, name3, name4;
  final Color bgColor;

  ScheduleCard({
    super.key,
    required this.startHour,
    required this.startMinute,
    required this.endHour,
    required this.endMinute,
    required this.text1,
    required this.text2,
    required this.name1,
    required this.name2,
    required this.name3,
    required this.name4,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(48),
        ),
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Transform.translate(
                offset: Offset(0, -24),
                child: Column(
                  children: [
                    Text(
                      startHour,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      startMinute,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ), 
                    ),
                    Text(
                      endHour,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      endMinute,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ]
                ), // Column
              ), // Transform
              SizedBox(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Transform.translate(
                    offset: Offset(0, 0),
                    child: Text(
                      text1,
                      style: TextStyle(
                        fontSize: 72,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, -32),
                    child: Text(
                      text2,
                      style: TextStyle(
                        fontSize: 72,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        name1,
                        style: TextStyle(
                          color: (name1 == 'ME') ? Colors.black : Colors.black.withOpacity(0.6),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width:48),
                      Text(
                        name2,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width:48),
                      Text(
                        name3,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width:48),
                      Text(
                        name4,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ), // Row
                ]
              ), // Column
            ]
          ), // Row
        ), // Padding
      ) // Container
    ); // Padding
  }
}
