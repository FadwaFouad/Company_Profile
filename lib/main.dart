import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Design App',
      theme: ThemeData(
        backgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Container(
            // padding: const EdgeInsets.all(20),
            child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Profile(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Search(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Statistics(),
            ),
            const Goals(),
          ],
        )));
  }
}

@override
Widget build(BuildContext context) {
  return Container(
    color: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey.shade300,
          ),
          child: const Icon(
            Icons.home_outlined,
            size: 30,
            color: Colors.black87,
          ),
        ),
        const Icon(
          Icons.pie_chart_rounded,
          size: 30,
          color: Colors.grey,
        ),
        const Icon(
          Icons.calendar_month_sharp,
          size: 30,
          color: Colors.grey,
        ),
        const Icon(
          Icons.person_outline,
          size: 30,
          color: Colors.grey,
        ),
      ],
    ),
  );
}

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Company Goals",
                  style: Theme.of(context).textTheme.headline6,
                ),
                const Text(
                  "ALL",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.check_circle,
                            size: 15,
                          ),
                          SizedBox(width: 3),
                          Text("Cybersecurity Teams")
                        ],
                      ),
                      Text("Active",
                          style: TextStyle(color: Colors.grey.shade500))
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Conduct Phishing Simulations Between Companies",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: Colors.grey.shade600,
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_outlined,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Ends in 24 days",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // topic
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Statistics",
              style: Theme.of(context).textTheme.headline6,
            ),
            const Text(
              "MONTH",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(height: 10),
        //attacks
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.blueGrey.shade900,
                  child: const Icon(
                    Icons.key,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(width: 5),
                const Text(
                  "Security Attacks",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.arrow_upward, color: Colors.green.shade300),
                Text(
                  "68%",
                  style: TextStyle(
                      color: Colors.green.shade300,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),

        // second items (bunched)
        const SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.blueGrey.shade900,
                  child: const Icon(
                    Icons.fingerprint_outlined,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(width: 5),
                const Text(
                  "Producted Bunches",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.arrow_downward, color: Colors.red.shade300),
                Text(
                  "38%",
                  style: TextStyle(
                      color: Colors.red.shade300, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        // third item
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.blueGrey.shade900,
                  child: const Icon(
                    Icons.sports_basketball_outlined,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(width: 5),
                const Text(
                  "Runtime Cost",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Text(
              "\$6 235",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.black87,
      )),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Icon(
            Icons.search_sharp,
            color: Colors.grey,
            size: 30,
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "SEARCH",
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black87,
              ),
              gradient: LinearGradient(
                colors: [
                  Colors.green.shade800,
                  Colors.green.shade600,
                  Colors.green.shade300,
                  Colors.amberAccent.shade200,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.menu,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Michile Safiranov',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'Manger at CNN',
                style: TextStyle(color: Colors.grey.shade500),
              ),
            ],
          ),
        ),
        Icon(
          Icons.people,
          color: Colors.green.shade800,
        ),
      ],
    );
  }
}
