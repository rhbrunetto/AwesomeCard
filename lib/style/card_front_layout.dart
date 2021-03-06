import 'package:flutter/material.dart';

class CardFrontLayout {
  String bankName;
  String cardNumber;
  String cardExpiry;
  String cardHolderName;
  Widget cardTypeIcon;
  double cardWidth;
  double cardHeight;
  Color textColor;
  Color color;
  String hintCardNumber;
  String hintCardExpiry;
  String hintCardHolderName;

  CardFrontLayout({
    this.bankName = "",
    this.cardNumber = "",
    this.cardExpiry = "",
    this.cardHolderName = "",
    this.cardTypeIcon,
    this.cardWidth = 0,
    this.cardHeight = 0,
    this.textColor,
    this.color,
    this.hintCardNumber,
    this.hintCardExpiry,
    this.hintCardHolderName,
  });

  Widget layout1() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 30,
                child: Center(
                  child: Text(
                    bankName,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: new Image.asset(
                    'images/contactless_icon.png',
                    fit: BoxFit.fitHeight,
                    width: 30.0,
                    height: 30.0,
                    color: textColor,
                    package: 'awesome_card',
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          cardNumber == null || cardNumber.isEmpty
                              ? (hintCardNumber ?? 'XXXX XXXX XXXX XXXX')
                              : cardNumber,
                          style: TextStyle(
                              package: 'awesome_card',
                              color: textColor,
                              fontWeight: FontWeight.w500,
                              fontFamily: "MavenPro",
                              fontSize: 22),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              (hintCardExpiry ?? 'Exp. Date'),
                              style: TextStyle(
                                package: 'awesome_card',
                                color: textColor,
                                fontFamily: "MavenPro",
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              cardExpiry == null || cardExpiry.isEmpty
                                  ? "MM/YY"
                                  : cardExpiry,
                              style: TextStyle(
                                  package: 'awesome_card',
                                  color: textColor,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "MavenPro",
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          cardHolderName == null || cardHolderName.isEmpty
                              ? (hintCardHolderName ?? 'Card Holder')
                              : cardHolderName,
                          style: TextStyle(
                              package: 'awesome_card',
                              color: textColor,
                              fontWeight: FontWeight.w500,
                              fontFamily: "MavenPro",
                              fontSize: 17),
                        ),
                      ],
                    ),
                    Flexible(
                      flex: 5,
                      child: cardTypeIcon,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
