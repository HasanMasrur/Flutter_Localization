import 'package:Flutter_Localization/Language.dart';
import 'package:Flutter_Localization/localization/demo_localization.dart';
import 'package:Flutter_Localization/localization/localization_constants.dart';
import 'package:Flutter_Localization/main.dart';
import 'package:Flutter_Localization/routes/route_name.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  _languagecode(Language language) {
    Locale _temp;
    switch (language.languageCode) {
      case ENGLISH:
        _temp = Locale(language.languageCode, 'US');
        break;
      case BANGLA:
        _temp = Locale(language.languageCode, 'BD');
        break;
      default:
        _temp = Locale(ENGLISH, 'US');
    }
    MyApp.setLocales(context, _temp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: _drowerpage(),
        appBar:
            AppBar(title: Text(getTranslated(context, 'home_page')), actions: [
          Padding(
              padding: EdgeInsets.all(8),
              child: DropdownButton(
                onChanged: (language) {
                  _languagecode(language);
                },
                icon: Icon(
                  Icons.language,
                  color: Colors.white,
                ),
                underline: SizedBox(),
                items: Language.languageList()
                    .map<DropdownMenuItem>(
                      (lang) => DropdownMenuItem(
                          value: lang,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [Text(lang.flag), Text(lang.name)],
                          )),
                    )
                    .toList(),
              ))
        ]),
        body: _mainform());
  }

  _mainform() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 30, right: 30, top: 20),
        child: Form(
            key: _globalKey,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                TextFormField(
                  validator: (val) {
                    if (val.isEmpty) {
                      return DemoLocalizations.of(context)
                          .getTranslatedValue('validation');
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'name',
                    hintText: DemoLocalizations.of(context)
                        .getTranslatedValue('username'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (val) {
                    if (val.isEmpty) {
                      return DemoLocalizations.of(context)
                          .getTranslatedValue('validation');
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: DemoLocalizations.of(context)
                        .getTranslatedValue('useremail'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (val) {
                    if (val.isEmpty) {
                      return DemoLocalizations.of(context)
                          .getTranslatedValue('validation');
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'password',
                    hintText: DemoLocalizations.of(context)
                        .getTranslatedValue('userpassword'),
                  ),
                ),
                MaterialButton(
                    color: Colors.red,
                    child: Text(
                      'submit',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      if (!_globalKey.currentState.validate()) {
                        return;
                      }
                    })
              ],
            )),
      ),
    );
  }

  _drowerpage() {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('about'),
            onTap: () {
              Navigator.pushNamed(context, aboutRoute);
            },
          )
        ],
      ),
    );
  }
}
