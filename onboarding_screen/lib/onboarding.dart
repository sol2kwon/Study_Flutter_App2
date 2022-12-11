import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screen/main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: 'Welcome on board',
            body: 'How wonderful it is to be with you',
            image: Image.asset('image/boardingPage1.png'),
            decoration: getPageDecoration()),
        PageViewModel(
            title: 'Welcome on board',
            body: 'Tomorrow hopes we have learned something from yesterday.',
            image: Image.asset('image/boardingPage2.png'),
            decoration: getPageDecoration()),
        PageViewModel(
            title: 'Welcome on board',
            body: 'You can not change what you are but what you do',
            image: Image.asset('image/boardingPage3.png'),
            decoration: getPageDecoration()),
      ],
      done: const Text('done'),
      onDone: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MyPage()),
        ); //pushReplacement 뒤로가기 버튼 지우기
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
          color: Colors.cyan,
          size: const Size(10, 10),
          activeSize: Size(22, 10),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          activeColor: Colors.red),
      curve: Curves.bounceInOut, //애니메이션 효과
    );
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 1, 63, 114),
            fontWeight: FontWeight.bold),
        imagePadding: EdgeInsets.only(top: 40),
        pageColor: Color.fromARGB(255, 230, 199, 247));
  }
}
