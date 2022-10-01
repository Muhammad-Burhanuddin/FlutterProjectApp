import 'package:flutter/material.dart';

class YourBooks extends StatefulWidget {
  const YourBooks({super.key});

  @override
  State<YourBooks> createState() => _YourBooksState();
}

class _YourBooksState extends State<YourBooks> {
  final List<String> imagelist = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(236, 29, 42, 73),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
          child: ListBooks(imagelist: imagelist),
        ),
      ),
    );
  }
}

class ListBooks extends StatelessWidget {
  const ListBooks({
    Key? key,
    required this.imagelist,
  }) : super(key: key);

  final List<String> imagelist;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          Text(
            'Your Books',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
          ),
          Icon(
            Icons.notifications,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
      SizedBox(
        height: 30,
      ),
      Expanded(
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Card(
                    elevation: 20,
                    color: Color.fromARGB(237, 62, 63, 84),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 110.0, right: 20, top: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Thinking about Water',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'By Nirat Bhatagnar',
                                style: TextStyle(
                                    color: Color.fromARGB(235, 93, 95, 121),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '3 days Left',
                                style: TextStyle(
                                    color: Color.fromARGB(235, 93, 95, 121),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          const Text(
                            'Renew',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: SizedBox(
                    height: 130,
                    width: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        imagelist[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 20,
            );
          },
        ),
      ),
    ]);
  }
}
