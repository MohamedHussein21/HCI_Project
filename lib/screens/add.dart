import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final TextEditingController searchControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40,right: 20,left: 20),
        child: Column(
          children: [
            Row(
              children:  [
                const CircleAvatar(
                  child: Icon(Icons.list),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: TextFormField(
                    controller: searchControl,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Colors.blue,
                      ),
                      labelText: "Search here..",
                      fillColor: Colors.white70,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      //fillColor: Colors.green
                    ),
                  ),
                ),
              ],
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
                Image(
                  image: const AssetImage('assets/images/imageL.jpg'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(txt!),
                      SizedBox(
                        height: 10,
                      ),
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
