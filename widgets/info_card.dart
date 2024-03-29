import 'package:covid_19/constants.dart';
//import 'package:covid_19/widgets/line_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'line_Chart.dart';


class InfoCard extends StatelessWidget {
  final String title;
  final int effectedNum;
  final Color iconColor;
  const InfoCard({
    Key? key, 
    this.title, 
    this.effectedNum, 
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        return Container(
           width: Constraints.maxWidth / 2 - 10,
           // Here contraints.maxwidth provides us the available width for the widget
           decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: iconColor.withOpacity(0.12), 
                          shape: BoxShape.circle
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/running.svg',
                          height: 12,
                          width: 12,
                          color: iconColor,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                        child: RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              color: kTextColor
                              ),
                            children: [
                              TextSpan(
                                text: "$effectedNum\n",
                                style: Theme.of(context)
                                  .textTheme
                                  .title
                                  .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const TextSpan(
                                text: "People", 
                                style: TextStyle(
                                  fontSize: 12,
                                  height: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Expanded(
                        child: LineReportChart(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      );
    }
  }