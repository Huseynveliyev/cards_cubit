import 'package:cards_cubit/data/model/model_card.dart';
import 'package:flutter/cupertino.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({Key? key, required this.card}) : super(key: key);
  final CardModel card;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [Color(0xff323232), Color(0xff000000)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Text(
                  card.type,
                  style: const TextStyle(
                    color: CupertinoColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                const Text(
                  '|',
                  style: TextStyle(
                    color: CupertinoColors.systemGrey,
                    letterSpacing: 10,
                    fontSize: 12,
                  ),
                ),
                Text(
                  card.owner,
                  style: const TextStyle(
                    color: CupertinoColors.systemGrey,
                    fontSize: 12,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              'assets/images/chip.png',
              height: 25,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              card.number,
              style: const TextStyle(
                  color: CupertinoColors.systemGrey3,
                  fontSize: 18,
                  wordSpacing: 15,
                  shadows: [
                    BoxShadow(
                      blurRadius: 2,
                      spreadRadius: 2,
                      color: CupertinoColors.black,
                      offset: Offset(2, 2),
                    )
                  ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              card.expiration,
              style: const TextStyle(color: CupertinoColors.systemGrey),
            ),
          ],
        ),
      ),
    );
  }
}
