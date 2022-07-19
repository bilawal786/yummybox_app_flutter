import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:getwidget/components/intro_screen/gf_intro_screen.dart';
import 'package:getwidget/components/intro_screen/gf_intro_screen_bottom_navigation_bar.dart';
import 'package:yummy_box/screens/login.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  late PageController _pageController;
  List<Widget> slideList = [];
  int initialPage = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    initialPage = _pageController.initialPage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GFIntroScreen(
        color: Colors.white,
        slides: slides(),
        pageController: _pageController,
        currentIndex: 1,
        pageCount: 5,
        introScreenBottomNavigationBar: GFIntroScreenBottomNavigationBar(
          pageController: _pageController,
          pageCount: slideList.length,
          currentIndex: initialPage,
          onForwardButtonTap: () {
            _pageController.nextPage(
                duration: const Duration(milliseconds: 100),
                curve: Curves.linear);
          },
          onBackButtonTap: () {
            _pageController.previousPage(
                duration: const Duration(milliseconds: 100),
                curve: Curves.linear);
          },
          onDoneTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Login()),);
          },
          doneButton: Text("COnfirm"),
          navigationBarColor: Colors.white,
          showDivider: false,
          activeColor: Colors.grey,
        ),
      ),
    );
  }

  List<Widget> slides() {
    slideList = [

      GFImageOverlay(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(16),
        child: Container(
          margin: const EdgeInsets.only(top: 400),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Welcome to YUMMYBOX',
                  textAlign: TextAlign.center,
                  style: TextStyle(

                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Application that allows you to save the planet and save money.'
                      '\nActivate your geo-location and discover the merchants around you.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        color: Colors.orange,
        image: const AssetImage('assets/intro-1.jpg'),
        boxFit: BoxFit.cover,
        colorFilter:
        ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
        borderRadius: BorderRadius.circular(5),
      ),

      GFImageOverlay(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(16),
        child: Container(
          margin: const EdgeInsets.only(top: 400),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Todays lunch for dinner?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Our products are generally available during the day or evening.'
                  ,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        color: Colors.orange,
        image: const AssetImage('assets/intro-2.jpg'),
        boxFit: BoxFit.cover,
        colorFilter:
        ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
        borderRadius: BorderRadius.circular(5),
      ),


      GFImageOverlay(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(16),
        child: Container(
          margin: const EdgeInsets.only(top: 400),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Delicious unsold products',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Most of the products offered at Yummy Box are of the day.'
                  'Give them a second chance! They are still so good!'
                  ,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        color: Colors.orange,
        image: const AssetImage('assets/intro-3.jpg'),
        boxFit: BoxFit.cover,
        colorFilter:
        ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
        borderRadius: BorderRadius.circular(5),
      ),





      GFImageOverlay(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(16),
        child: Container(
          margin: const EdgeInsets.only(top: 400),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Collect your unsold basket',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Our secure payment allows you to order directly on the application and\n collect your basket on site, by showing your order\n to the staff of the establishment'
                  ,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        color: Colors.orange,
        image: const AssetImage('assets/intro-4.jpg'),
        boxFit: BoxFit.cover,
        colorFilter:
        ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
        borderRadius: BorderRadius.circular(5),
      ),


      GFImageOverlay(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(16),
        child: Container(
          margin: const EdgeInsets.only(top: 400),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Todays lunch for dinner?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Click on your favourite partner the on suscribe\n you will automatically recieve a notification\ as soon as he has products available.'
                  ,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        color: Colors.orange,
        image: const AssetImage('assets/intro-5.jpg'),
        boxFit: BoxFit.cover,
        colorFilter:
        ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
        borderRadius: BorderRadius.circular(5),
      ),


      GFImageOverlay(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(16),
        child: Container(
          margin: const EdgeInsets.only(top: 400),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Invite your friend to join the anti-waste community.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
              ),

            ],
          ),
        ),
        color: Colors.orange,
        image: const AssetImage('assets/intro-6.jpg'),
        boxFit: BoxFit.cover,
        colorFilter:
        ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
        borderRadius: BorderRadius.circular(5),
      ),


    ];
    return slideList;
  }
}
