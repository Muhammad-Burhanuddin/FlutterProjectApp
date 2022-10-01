import 'package:flutter/material.dart';

import 'bookdetail.dart';
import 'yourbooks.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imagelist = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
  ];

  final List<String> generiesname = [
    'Biographics',
    'Fiction',
    'Engneering',
    ' History',
    'Biographics',
    'Fiction',
  ];
  final List<String> imagelists = [
    'assets/biographic.jpg',
    'assets/fiction.jpg',
    'assets/enginerring.webp',
    'assets/history.jpg',
  ];

  final List<String> borrowdays = [
    '2 days left',
    '3 days left',
    'Submitted',
    '4 days Left',
    'Submitted',
    '1 day left',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(236, 29, 42, 73),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Container(
                        width: 90.0,
                        height: 90.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                            color: Colors.white,
                            width: 4.0,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          child: Image.asset(
                            'assets/pp.jpeg',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Hello Burhan!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 280,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                fillColor:
                                    const Color.fromARGB(235, 93, 95, 121),
                                filled: true,
                                hintText: 'Search by book title,author, etc',
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(
                            'Top available for you!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => const YourBooks()));
                            },
                            child: const Text(
                              'View All',
                              style: TextStyle(
                                  color: Color.fromARGB(235, 93, 95, 121),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: imagelist.length,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(imagelist[index]));
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 20,
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Pick up popular generies!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: (){
  Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const BookDetail() ));
},
                        child: const Text(
                          'View All',
                          style: TextStyle(
                              color: Color.fromARGB(235, 93, 95, 121),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: SizedBox(
                    height: 150,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: imagelists.length,
                      itemBuilder: (context, index) {
                        return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Stack(
                                children: [
                                  SizedBox(
                                    height: 120,
                                    width: 120,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        imagelists[index],
                                        color: Colors.red.withOpacity(0.8),
                                        colorBlendMode: BlendMode.srcOver,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(40.0),
                                    child: Icon(Icons.home,
                                    color: Colors.white,
                                    size: 40,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                generiesname[index],
                                style: const TextStyle(
                                    color: Color.fromARGB(235, 93, 95, 121),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          width:20,
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Your Recently Borrowed Books',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        //onTap: (){
//   Navigator.of(context).push(MaterialPageRoute(builder: (_)=>  ))
// },
                        child: const Text(
                          'View All',
                          style: TextStyle(
                              color: Color.fromARGB(235, 93, 95, 121),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: SizedBox(
                    height: 180,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: imagelist.length,
                      itemBuilder: (context, index) {
                        return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(
                                height: 150,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    imagelist[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                borrowdays[index],
                                style: const TextStyle(
                                    color: Color.fromARGB(235, 93, 95, 121),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          width: 10,
                        );
                      },
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
