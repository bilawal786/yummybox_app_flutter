import 'package:flutter/material.dart';
import 'package:yummy_box/widgets/drawer.dart';
import 'package:getwidget/getwidget.dart';

class MySupport extends StatelessWidget {
  const MySupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            SizedBox(
              width: 90,
            ),
            Text(
              "FAQ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      endDrawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              GFAccordion(
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "How Does Yummy Box Work?",
                content:
                    "On Yummy Box, you can save food from bakeries, greengrocers, supermarkets and all our partner merchants. Instead of throwing away their unsold items, our merchants compose and offer surprise baskets at a reduced price. It's simple: find a cart near you, book it on the app and show up at the store on the day and during the specified time slot. Once there, show your receipt to collect your basket. Congratulations, you've just made an anti-waste gesture, while benefiting from a good plan!",
              ),
              SizedBox(
                height: 10,
              ),
              GFAccordion(
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "Why can't you tell me what's in a waste basket?",
                content:
                    "Traders cannot predict exactly what they will have left at the end of the day. Instead of throwing good products away, these businesses offer what they have left in the form of a surprise basket. If there are more or fewer than expected, the number of baskets offered on the application can be adjusted. It is therefore always a surprise!",
              ),
              GFAccordion(
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "Why is there no store near me?",
                content:
                    "We are working to convince as many merchants as possible! The fight against food waste has no limit, do not hesitate to come back to the application in some time. In addition, you can help us by suggesting businesses near you. (Suggest a trade) Follow us on social networks to be informed of new merchants and new partner cities. (Facebook and Instagram)",
              ),
              GFAccordion(
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "Do i need to have my phone to pick up my basket?",
                content:
                    "Yes, it is necessary to have your phone to pick up your order. Arrived at the store, you will have to show your order to the staff who will validate it directly on your phone and then give you your surprise basket.",
              ),
              GFAccordion(
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "Can someone else pick up my basket?",
                content:
                    "To retrieve your basket, make sure you are logged into the Yummy Box account on which the reservation was made. Because, it is not possible to send your receipt to someone else.",
              ),
              GFAccordion(
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "Can i pay cash at the merchant?",
                content:
                    "No, all payment is done on the app. So collection is easier and faster! Besides, you can save time and money by topping up your YummyCoin! ",
              ),
              GFAccordion(
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "What is YummyCoin?",
                content:
                    "It is the internal currency of the application. So 1€ = 1000 YC Take advantage of our offers, the more you top up your YummyCoin account and the less they cost you. Example: if you top up your account with €50, you will receive 56000YC or €6 earned! Also, you have the opportunity to earn YummyCoin by participating in anti-waste actions led by our teams, by sponsoring a friend, by suggesting a business or by following our news on social networks.",
              ),
              GFAccordion(
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "How to earn YummyCoin with sponsorship?",
                content:
                    "Thanks to your sponsorship code, your loved ones will be able to benefit from 2000 YC when they register. To do this, copy the code available in the Sponsorship menu and transfer it to whomever you wish. In addition, for each of your referrals, you will also receive 2000 YC when your referral has used his earned YC!",
              ),
              GFAccordion(
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title:
                    "How do i earn YummyCoin with the recommendation of merchant near me?",
                content:
                    "Merchant referral is simple and earns you 10000 YC! To do this, click on the suggest a trade menu and enter the trader's information. Our sales department will contact this merchant to present the application and as soon as he becomes a Yummy Box Affiliate Partner, you will receive 10,000 YC. Moreover, if several of you recommend the same merchant, it is the first to have sent the recommendation who wins the bet.",
              ),
              GFAccordion(
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "How do i cancel my reservation?",
                content:
                    "You can cancel a reservation up to 2 hours after ordering by clicking Cancel Reservation in the Reservation section. If necessary, the refund will be made in YummyCoin. After this period, your order will be validated and cannot be modified.",
              ),
              GFAccordion(
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "How to contact in case of problem?",
                content:
                    "You can contact us at the following address: contact@yummybox.fr We do our best to respond to requests as quickly as possible. Please check your spam as our response may end up there.",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Color.fromARGB(255, 197, 54, 106),
        unselectedItemColor: Colors.black.withOpacity(.60),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Basket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Reservation',
          ),
        ],
      ),
    );
  }
}
