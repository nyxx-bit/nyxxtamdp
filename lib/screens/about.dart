import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:nyxxtamdp/util/constants.dart';
import 'package:nyxxtamdp/util/profile_list_item.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                const Text(
                  'Profile',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 30,
                ),
                AvatarImage(),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Anggap Aja Universe',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins"),
                ),
                // const Text(
                //   'Tugas Akhir Praktikum MDP 2021',
                //   style: TextStyle(fontWeight: FontWeight.w300),
                // ),
                // const SizedBox(height: 15),
                // const Text(
                //   'Seorang Newbie yang Sedang Belajar Flutter',
                //   textAlign: TextAlign.center,
                //   style: TextStyle(fontSize: 15, fontFamily: "Poppins"),
                // ),
                const SizedBox(height: 10),
                ProfileListItems(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// class AppBarButton extends StatelessWidget {
//   final IconData icon;

//   const AppBarButton({this.icon});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 55,
//       height: 55,
//       decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: Colors.grey.shade200,
//           boxShadow: [
//             BoxShadow(
//               // color: kLightBlack,
//               offset: Offset(1, 1),
//               // blurRadius: 10,
//             ),
//             BoxShadow(
//               // color: kWhite,
//               offset: Offset(-1, -1),
//               // blurRadius: 10,
//             ),
//           ]),
//       child: Icon(
//         icon,
//         color: fCL,
//       ),
//     );
//   }
// }

class AvatarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8),
      // decoration: avatarDecoration,
      child: Container(
        // decoration: avatarDecoration,
        padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/ghava.jpeg'),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileListItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const <Widget>[
          ProfileListItem(
            icon: LineAwesomeIcons.user,
            text: 'Al Khawarismi Atma Pratama',
            hasNavigation: false,
          ),
          ProfileListItem(
            icon: LineAwesomeIcons.linkedin,
            text: 'alkhawarismi',
            hasNavigation: true,
          ),
          ProfileListItem(
            icon: LineAwesomeIcons.gofore,
            text: 'alkhawarismi989@gmail.com',
            hasNavigation: true,
          ),
          ProfileListItem(
            icon: LineAwesomeIcons.phone,
            text: '+62 821 8279 0655',
            hasNavigation: false,
          ),
          ProfileListItem(
            icon: LineAwesomeIcons.github,
            text: 'nyxx-bit',
            hasNavigation: true,
          ),
        ],
      ),
    );
  }
}
