import 'package:flutter/material.dart';





class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 50, 0, 0),
                  child: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.settings_sharp),
                        color: Colors.white,
                      )),
                ),
                Expanded(
                  child: Column(
                    children: const [
                      Text(
                        'My Profile ',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Divider(
                        height: 10,
                        thickness: 2,
                        endIndent: 100,
                        indent: 100,
                        color: Color(0xffd1aa5f),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Text(
                      'Mohamed',
                      style: TextStyle(fontSize: 22),
                    ),
                    Text('@Mohamed'),
                  ],
                ),
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    const CircleAvatar(
                      radius: 60,
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/facebook.png',
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.camera_alt),
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [
                    Text(
                      '3',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      ' Previous orders',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                //TOdo : TEST DIVIDER

                // Divider(thickness: 2,color: brown),
                Column(
                  children: const [
                    Text(
                      '1',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'current orders',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),

          ],
        ),
      ),
    );
  }
}
