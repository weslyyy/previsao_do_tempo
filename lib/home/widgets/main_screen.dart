import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:previsao_do_tempo/home/widgets/weather.dart';
import 'package:previsao_do_tempo/model/forecast.dart';
import 'package:previsao_do_tempo/shared/find_icon.dart';

class MainScreen extends StatelessWidget {
  final Map data;
  final int numberOfDays = 7;

  const MainScreen({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(this.data["temp"]);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              top: 80,
              bottom: 35,
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text(
                  this.data["city"],
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  this.data["date"],
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(
                  height: 37,
                ),
                SvgPicture.asset(
                  FindIcon(
                    this.data["condition_slug"],
                  ),
                  width: 50,
                ),
                Text(
                  "${this.data["temp"]}°",
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  this.data["description"],
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: SvgPicture.asset(
                    "assets/images/vento.svg",
                  ),
                ),
                Text(
                  this.data["wind_speedy"],
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 60,
                  child: ListView.builder(
                    itemBuilder: builder,
                    itemCount: numberOfDays,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget builder(BuildContext context, int index) {
    Forecast forecast = Forecast(
      dayOfWeek: this.data["forecast"][index]["weekday"],
      icon: FindIcon(this.data["forecast"][index]["condition"]),
      temperature: this.data["forecast"][index]["max"],
    );
    return Weather(forecast);
  }
}
