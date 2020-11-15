import 'package:flutter/material.dart';

class ProgressBarButton extends StatelessWidget {
  const ProgressBarButton({
    Key key,
    this.borderData,
    this.colorData,
  }) : super(key: key);

  final Border borderData;
  final Color colorData;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: borderData,
      ),
      child: Padding(
        padding: EdgeInsets.all(1.0),
        child: Container(
          width: 15.0,
          height: 15.0,
          child: Container(
            decoration: new BoxDecoration(
              color: colorData,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}

// Reusable Card Widget

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  // This is a property, we can pass through the color based on the property
  // that we have created
  // When we put final to remove immutable error for the Class above
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
