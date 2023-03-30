import 'package:eduwithu/screens/Edu/edu_digital_equality_complete_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(EduDigitalEqualityScreenApp());

class EduDigitalEqualityScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: EduDigitalEqualityScreen(),
    );
  }
}

class EduDigitalEqualityScreen extends StatefulWidget {
  EduDigitalEqualityScreen({Key? key}) : super(key: key);

  @override
  _EduDigitalEqualityScreenState createState() => _EduDigitalEqualityScreenState();
}

class _EduDigitalEqualityScreenState extends State<EduDigitalEqualityScreen> {
  get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xFF94E1D4),
        foregroundColor: Colors.black,
        title: const Text(
          'Digital Equality',
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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('현대인들은 휴대폰 없이는 삶을 상상할 수 없을 만큼 휴대폰을 많이 사용하고 있습니다. 하지만 지나치게 많은 시간을 휴대폰 앞에서 보내면 몸에 해로운 영향을 미칠 수 있습니다. 이에 따라 휴대폰을 적게 사용해야합니다.'
                        '먼저, 휴대폰 사용이 불안과 스트레스를 유발할 수 있습니다. 휴대폰으로 수시로 메시지나 이메일을 확인하면서 상황 파악과 응답을 바로 해야하는 경우, 지속적으로 긴장 상태에 놓이게 됩니다. 또한, 소셜미디어에서 타인의 이야기를 보며 비교하거나, 많은 정보들을 수용하면서 불안감이 생길 수 있습니다.'
                        '두 번째로, 휴대폰 사용이 사회성을 해치고 체력을 악화시킬 수 있습니다. 휴대폰을 자주 사용하는 사람들은 주변 사람들과 대화하는 시간이 줄어들고, 사회성이 떨어지는 경우가 많습니다. 또한, 스마트폰 사용이 눈과 손목 등을 비롯한 신체적 불편증상을 유발할 수 있습니다.'
                        '세 번째로, 휴대폰 사용이 집중력과 생산성을 저하시킬 수 있습니다. 휴대폰을 자주 사용하면 뇌가 계속해서 새로운 정보를 처리하고, 끊임없이 변화하는 내용을 따라가야 하기 때문에 집중력이 저하될 수 있습니다. 또한, 이러한 습관으로 인해 생산성이 떨어지고, 업무와 공부에 영향을 미칠 수 있습니다.'
                            '마지막으로, 휴대폰 사용이 안전에 위협을 줄 수 있습니다. 휴대폰을 운전 중 사용하면 교통사고가 발생할 가능성이 크며, 적극적으로 대처하지 않으면 사생활 침해 등 다양한 범죄에 노출될 가능성도 있습니다.'
                            '따라서, 휴대폰 사용량을 적게 유지하는 것이 좋습니다. 적극적으로 휴대폰 사용 시간을 줄이기 위해 일정한 시간을 정하고, 이를 지키며 스마트폰을 사용하는 것이 좋습니다.'
                            '   '
                            'Modern people use cell phones so much that they can not imagine life without them. However, spending too much time in front of your phone can have harmful effects on your body. As a result, you should use less cell phones.'
                            "First, cell phone use can cause anxiety and stress. If you need to check messages or e-mails from time to time on your phone and immediately understand and respond to the situation, you are constantly in a state of tension. Also, you may feel anxious while comparing other people's stories on social media or accepting a lot of information."
                        'Secondly, cell phone use can hurt your social skills and deteriorate your physical strength. People who use cell phones frequently spend less time talking to people around them and are often less social. Also, using a smartphone can cause physical discomfort, including eyes and wrists.'
                        'Third, cell phone use can reduce concentration and productivity. Frequent use of cell phones can reduce concentration because the brain continues to process new information and keep up with constantly changing content. Also, these habits can reduce productivity and affect work and study.'
                        'Lastly, cell phone use can pose a safety threat. If you use your cell phone while driving, there is a high possibility of traffic accidents, and if you do not actively respond, you may be exposed to various crimes such as invasion of privacy.'
                        "So, it's good to keep your cell phone usage low. In order to actively reduce cell phone usage time, it is recommended to set a certain time, keep it, and use your smartphone."

                        ),
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
                            builder: (context) => EduDigitalNextScreen()));
                  },
                  child: Text('Next'),
                )),
          ])),
      backgroundColor: const Color(0xFFE5F7F1),
    );
  }
}

