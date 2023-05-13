import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

const Map<String, Icon> weatherIcon = {
  "Sunny": Icon(Icons.sunny),
  "Partly cloudy": Icon(Icons.wb_cloudy),
  "Rainy": Icon(Icons.cloudy_snowing),
  "Cloudy": Icon(Icons.wb_cloudy_sharp),
  "Clear": Icon(Icons.cloud),
  "Heavy rain": Icon(Icons.cloudy_snowing),
};

class DaysCell extends StatelessWidget {
  final String day;
  final String icon;
  final String temp;

  const DaysCell(
      {Key? key, required this.day, required this.icon, required this.temp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(icon);
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 10),

      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(8)),
      //MediaQuery.of(context).size.height/6,
      //width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            day,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            child: weatherIcon[icon],
          ),
          Text(
            temp,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
