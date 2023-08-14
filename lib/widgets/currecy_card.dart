import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, name2, name3, name4;
  final String date1, date2, date3, date4;
  final IconData icon;
  final _blackColor = const Color(0xFF1F2123);
  final whiteColor = Colors.white;
  final int order;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.name2,
    required this.name3,
    required this.name4,
    required this.date1,
    required this.date2,
    required this.date3,
    required this.date4,
    required this.icon,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: (order % 2) != 0 ? Colors.yellow : Colors.deepPurple[300],
          borderRadius: BorderRadius.circular(40)),
      child: Padding(
        padding: const EdgeInsets.all(35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  date1,
                  style: TextStyle(
                    color: _blackColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  date2,
                  style: TextStyle(
                    color: _blackColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '|',
                  style: TextStyle(
                    color: _blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  date3,
                  style: TextStyle(
                    color: _blackColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  date4,
                  style: TextStyle(
                    color: _blackColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: _blackColor,
                    fontSize: 47,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name2,
                      style: TextStyle(
                        color: (order % 2) != 0 ? Colors.grey : _blackColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      name3,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      name4,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              // Icon을 overflow할 때 사용
              scale: 2.2,
              child: Transform.translate(
                // Icon의 X, Y좌표를 움직이기 위해서 사용함
                offset: Offset(-5, (order - 1) * 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
