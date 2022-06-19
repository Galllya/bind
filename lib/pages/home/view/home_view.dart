import 'package:bind_test/models/calendart_info.dart';
import 'package:bind_test/models/money_transfer_info.dart';
import 'package:bind_test/pages/home/widgets/day_strip.dart';
import 'package:bind_test/pages/home/widgets/dropdown_custom.dart';
import 'package:bind_test/pages/home/widgets/payment_strip.dart';
import 'package:bind_test/ui/colors.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String currentValue = 'USD Dollar';
  String typeValue = 'All';

  List<CalendarInfo> calendar = [
    CalendarInfo(
      informations: [
        MoneyTransferInfo(
            isReceipts: false,
            title: 'Pret A Manger',
            time: '12:23',
            money: 55.31,
            picName: 'pret'),
        MoneyTransferInfo(
          isReceipts: true,
          title: 'Darren Hodgkin',
          time: '12:23',
          money: 130.31,
        ),
        MoneyTransferInfo(
            isReceipts: false,
            title: 'MacDonalds',
            time: '12:23',
            money: 55.31,
            picName: 'mac'),
        MoneyTransferInfo(
            isReceipts: false,
            title: 'Starbucks',
            time: '12:23',
            money: 55.31,
            picName: 'sb'),
        MoneyTransferInfo(
          isReceipts: false,
          title: 'Dave Winklevoss',
          time: '12:23',
          money: 55.31,
        ),
      ],
      date: 'Yesterday',
    ),
    CalendarInfo(
      informations: [
        MoneyTransferInfo(
            isReceipts: false,
            title: 'Virgin Megastore',
            time: '12:23',
            money: 500.31,
            picName: 'virqin'),
        MoneyTransferInfo(
            isReceipts: false,
            title: 'Nike',
            time: '12:23',
            money: 500.31,
            picName: 'nike'),
      ],
      date: 'Sat, Dec 11',
    ),
    CalendarInfo(
      informations: [
        MoneyTransferInfo(
            isReceipts: false,
            title: 'Louis Vuitton',
            time: '12:23',
            money: 500.31,
            picName: 'lv'),
        MoneyTransferInfo(
            isReceipts: false,
            title: 'Carrefour',
            time: '12:23',
            money: 500.31,
            picName: 'carrefour'),
      ],
      date: 'Thurs, Dec 9',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 280,
          color: blackColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(
                    'assets/pictures/pic_usa.png',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 80,
                    ),
                    const Text(
                      'USD Account',
                      style: TextStyle(
                        color: greyColor,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'Hide',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            width: 0.5,
                            color: whiteColor,
                          ),
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      '\$',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      ' 180,970.83',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 24,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          color: darkColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Transactions History',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                DropdownCustom(
                    value: currentValue,
                    allValues: const ['USD Dollar', 'USD Dollar', 'USD Dollar'],
                    onChange: (String val) {
                      setState(() {
                        currentValue = val;
                      });
                    }),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: DropdownCustom(
                        value: typeValue,
                        onChange: (String val) {
                          setState(() {
                            typeValue = val;
                          });
                        },
                        allValues: const ['All', 'All', 'All'],
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(color: mainGreyColor, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.calendar_today,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
        for (int i = 0; i < calendar.length; i++)
          DayStrip(
            calendar: calendar[i],
          ),
        const SizedBox(
          height: 60,
        ),
      ],
    );
  }
}
