import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFFD1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender{
  male,female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
//Replaced by ternary operator...
  /*Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  //1=male , 2=female
  void updateColour(Gender selectedGender){
    if(selectedGender==Gender.male){
      if(maleCardColour==inactiveCardColour){
        maleCardColour = activeCardColour;
        femaleCardColour=inactiveCardColour;
      }else{
        maleCardColour=inactiveCardColour;

      }
    }

    if(selectedGender==Gender.female){
      if(femaleCardColour==inactiveCardColour){
        femaleCardColour = activeCardColour;
        maleCardColour=inactiveCardColour;
      }else{
        femaleCardColour=inactiveCardColour;
      }
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ResuableCard(
                    onPress: () {
                      setState(() {
                        selectedGender=Gender.male;
                        //updateColour(Gender.male);
                      });
                    },
                    child: ResuableCard(
                      colour: selectedGender==Gender.male?activeCardColour:inactiveCardColour,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.mars, label: 'MALE'),
                    )),
              ),
              Expanded(
                child: ResuableCard(
                  onPress: () {
                    setState(() {
                      selectedGender=Gender.female;
                      //updateColour(Gender.female);
                    });
                  },
                  child: ResuableCard(
                    colour: selectedGender==Gender.female?activeCardColour:inactiveCardColour,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                  ),
                ),
              ),
            ],
          )),
          Expanded(child: ResuableCard(colour: activeCardColour)),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(child: ResuableCard(colour: activeCardColour)),
              Expanded(child: ResuableCard(colour: activeCardColour)),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity, //to expand complete screen width
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
