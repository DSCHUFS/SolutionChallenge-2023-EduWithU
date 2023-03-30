import 'package:eduwithu/screens/Edu/edu_environment_complete_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(EduEnvironmentScreenApp());

class EduEnvironmentScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: EduEnvironmentScreen(),
    );
  }
}

class EduEnvironmentScreen extends StatefulWidget {
  EduEnvironmentScreen({Key? key}) : super(key: key);

  @override
  _EduEnvironmentScreenState createState() => _EduEnvironmentScreenState();
}

class _EduEnvironmentScreenState extends State<EduEnvironmentScreen> {
  get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xFF94E1D4),
        foregroundColor: Colors.black,
        title: const Text(
          'EduEnvironment',
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Text('환경 보호는 우리가 사는 지구의 지속 가능한 발전을 위해 매우 중요합니다. 인간은 환경을 파괴하면서 살아가고 있는데, 이는 지구 생태계와 생물 다양성에 영향을 미치고, 그 결과로 인간의 건강과 복지에 직간접적인 영향을 미칩니다. 따라서 환경 보호는 우리 모두가 해야할 책임이며, 개인적으로도 우리의 행동과 선택이 환경에 큰 영향을 미칩니다.'
                        '먼저, 일상생활에서 우리가 할 수 있는 환경 보호 방법 중 가장 쉬운 것은 에너지 절약입니다. 불필요한 전기와 수도 사용을 줄이고, 대중교통을 이용하거나 친환경 자동차를 사용하는 등의 방법으로 에너지를 절약할 수 있습니다. 또한 일회용품 사용을 줄이고, 분리수거를 잘하는 것도 매우 중요합니다.'
                    '두 번째로, 환경에 해를 끼치는 산업과 기업들은 환경 보호를 위해 노력해야 합니다. 기업들은 친환경 제품을 개발하고 생산과정에서 친환경적인 방법을 사용하여 환경 오염을 최소화하는 것이 중요합니다. 또한 산업 분야에서는 대기 오염, 수질 오염 등의 문제를 예방하고 해결하기 위한 노력이 필요합니다.'
                        '세 번째로, 정부와 국제사회의 참여와 지원이 필요합니다. 정부는 환경 보호를 위한 법과 제도를 제정하고, 이를 철저하게 시행하여 환경 파괴를 방지해야 합니다. 또한 국제적인 협력과 지원이 필요합니다. 지구 환경 문제는 국경을 넘어 세계적인 문제이기 때문에, 국제적인 협력과 지원이 중요합니다.'
                        '마지막으로, 환경 보호는 우리 모두의 책임입니다. 개인적인 노력과 선택이 환경에 큰 영향을 미치기 때문에, 우리는 환경을 보호하고 지속 가능한 발전을 위해 노력해야 합니다. 예를 들어, 쓰레기를 버릴 때는 분리수거를 하고, 대중교통을 이용하거나 친환경 자동차를 사용하며, 에너지를 절약하는 삶을 생활화 해야 합니다.'
                        '   '
                        'Environmental protection is very important for the sustainable development of our planet. Humans live by destroying the environment, which affects global ecosystems and biodiversity, and as a result, directly or indirectly affects human health and well-being. Therefore, environmental protection is a responsibility for all of us, and personally, our actions and choices have a huge impact on the environment.'
                        'First of all, the easiest way to protect the environment in our daily lives is to save energy. You can save energy by reducing unnecessary electricity and water use, and by using public transportation or using eco-friendly cars. It is also very important to reduce the use of disposable products and recycle them well.'
                        'Second, industries and businesses that harm the environment should strive to protect the environment. It is important for companies to develop eco-friendly products and minimize environmental pollution by using eco-friendly methods in the production process. In addition, in the industrial sector, efforts are needed to prevent and solve problems such as air pollution and water pollution.'
                        'Thirdly, we need the participation and support of the government and the international community. The government should enact laws and systems to protect the environment and implement them thoroughly to prevent environmental destruction. International cooperation and support are also needed. International cooperation and support are important because global environmental issues are global beyond borders.'
                        'Finally, environmental protection is our responsibility. Since personal efforts and choices have a great impact on the environment, we must protect the environment and strive for sustainable development. For example, when you throw away trash, you should separate and collect, use public transportation, use eco-friendly cars, and make a life that saves energy.'
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
                    builder: (context) => EduEnvironmentNextScreen()));
          },
          child: Text('Next'),
        )),
      ])),
      backgroundColor: const Color(0xFFE5F7F1),
    );
  }
}
