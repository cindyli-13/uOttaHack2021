import 'package:flutter/material.dart';
import 'package:echoar_package/echoar_package.dart';
import 'package:flutter_3d_obj/flutter_3d_obj.dart';

// ******************* CONSTANTS *******************

final buttonWidth = 180.0;
final buttonHeight = 50.0;

// ******************* GLOBE PAGE *******************

class GlobePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(children: [
        Title(),
        Headline(),
        Globe(),
        AnywhereButton(),
        // AcceptButton(),
      ]),
    );
  }
}

// ******************* TITLE *******************

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 70),
      child: Text('Welcome to the Globe!',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline3),
    );
  }
}

// ******************* HEADLINE *******************

class Headline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50),
      child: Text('Where are you travelling today?',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1),
    );
  }
}

// ******************* GLOBE *******************

class Globe extends StatefulWidget {
  @override
  _GlobeState createState() => _GlobeState();
}

class _GlobeState extends State<Globe> {
  String _globeHologramPath = "";
  EchoAR echoAR;
  Future<int> _f;

  @override
  void initState() {
    super.initState();
    _f = loadEchoAR();
  }

  Future<int> loadEchoAR() async {
    if (echoAR == null) echoAR = EchoAR(apiKey: "falling-resonance-5216");
    _globeHologramPath = await echoAR
        .getModelFromEntryId("8a822caa-00c5-4e3f-a6bd-ec3ba32e4458");
    return 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 300,
      margin: EdgeInsets.only(
        top: 30,
        bottom: 50,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: FutureBuilder<int>(
        future: _f,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          if (snapshot.hasData) {
            return Object3D(
              size: const Size(30.0, 30.0),
              path: _globeHologramPath,
              asset: true,
              zoom: 5.0,
            );
          } else {
            return Image.asset('assets/images/globe.png');
          }
        },
      ),
    );
  }
}

// ******************* ANYWHERE BUTTON *******************

class AnywhereButton extends StatefulWidget {
  @override
  _AnywhereButtonState createState() => _AnywhereButtonState();
}

class _AnywhereButtonState extends State<AnywhereButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      margin: EdgeInsets.only(
        top: 10,
      ),
      padding: EdgeInsets.only(
        top: 3,
        bottom: 3,
      ),
      child: RaisedButton(
        onPressed: buttonPressedHandler,
        child: Text(
          'Anywhere',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }

  void buttonPressedHandler() {
    Navigator.pushNamed(context, '/extra-filters');
  }
}

// ******************* ACCEPT BUTTON *******************

class AcceptButton extends StatefulWidget {
  @override
  _AcceptButtonState createState() => _AcceptButtonState();
}

class _AcceptButtonState extends State<AcceptButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.only(
        top: 3,
        bottom: 3,
      ),
      child: RaisedButton(
        onPressed: buttonPressedHandler,
        child: Text(
          'Accept',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }

  void buttonPressedHandler() {
    Navigator.pushNamed(context, '/extra-filters');
  }
}
