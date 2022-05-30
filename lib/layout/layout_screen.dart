import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manasty/shared/component/component.dart';

import 'package:manasty/shared/remote/layout/manasty_layout_cubit.dart';
import 'package:manasty/shared/remote/layout/manasty_layout_states.dart';

class LayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ManastyLayoutCubit, ManastyLayoutStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = ManastyLayoutCubit.get(context);

        return Scaffold(

          body: cubit.showScreens[cubit.currentIndex],
          bottomNavigationBar: Container(
            height: 70,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: BottomNavigationBar(
              unselectedItemColor: Colors.grey[50],
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeBottomNavigationBar(index);
              },

              items: [
                BottomNavigationBarItem(
                  backgroundColor: Colors.indigoAccent,
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.indigoAccent,
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.indigoAccent,
                  icon: Icon(Icons.play_arrow),
                  label: 'Play',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.indigoAccent,
                  icon: Icon(Icons.chat),

                  label: 'Chat',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.indigoAccent,
                  icon: Icon(Icons.person),
                  label: 'Settings',
                ),
              ],
              selectedItemColor: Colors.orange.shade700,
            ),
          ),
        );
      },
    );
  }
}
