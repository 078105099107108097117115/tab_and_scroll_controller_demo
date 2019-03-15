import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 100.0,
        width: 100.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 10.0,
            runSpacing: 10.0,
            runAlignment: WrapAlignment.center,
            children: <Widget>[
              Text('Get the comprehensive report on our online page.',
            style: Theme.of(context).textTheme.title,),
              Text('For further instructions, we have a dedicated customer support team on standby for you.',
              style: Theme.of(context).textTheme.subtitle,),
              Text('Our intuitive and interactive chatbot, Lucy, can also be of assistance when it is nighttime CET.Thank You',
              style: Theme.of(context).textTheme.body1),
          ]),
        ),
      ),
    );
  }
}
