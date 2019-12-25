import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable-card.dart';
import 'custom-gender.dart';
import 'gender-enum.dart';
import 'constants.dart';
import 'custom-FAB.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: new ReusableCard(
                  onPressed: () {
                    setState(() {
                      gender = Gender.MALE;
                    });
                  },
                  color: gender == Gender.MALE
                      ? activeCardColor
                      : inactiveCardColor,
                  customWidget: new CustomColumnWidget(
                    iconData: FontAwesomeIcons.mars,
                    gender: 'Male',
                  ),
                )),
                Expanded(
                    child: new ReusableCard(
                  onPressed: () {
                    setState(() {
                      gender = Gender.FEMALE;
                    });
                  },
                  color: gender == Gender.FEMALE
                      ? activeCardColor
                      : inactiveCardColor,
                  customWidget: new CustomColumnWidget(
                    iconData: FontAwesomeIcons.venus,
                    gender: 'Female',
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: new ReusableCard(
                  color: activeCardColor,
                  customWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: textStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: numberStyle,
                          ),
                          Text(
                            'CM',
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 20),
                            activeTrackColor: Colors.white,
                            thumbColor: Color(0xFFEB1555),
                            overlayColor: Color(0x29EB1555),
                            overlayShape:
                                RoundSliderThumbShape(enabledThumbRadius: 30)),
                        child: Slider(
                            value: height.toDouble(),
                            min: 110,
                            max: 300,
                            onChanged: (double newHeight) {
                              setState(() {
                                height = newHeight.toInt();
                              });
                            }),
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: new ReusableCard(
                  color: activeCardColor,
                  customWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('WEIGHT', style: textStyle),
                      Text(weight.toString(), style: numberStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CustomFAB(
                              icon: Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  (this.weight--).toDouble();
                                });
                              }),
                          SizedBox(
                            width: 10,
                          ),
                          CustomFAB(
                              icon: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  (this.weight++).toDouble();
                                });
                              })
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: new ReusableCard(
                        color: activeCardColor,
                        customWidget: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('AGE', style: textStyle),
                            Text(age.toString(), style: numberStyle),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                CustomFAB(
                                    icon: Icon(
                                      FontAwesomeIcons.minus,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        (this.age--).toDouble();
                                      });
                                    }),
                                SizedBox(
                                  width: 10,
                                ),
                                CustomFAB(
                                    icon: Icon(
                                      FontAwesomeIcons.plus,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        (this.age++).toDouble();
                                      });
                                    })
                              ],
                            )
                          ],
                        ))),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            width: double.infinity,
            height: buttonHeight,
          )
        ],
      ),
//      floatingActionButton: Theme(
//        data: ThemeData(accentColor: Colors.white),
//        child: FloatingActionButton(
//          child: Icon(Icons.add),
//        ),
//      ),
    );
  }
}
