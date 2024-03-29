import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:nyxxtamdp/providers/app_providers.dart';
import 'package:nyxxtamdp/util/themeconfig.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => setTheme(),
    );
  }

  setTheme() {
    // If system is dark mode then mak ethe switch widget switched on
    if (MediaQuery.of(context).platformBrightness == Brightness.dark) {
      Provider.of<AppProvider>(context, listen: false)
          .setTheme(ThemeConfig.darkTheme, "dark");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(),
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text(
                "Dark Mode",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
              subtitle: Text("Use the dark mode"),
              trailing: Switch(
                value: Provider.of<AppProvider>(context).theme ==
                        ThemeConfig.lightTheme
                    ? false
                    : true,
                onChanged: (v) {
                  if (MediaQuery.of(context).platformBrightness !=
                      Brightness.dark) {
                    if (v) {
                      Provider.of<AppProvider>(context, listen: false)
                          .setTheme(ThemeConfig.darkTheme, "dark");
                    } else {
                      Provider.of<AppProvider>(context, listen: false)
                          .setTheme(ThemeConfig.lightTheme, "light");
                    }
                  }
                },
                activeColor: Theme.of(context).accentColor,
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
