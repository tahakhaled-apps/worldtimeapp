import 'package:flutter/material.dart';
import 'package:worldtimeapi/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {

  void setupWorldTime()async{

    WorldTime instance = WorldTime(location: 'Egypt', flag: 'egypt.png', url: 'Africa/Cairo');
    await instance.getTime();
    //Future.delayed(2);
    Navigator.pushReplacementNamed(context, '/Home',arguments:
    {
      'location': instance.location,
      'flag' :instance.flag,
      'time':instance.time,
      'isDayTime' :instance.isDayTime,
    }
    );
  }
  @override
  void initState()
  {
    super.initState();
    setupWorldTime();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
        body:
        Center(
          child: SpinKitCubeGrid(
            color: Colors.white,
            size: 50.0,
          ),
        )
    );
  }
}
