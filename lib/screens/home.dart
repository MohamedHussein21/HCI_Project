import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CircleAvatar(
                  child: Icon(Icons.list),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/imageL.jpg'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 1.3,
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
                ),
              ],
            ),
            SizedBox(height: 20,),
            const Text(
              'Catgories',textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, color: Colors.black,fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25,),
            SizedBox(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => buildCategoriesItems(),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 20,
                ),
                itemCount: 3,
              ),
            ),
            const SizedBox(height: 25,),
            const Text(
              'Popular places',textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, color: Colors.black,fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25,),
            SizedBox(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => const Image(
                  image: AssetImage('assets/images/imageL.jpg'),

                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 20,
                ),
                itemCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget buildCategoriesItems() => Stack(
    alignment: AlignmentDirectional.bottomCenter,
    children: [
      const Image(
        image: AssetImage('assets/images/imageL.jpg'),

        width: 150,
        height: 150,
        fit: BoxFit.cover,
      ),
      Container(
        color: Colors.black.withOpacity(0.8),
        width: 100,
        child: const Text(
          'Open air',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      )
    ],
  );

}
