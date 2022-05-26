import 'package:flutter/material.dart';


class Notificationview extends StatefulWidget {
  const Notificationview({Key? key}) : super(key: key);

  @override
  State<Notificationview> createState() => _NotificationviewState();
}

class _NotificationviewState extends State<Notificationview> {
  final items = ['Sort by time', 'Sort by name', 'Sort by data'];
  String defualtitem = 'Sort by time';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      )),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'NOTIFICATIONS',
                          style: TextStyle(fontSize: 22),
                        ),
                        Divider(
                          indent: 60,
                          height: 15,
                          thickness: 2,
                          endIndent: 80,
                          color: Color(0xffd1aa5f),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    buildDropdownButton(),
                  ],
                ),
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => buildItems(
                        context: context,
                        txt: 'place Name',
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [

                            Text(
                              'Price',
                              style: TextStyle(color: Color(0xffd1aa5f)),
                            ),
                            Text(
                              '12000',
                            ),
                          ],
                        ),
                        onTap: () {}),
                    separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(),
                    itemCount: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
  DropdownButton<String> buildDropdownButton() {
    return DropdownButton(
      iconEnabledColor: const Color(0xffd1aa5f),
      items: items
          .map(
            (items) =>
            DropdownMenuItem(value: items, child: Text(items)),
      )
          .toList(),
      onChanged: (String? val) {
        setState(() {
          defualtitem = val!;
        });
      },
      value: defualtitem,
    );
  }
  Column buildItems({
    Widget? circleAvatar,
    required BuildContext context,
    String? txt,
    Widget? child,
    GestureTapCallback? onTap,
  }) {
    return Column(
      children: [
        Container(
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: const BoxDecoration(
            color: Colors.white70,
            // boxShadow: const [BoxShadow(color: white, blurRadius: 6)],
          ),
          child: InkWell(
            onTap: onTap,
            child: Row(

              children: [
                Image(image: const AssetImage('assets/images/imageL.jpg'),),
                const SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    children: [
                      Text(txt!),
                      SizedBox(height: 10,),
                      const Text('ِشويه معلومات عن المكان'),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: 10,
                  ),
                ),
                InkWell(
                  onTap: onTap,
                  child: child,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

}
