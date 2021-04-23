import 'file:///C:/AndroidStudioProjects/devquiznlw/lib/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'file:///C:/AndroidStudioProjects/devquiznlw/lib/challenge/widgets/quiz/quiz_widget.dart';
import 'package:devquiznlw/challenge/widgets/next_button/next_button_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: SafeArea(
            top: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButton(),
                QuestionIndicatorWidget(),
              ],
            )),
      ),
      body: QuizWidget(title: "O que o flutter faz em sua totalidade?"),

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: NextButtonWidget.white(
                  label: "Pular",
                  onTap: () {},
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Expanded(
                child: NextButtonWidget.green(label: "Confirmar", onTap: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
