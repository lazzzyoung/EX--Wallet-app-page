import 'package:flutter/material.dart';

class MoneyCard extends StatelessWidget {
  final String Kind, amount, code;
  final IconData MoneyIcon;
  final bool Isinvert;

  final _blackcolor = const Color(0xFF1F2133);
  const MoneyCard({
    super.key,
    required this.Kind,
    required this.amount,
    required this.code,
    required this.MoneyIcon,
    required this.Isinvert,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Isinvert ? _blackcolor : Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Kind,
                  style: TextStyle(
                    color: Isinvert ? Colors.white : _blackcolor,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: Isinvert ? Colors.white : _blackcolor,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                        color: Isinvert
                            ? Colors.white.withOpacity(0.8)
                            : _blackcolor.withOpacity(0.8),
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-5, 10),
                child: Icon(
                  MoneyIcon,
                  color: Isinvert ? Colors.white : _blackcolor,
                  size: 88,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
