import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mediboard/core/res/image_resources.dart';
import 'package:mediboard/core/res/text_resources.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../widgets/app_bar.dart';
import '../widgets/each_card.dart';
import '../widgets/med_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.7,
  );
  int _currentSliderValue = 0;
  final Color _currentColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      left: true,
      top: true,
      right: true,
      maintainBottomViewPadding: true,
      minimum: EdgeInsets.zero,
      child: Scaffold(
        appBar: appBar(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          onPressed: () {},
          shape: const CircleBorder(),
          child: const Icon(
            Icons.grid_view_outlined,
            color: Colors.white,
            size: 40,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            Image.asset(
                              ImageResources.visits,
                              height: 90,
                              width: 90,
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              top: 0,
                              right: 5,
                              child: Container(
                                height: 20,
                                width: 20,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                child: const Text(
                                  "2",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Text(
                        TextResources.visits,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            Image.asset(
                              ImageResources.med,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        TextResources.med,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            Image.asset(
                              ImageResources.vac,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        TextResources.vac,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 250,
              child: Stack(
                children: [
                  PieChart(
                    PieChartData(
                        startDegreeOffset: 200,
                        centerSpaceRadius: 100,
                        sections: [
                          PieChartSectionData(
                            color: Colors.blue,
                            radius: 20,
                          ),
                          PieChartSectionData(
                            color: Colors.deepPurple,
                            radius: 20,
                          ),
                          PieChartSectionData(
                            color: Colors.orange,
                            radius: 20,
                          ),
                          PieChartSectionData(
                            color: Colors.redAccent,
                            radius: 20,
                          ),
                          PieChartSectionData(
                            color: Colors.green,
                            radius: 20,
                          ),
                        ]),
                  ),
                  Positioned.fill(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 190,
                          width: 200,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                TextResources.upcoming,
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "5 ${TextResources.activities}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            EachCard(
              color: Colors.blue[300] ?? Colors.blue,
              image: ImageResources.visits,
              text: TextResources.fVisit,
            ),
            const SizedBox(
              height: 10,
            ),
            const EachCard(
              color: Colors.amber,
              image: ImageResources.vac,
              text: TextResources.fVac,
            ),
            const SizedBox(
              height: 10,
            ),
            const EachCard(
              color: Colors.red,
              image: ImageResources.lab,
              text: TextResources.flab,
            ),
            const SizedBox(
              height: 10,
            ),
            const EachCard(
              color: Colors.pink,
              image: ImageResources.surg,
              text: TextResources.surg,
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Text(
                "Active medications",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 215,
              child: PageView(
                controller: pageController,
                children: [
                  MedCard(
                    day: "2/day",
                    text: "ENTRESTO, 100mg",
                  ),
                  MedCard(
                    text: "Spironolactone",
                    day: "1/day",
                  ),
                  MedCard(
                    day: "2/day",
                    text: "ENTRESTO, 100mg",
                  ),
                  MedCard(
                    text: "Spironolactone",
                    day: "1/day",
                  ),
                  MedCard(
                    day: "2/day",
                    text: "ENTRESTO, 100mg",
                  ),
                ],
              ),
            ),
            Center(
              child: SmoothPageIndicator(
                count: 5,
                controller: pageController,
                effect: const WormEffect(
                    dotWidth: 10,
                    spacing: 15,
                    dotHeight: 10,
                    dotColor: Colors.grey),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 20,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tracking Measures",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "See All 15",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: Colors.grey),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 18,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.white,
              child: Container(
                  padding: EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Feb 15, 2023",
                        style: TextStyle(fontSize: 18),
                      ),
                      Divider(),
                      Row(
                        children: [
                          Text(
                            "B12",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Expanded(child: Container()),
                          Text(
                            "173 pg/ml",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 25,
                            width: 90,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.red[100],
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              "Off Track",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Slider(
                        value: _currentSliderValue.toDouble(),
                        onChanged: (value) {
                          setState(() {
                            _currentSliderValue = value.toInt();
                          });
                        },
                        inactiveColor: _currentColor.withOpacity(0.5),
                        activeColor: _currentColor,
                        min: 0,
                        max: 100,
                        divisions: 100,
                        label: _currentSliderValue.toInt().toString(),
                      ),
                      const Text(
                        "Last test result: 154 pg/ml (90 days ago)",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
