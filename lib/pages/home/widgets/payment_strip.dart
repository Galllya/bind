import 'package:bind_test/models/money_transfer_info.dart';
import 'package:flutter/material.dart';

import '../../../ui/colors.dart';

class PaymentStrip extends StatelessWidget {
  final MoneyTransferInfo info;
  const PaymentStrip({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: mainGreyColor),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                info.picName == null
                    ? info.isReceipts
                        ? const Icon(
                            Icons.arrow_circle_left_outlined,
                            size: 32,
                          )
                        : const Icon(
                            Icons.arrow_circle_right_outlined,
                            size: 32,
                          )
                    : CircleAvatar(
                        radius: 16,
                        backgroundImage: AssetImage(
                          'assets/pictures/pic_${info.picName}.png',
                        ),
                      ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      info.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      info.time,
                      style: const TextStyle(
                        fontSize: 12,
                        color: greyColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              info.isReceipts
                  ? '+ \$${info.money} USD'
                  : '- \$${info.money} USD',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
