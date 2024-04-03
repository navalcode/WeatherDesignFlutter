import 'package:babel_weather/presentation/screens/weather_screen/weather_screen_constants.dart';
import 'package:babel_weather/presentation/styles/weather_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: WSConstants.sunnyBoxDecoration,
          child: SafeArea(
              child: ListView(
                children: const[
                  LiveWeatherWidget(),
                  HourlyWeatherWidget(),
                  DailyWeatherWidget()
                ],
              ),
          ),
        ),
      ),
    );
  }
}

class LiveWeatherWidget extends StatelessWidget {
  const LiveWeatherWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.05),
      //margin: EdgeInsets.only(top: 15.00),
      child: Column(
        children: [
          Text(
            "Mi Ubicación",
            style: WeatherTextStyle.tittleTextStyle,
          ),
          Text(
            "Oficinas de Babel",
            style: WeatherTextStyle.subTittleTextStyle,
          ),
          Text(
            "26º",
            style: WeatherTextStyle.bigTemperatureTextStyle,
          ),
          Text(
            "Soleado",
            style: WeatherTextStyle.bodyTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                child: Text(
                  "Máx. 28º",
                  style: WeatherTextStyle.bodyTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                child: Text(
                  "Mín. 15º",
                  style: WeatherTextStyle.bodyTextStyle,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class HourlyWeatherWidget extends StatelessWidget {
  const HourlyWeatherWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(right: 15, left: 15, top: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), boxShadow: [BoxShadow(color: Color.fromARGB(49, 0, 0, 0))]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Se esperan condiciones soleadas para todo el día",
                style: WeatherTextStyle.smallBodyTextStyle,
              ),
              const Divider(),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 30,
                  itemBuilder: (context, index){
                      return const HourlyItemWidget();
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HourlyItemWidget extends StatelessWidget {
  const HourlyItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Ahora", style: WeatherTextStyle.smallBodyTextStyle,),
        SvgPicture.asset("assets/animated/clear-day.svg",width: 50, height: 50,),
        Text("26º", style: WeatherTextStyle.smallBodyTextStyle),
      ],
    );
  }
}

class DailyWeatherWidget extends StatelessWidget {
  const DailyWeatherWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(right: 15, left: 15, top: 15, bottom: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), boxShadow: [BoxShadow(color: Color.fromARGB(49, 0, 0, 0))]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 20, left: 8),
                    child: Icon(Icons.calendar_month, color: Color(0x92FFFFFF),)),
                  Text(
                    "Predicción 10 días",
                    style: WeatherTextStyle.smallBodyTranlucidTextStyle,
                  ),
                ],
              ),
              const Divider(),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index){
                      return DailyItemWidget();
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DailyItemWidget extends StatelessWidget {
  const DailyItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("Hoy", style: WeatherTextStyle.smallBodyTextStyle,),
        SvgPicture.asset("assets/animated/clear-day.svg",width: 50, height: 50,),
        Text("15º", style: WeatherTextStyle.smallBodyTextStyle),
        Container(
          height: 5,
          width: 80,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.blue,Color(0xFFECB324)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight
            ),
            borderRadius: BorderRadius.circular(20)
          ),
        ),
        Text("28º", style: WeatherTextStyle.smallBodyTextStyle),
      ],
    );
  }
}
