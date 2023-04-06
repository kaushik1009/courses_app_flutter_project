import 'package:courses_app/constants.dart';
import 'package:courses_app/state/filter_state_container.dart';
import 'package:flutter/material.dart';
import '../../strings.dart';
import 'filter_widget.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  late FilterState state;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    state = FilterStateContainer.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Strings.filter),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FilterWidget(
              value: Constants.iOSFilter,
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.iOS,
            ),
            FilterWidget(
              value: Constants.androidFilter,
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.android,
            ),
            FilterWidget(
              value: Constants.flutterFilter,
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.flutter,
            ),
            FilterWidget(
              value: Constants.sssFilter,
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.sss,
            ),
            FilterWidget(
              value: Constants.unityFilter,
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.unity,
            ),
            FilterWidget(
              value: Constants.macOSFilter,
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.macOS,
            ),
            FilterWidget(
              value: Constants.allFilter,
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.all,
            )
          ],
        ));
  }

  void _handleRadioValueChange(int? value) async {
    state.updateFilterValue(value ?? 0);
  }
}
