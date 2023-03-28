import 'package:flutter/material.dart';
import 'edu_gender_equality_complete_screen.dart';

void main() => runApp(EduGenderEqualityScreenApp());

class EduGenderEqualityScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: EduGenderEqualityScreen(),
    );
  }
}

class EduGenderEqualityScreen extends StatefulWidget {
  EduGenderEqualityScreen({Key? key}) : super(key: key);

  @override
  _EduGenderEqualityScreenState createState() => _EduGenderEqualityScreenState();
}

class _EduGenderEqualityScreenState extends State<EduGenderEqualityScreen> {
  get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xFF94E1D4),
        foregroundColor: Colors.black,
        title: const Text(
          'Gender Equality',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      // VideoPlayerController가 초기화를 진행하는 동안 로딩 스피너를 보여주기 위해
      // FutureBuilder를 사용합니다.
      body: SingleChildScrollView(
          child: Column(children: [
            Center(
                child: Container(
                    margin: EdgeInsets.all(30),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: SingleChildScrollView(
                      child: Text('성평등은 남성과 여성이 같은 권리와 기회를 가지며, 사회에서 동등하게 대우받는 것을 말합니다. 하지만 여전히 많은 국가에서 여성에 대한 차별과 성폭력 등의 문제가 존재합니다. 이에 따라 성평등을 실현하기 위해서는 여러 가지 개선점이 필요합니다.'
                          '먼저, 교육 환경에서의 성평등이 필요합니다. 교육은 성평등을 실현하는 데 매우 중요한 역할을 합니다. 따라서 교육기관은 성평등 교육을 진행하고, 성차별이나 성폭력 등의 문제가 발생할 경우 적극적으로 대처해야 합니다.'
                          '두 번째로, 법적인 지원이 필요합니다. 성범죄나 성차별 등의 문제가 발생할 경우, 법적인 제재를 받을 수 있도록 법적 지원이 필요합니다. 또한, 이를 실질적으로 이행하는 체제가 필요합니다.'
                          '세 번째로, 여성의 경제적 독립을 지원해야 합니다. 여성이 경제적으로 독립하고, 자신의 삶을 스스로 결정할 수 있도록 돕는 것이 성평등을 실현하는 가장 좋은 방법입니다. 따라서 여성들이 경제적으로 독립하고 자신의 가능성을 최대한 발휘할 수 있는 제도적인 지원이 필요합니다.'
                          '네 번째로, 남성의 역할에 대한 인식을 바꿔야 합니다. 성평등을 실현하기 위해서는 남성과 여성 모두가 성별에 상관없이 능력과 역할을 발휘할 수 있도록 하는 것이 중요합니다. 따라서 남성들도 성평등에 대한 인식을 바꾸고, 여성들의 가능성을 인정하는 사회문화적인 변화가 필요합니다.'
                          '마지막으로, 사회적 지원 시스템을 개선해야 합니다. 여성들이 일과 가족을 동시에 챙기기 위해서는 사회적인 지원이 필요합니다. 따라서 근로시간 유연화나 육아휴직 등의 제도적인 지원이 필요합니다.'
                          '성평등은 사회의 모든 구성원이 함께 실현할 수 있는 목표입니다. 모두가 함께 노력하고, 개선점을 인식하여 문제를 해결해야 합니다.'
                          '   '
                         "Gender equality refers to men and women having the same rights and opportunities and being treated equally in society. However, there are still problems such as discrimination against women and sexual violence in many countries. Accordingly, various improvements are needed to realize gender equality"
                          "First, gender equality in the educational environment is necessary. Education plays a very important role in achieving gender equality. Therefore, educational institutions should conduct gender equality education and actively respond to problems such as gender discrimination or sexual violence."
                          "Secondly, legal aid is needed. In the event of problems such as sex crimes or gender discrimination, legal support is needed to be subject to legal sanctions. In addition, we need a system that actually implements this."
                          "Thirdly, we need to support women's economic independence. Helping women become economically independent and decide their own lives is the best way to achieve gender equality. Therefore, institutional support is needed so that women can become economically independent and reach their full potential."
                          "Fourthly, we need to change our perception of men's roles. In order to realize gender equality, it is important to ensure that both men and women can exercise their abilities and roles regardless of gender. Therefore, men also need to change their perceptions of gender equality and social and cultural changes that recognize the possibilities of women."
                          "Lastly, we need to improve our social support system. Women need social support to take care of their work and family at the same time. Therefore, institutional support such as flexible working hours and parental leave is needed."
                          "Gender equality is a goal that all members of society can realize together. We need to work together, recognize the improvements, and solve the problem."
                      ),
                    ))),
            const SizedBox(height: 30),
            Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF94E1D4),
                    onPrimary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EduGenderNextScreen()));
                  },
                  child: Text('Next'),
                )),
          ])),
      backgroundColor: const Color(0xFFE5F7F1),
    );
  }
}


