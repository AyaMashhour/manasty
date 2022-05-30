
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manasty/shared/bloc_observe.dart';
import 'package:manasty/shared/local/cache_helper.dart';
import 'package:manasty/shared/local/end_point.dart';
import 'package:manasty/shared/remote/layout/manasty_layout_cubit.dart';
import 'package:manasty/shared/remote/layout/manasty_layout_states.dart';
import 'package:manasty/shared/theme_data/dark_theme.dart';
import 'package:manasty/shared/theme_data/light_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'layout/layout_screen.dart';
import 'modules/boarding_screen.dart';
import 'modules/logins/login_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();


  BlocOverrides.runZoned(() => null ,blocObserver: MyBlocObserver());

  // DioHelper.init();


  bool onBoarding = CacheHelper.getData(key: 'onBoarding');
  token = CacheHelper.getData(key: 'token');

  print(onBoarding);
  print(token);
  Widget widget;
  if (onBoarding != null) {
    if (token != null)
      widget = LayoutScreen();
    else
      widget = LoginScreen();
  }
  else
    widget = OnBoardingScreen();

  runApp(MyApp(onBoarding, widget));
}

class MyApp extends StatelessWidget {
  final bool onBoarding;
  final Widget startWidget;

  MyApp(this.onBoarding, this.startWidget);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>ManastyLayoutCubit(),

    child: BlocConsumer<ManastyLayoutCubit,ManastyLayoutStates>(
    listener: (context,state){},
    builder: (context ,state)
    {
    return MaterialApp(
//color:       Color(0xff001187),



    debugShowCheckedModeBanner: false,
    home: startWidget,
    );
    }));

    //   BlocProvider(
    //   create: (context)=>ShopLayoutCubit()..getHomeData()..getCategoriesData()..getFavoritesData()..getProfileData(),
    //
    //   child: BlocConsumer<ShopLayoutCubit,ShopLayoutStates>(
    //     listener: (context,state){},
    //     builder: (context ,state)
    //     {
    //       return MaterialApp(
    //         theme: lightTheme,
    //         debugShowCheckedModeBanner: false,
    //         home: startWidget,
    //       );
    //     },
    //
    //   ),
    // );
  }
}