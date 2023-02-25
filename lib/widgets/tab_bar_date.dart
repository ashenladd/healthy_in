import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

class TabBarDate extends StatefulWidget {
  const TabBarDate({Key? key}) : super(key: key);

  @override
  State<TabBarDate> createState() => _TabBarDateState();
}

class _TabBarDateState extends State<TabBarDate> {
  late final List<DateTime> dates;
  late final List<Tab> tabs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final now = DateTime.now();
    final formatter = DateFormat('EEE MMM d');
    dates = List.generate(7, (index) => now.add(Duration(days: index)));
    tabs = dates
        .map((date) => Tab(
              text: formatter.format(date),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Date Tab Bar'),
          bottom: TabBar(
            isScrollable: true,
            tabs: tabs,
          ),
        ),
        body: TabBarView(
          children: dates
              .map((date) => Center(
                    child: Text(
                      'Date: ${DateFormat('yyyy-MM-dd').format(date)}',
                      style: const TextStyle(fontSize: 24),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
