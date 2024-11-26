import 'package:flutter/material.dart';
import 'package:mmproject/Button.dart';
import 'package:mmproject/MoneyCard.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Hey, Selena",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "Welcom back!",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "\$5,194,482",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      textColor: Colors.black,
                      backColor: Color(0xFFF2B33A),
                      text: 'Transfer',
                    ),
                    Button(
                      textColor: Colors.white,
                      backColor: Color(0xFF1F2133),
                      text: 'Request',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const MoneyCard(
                  Kind: 'Euro',
                  amount: '6,532',
                  code: 'EUR',
                  MoneyIcon: Icons.euro_sharp,
                  Isinvert: true,
                ),
                Transform.translate(
                  offset: const Offset(0, -30),
                  child: const MoneyCard(
                    Kind: 'Bitcoin',
                    amount: '98,000',
                    code: 'BTC',
                    MoneyIcon: Icons.currency_bitcoin,
                    Isinvert: false,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -50),
                  child: const MoneyCard(
                    Kind: 'Dollar',
                    amount: '43,200',
                    code: 'USD',
                    MoneyIcon: Icons.attach_money_sharp,
                    Isinvert: true,
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
