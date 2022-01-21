import 'package:beutyme_app/pageview/pageview.dart';
import 'package:beutyme_app/pertanyaan1.dart';
import 'package:beutyme_app/test_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:beutyme_app/pageview/pageview.dart';

class OnBoardingPage extends StatefulWidget {
  OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

    void _onIntroEnd(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Pertanyaan1()));  
  }

  Widget _buildFullscrenImage() {
    return Image.asset(
      'assets/fullscreen.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

    Widget _buildImage(String assetName, [double width = 300]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
        const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.deepPurpleAccent,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.deepPurpleAccent,
      globalHeader: Align(
        alignment: Alignment.topRight,
        // child: SafeArea(
        //   child: Padding(
        //     padding: const EdgeInsets.only(top: 16, right: 16),
        //     child: _buildImage('flutter.png', 100),
        //   ),
        // ),
      ),
      globalFooter: SizedBox(
        width: double.infinity,
        height: 20,
        // child: ElevatedButton(  
        //   child: const Text(
        //     'Let\s go right away!',
        //     style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        //   ),
        //   onPressed: () => _onIntroEnd(context),
        // ),
      ),
      pages: [
        PageViewModel(
          title: "",
          body:
              "Identifikasi masalah kulitmu disini!",
          image: _buildImage('gambar1.png'),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: false,
            //bodyFlex: 1,
            imageFlex: 2,
          ),
        ),
        PageViewModel(
          title: "",
          body:
              "Mencatat produk dan tanggal kadaluarsa",
          image: _buildImage('produk.png'),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: false,
            //bodyFlex: 1,
            imageFlex: 2,
          ),
        ),
        PageViewModel(
          title: "",
          body:
              "Tahap perbaikan kulit",
          image: _buildImage('cermin.png'),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: false,
            //bodyFlex: 1,
            imageFlex: 2,
          ),
        ),
        
        PageViewModel(
          title: "",
          body: "Pola hidup dan kebiasaan",
          image: _buildImage('kegiatan.png'),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: false,
            //bodyFlex: 1,
            imageFlex: 2,
          ),
        ),
        PageViewModel(
          title: "",
          body: "Mulai!!!",
          image: _buildImage('logo beauty.png'),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: false,
            //bodyFlex: 1,
            imageFlex: 3,
          ),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text('Skip', style: TextStyle(color: Colors.purple),),
      next: const Icon(Icons.arrow_forward, color: Colors.purple,),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.purple)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}