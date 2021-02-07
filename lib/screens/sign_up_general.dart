import 'package:flutter/material.dart';
import 'package:campus_cloud/common/backdrop.dart';

// ******************* CONSTANTS *******************

final buttonWidth = 150.0;
final buttonHeight = 50.0;

final dropdownWidth = 300.0;
final dropdownHeight = 40.0;

// ******************* SIGN UP GENERAL *******************

class SignUpGeneral extends StatefulWidget {
  @override
  _SignUpGeneralState createState() => _SignUpGeneralState();
}

class _SignUpGeneralState extends State<SignUpGeneral> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: Column(children: [
          Backdrop(),
          UniversitySelect(),
          GradYearSelect(),
          LanguageSelect(),
          Container(
            margin: EdgeInsets.only(
              top: 60,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BackButton(),
                NextButton(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

// ******************* UNIVERSITY SELECT *******************

class UniversitySelect extends StatefulWidget {
  @override
  _UniversitySelectState createState() => _UniversitySelectState();
}

class _UniversitySelectState extends State<UniversitySelect> {
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
          'University',
          style: TextStyle(color: Colors.grey),
        ),
        items: <String>[
          'University of Waterloo',
          'Carleton University',
          'Other'
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

// ******************* LANGUAGE SELECT *******************

class LanguageSelect extends StatefulWidget {
  @override
  _LanguageSelectState createState() => _LanguageSelectState();
}

class _LanguageSelectState extends State<LanguageSelect> {
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
          'Lanugage',
          style: TextStyle(color: Colors.grey),
        ),
        items: <String>[
          'English',
          'French',
          'Other',
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
    Navigator.pushNamed(context, '/');
  }
}

// ******************* NEXT BUTTON *******************

class NextButton extends StatefulWidget {
  @override
  _NextButtonState createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
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
          'Next',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }

  void buttonPressedHandler() {
    Navigator.pushNamed(context, '/sign-up-info');
  }
}
