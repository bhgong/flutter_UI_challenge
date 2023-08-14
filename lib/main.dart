import 'package:flutter/material.dart';
import 'widgets/currecy_card.dart';

class Player {
  String name;
  Player({required this.name});
}

void main() {
  // runApp(App());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/434x0w.jpg',
                          ),
                          radius: 35,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white10,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "+",
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 45,
                ),
                Text(
                  "MONDAY 16",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white.withOpacity(1),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Text(
                        "TODAY",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.purple,
                        size: 15,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "17",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "18",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "19",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "20",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "21",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "22",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "23",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "24",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "25",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "26",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const CurrencyCard(
                  date1: '11',
                  date2: '30',
                  date3: '12',
                  date4: '20',
                  name: 'DESIGN\nMEETING',
                  name2: 'ALEX',
                  name3: 'HELENA',
                  name4: 'NANA',
                  icon: Icons.euro_rounded,
                  order: 1,
                ),
                Transform.translate(
                  offset: const Offset(0, 20),
                  child: const CurrencyCard(
                    date1: '12',
                    date2: '35',
                    date3: '14',
                    date4: '10',
                    name: 'DAILY\nPROJECT',
                    name2: 'ME',
                    name3: 'RICHARD',
                    name4: 'CIRY',
                    icon: Icons.currency_bitcoin,
                    order: 2,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, 40),
                  child: const CurrencyCard(
                    date1: '15',
                    date2: '00',
                    date3: '16',
                    date4: '30',
                    name: 'WEEKLY \nPLANNING',
                    name2: 'DEN',
                    name3: 'NANA',
                    name4: 'MARK',
                    icon: Icons.attach_money_outlined,
                    order: 3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
