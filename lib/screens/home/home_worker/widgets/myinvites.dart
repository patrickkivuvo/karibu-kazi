import 'package:flutter/material.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/home/home_employer/subscriptions/subscriptions.dart';

class MyInvites extends StatelessWidget {
  const MyInvites({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(height: 26),
          Text(
            "You are missing out on invitations ",
            style: TextStyle(
                color: TColor.placeholder,
                fontWeight: FontWeight.w400,
                fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            "Employers can invite pro-workers to bid and they will be immediately notified to bid first",
            style: TextStyle(
                color: TColor.secondaryText,
                fontWeight: FontWeight.w400,
                fontSize: 14),
            textAlign: TextAlign.center,
          ),
            const SizedBox(height: 30),
          SizedBox(
            height: 48,
            width: double.infinity,
            child: InkWell(
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SubscriptionsScreen(),
                        ),
                      );
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      Color.fromARGB(255, 201, 198, 198),
                      Color.fromARGB(255, 190, 164, 133),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/img/shield.png',
                          width: 20,
                          height: 20,
                        
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Subscribe to Pro",
                          style: TextStyle(
                              color: TColor.placeholder,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
