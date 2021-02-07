import 'package:flutter/material.dart';

// ******************* CONSTANTS *******************

final buttonWidth = 150.0;
final buttonHeight = 50.0;

final dropdownWidth = 300.0;
final dropdownHeight = 40.0;

final textFieldWidth = 300.0;
final textFieldHeight = 40.0;

final textFormBackgroundColor = Colors.white;

// ******************* SIGN UP INFO *******************

class ExtraFiltersPage extends StatefulWidget {
  @override
  _ExtraFiltersPageState createState() => _ExtraFiltersPageState();
}

class _ExtraFiltersPageState extends State<ExtraFiltersPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: Column(children: [
          Headline(),
          ProgramSelect(),
          GradYearSelect(),
          CallCapacitySelect(),
          OtherKeywordsTextField(),
          Container(
            margin: EdgeInsets.only(
              top: 70,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BackButton(),
                LetsGoButton(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

// ******************* HEADLINE *******************

class Headline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 100,
        bottom: 50,
      ),
      child: Text('Almost There!',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline3),
    );
  }
}

// ******************* UNIVERSITY SELECT *******************

class ProgramSelect extends StatefulWidget {
  @override
  _ProgramSelectState createState() => _ProgramSelectState();
}

class _ProgramSelectState extends State<ProgramSelect> {
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dropdownWidth,
      height: dropdownHeight,
      margin: EdgeInsets.only(
        top: 50,
      ),
      child: DropdownButton<String>(
        isExpanded: true,
        value: dropdownValue,
        icon: Icon(Icons.keyboard_arrow_down),
        iconSize: 24,
        elevation: 16,
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        hint: Text(
          'Program',
          style: TextStyle(color: Colors.grey),
        ),
        items: <String>[
          'Any',
          'Accounting & Finance',
          'Computer Science',
          'Engineering',
          'Psychology',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

// ******************* GRAD YEAR SELECT *******************

class GradYearSelect extends StatefulWidget {
  @override
  _GradYearSelectState createState() => _GradYearSelectState();
}

class _GradYearSelectState extends State<GradYearSelect> {
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dropdownWidth,
      height: dropdownHeight,
      margin: EdgeInsets.only(
        top: 50,
      ),
      child: DropdownButton<String>(
        isExpanded: true,
        value: dropdownValue,
        icon: Icon(Icons.keyboard_arrow_down),
        iconSize: 24,
        elevation: 16,
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        hint: Text(
          'Graduation Year',
          style: TextStyle(color: Colors.grey),
        ),
        items: <String>[
          '2021',
          '2022',
          '2023',
          '2024',
          '2025',
          '2026',
          '2027',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

// ******************* GRAD YEAR SELECT *******************

class CallCapacitySelect extends StatefulWidget {
  @override
  _CallCapacitySelectState createState() => _CallCapacitySelectState();
}

class _CallCapacitySelectState extends State<CallCapacitySelect> {
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dropdownWidth,
      height: dropdownHeight,
      margin: EdgeInsets.only(
        top: 50,
      ),
      child: DropdownButton<String>(
        isExpanded: true,
        value: dropdownValue,
        icon: Icon(Icons.keyboard_arrow_down),
        iconSize: 24,
        elevation: 16,
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        hint: Text(
          'Call Capacity',
          style: TextStyle(color: Colors.grey),
        ),
        items: <String>[
          '2',
          '3',
          '4',
          '5',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

// ******************* OTHER KEYWORDS TEXT BOX *******************

class OtherKeywordsTextField extends StatefulWidget {
  @override
  _OtherKeywordsTextFieldState createState() => _OtherKeywordsTextFieldState();
}

class _OtherKeywordsTextFieldState extends State<OtherKeywordsTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: textFieldWidth,
      height: textFieldHeight,
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Other Keywords',
        ),
      ),
    );
  }
}

// ******************* BACK BUTTON *******************

class BackButton extends StatefulWidget {
  @override
  _BackButtonState createState() => _BackButtonState();
}

class _BackButtonState extends State<BackButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      padding: EdgeInsets.only(
        top: 3,
        bottom: 3,
      ),
      child: RaisedButton(
        onPressed: buttonPressedHandler,
        child: Text(
          'Back',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }

  void buttonPressedHandler() {
    Navigator.pop(context);
  }
}

// ******************* LET'S GO BUTTON *******************

class LetsGoButton extends StatefulWidget {
  @override
  _LetsGoButtonState createState() => _LetsGoButtonState();
}

class _LetsGoButtonState extends State<LetsGoButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      padding: EdgeInsets.only(
        top: 3,
        bottom: 3,
      ),
      child: RaisedButton(
        onPressed: buttonPressedHandler,
        child: Text(
          "Let's Go",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }

  void buttonPressedHandler() {
    return;
  }
}
