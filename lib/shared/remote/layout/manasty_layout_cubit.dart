import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manasty/modules/chat/chat_screen.dart';
import 'package:manasty/modules/course/courses_play.dart';
import 'package:manasty/modules/home/home_screen.dart';
import 'package:manasty/modules/search/search_screen.dart';
import 'package:manasty/modules/settings_screen.dart';
import 'package:manasty/shared/remote/layout/manasty_layout_states.dart';



class ManastyLayoutCubit extends Cubit<ManastyLayoutStates> {
  ManastyLayoutCubit() : super(LayoutInitialState());

  static ManastyLayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> showScreens = [
    HomeScreen(),
    SearchScreen(),
    CoursesPlayScreen(),
    ChatScreen(),
    SettingsScreen()
  ];

  void changeBottomNavigationBar(index) {
    currentIndex = index;
    emit(LayoutChangeNavigationBar());
  }

  // HomeModel homeModel;
  //
  // void getHomeData() {
  //   emit(LayoutLoadingHomeData());
  //   DioHelper.getData(url: HOME, token: token).then((value) {
  //     homeModel = HomeModel.fromJson(value.data);
  //     homeModel.data.products.forEach((element) {
  //       favorites.addAll({element.id: element.inFavorites});
  //     });
  //
  //     emit(LayoutSuccessHomeData());
  //   }).catchError((error) {
  //     print(error.toString());
  //     emit(LayoutErrorHomeData());
  //   });
  // }

  // CategoriesModel categoriesModel;
  //
  // void getCategoriesData() {
  //   DioHelper.getData(url: CATEGORIES, token: token).then((value) {
  //     emit(CategoriesLoadingHomeData());
  //     categoriesModel = CategoriesModel.fromJson(value.data);
  //     print(categoriesModel.status);
  //     print(categoriesModel.data.data[0].name);
  //
  //     emit(CategoriesSuccessHomeData());
  //   }).catchError((e) {
  //     print(e.toString());
  //     emit(CategoriesErrorHomeData());
  //   });
  // }
  //
  // Map<int, dynamic> favorites = {};
  // FavoriteDataModel favoriteDataModel;
  //
  // void changeFavorites(productId) {
  //   favorites[productId] = !favorites[productId];
  //   emit(FavoriteChangeIcon());
  //   DioHelper.postData(
  //     url: FAVORITES,
  //     data: {
  //       'product_id': productId,
  //     },
  //     token: token,
  //   ).then((value) {
  //     favoriteDataModel = FavoriteDataModel.fromJson(value.data);
  //     print(favoriteDataModel.message);
  //     print(favoriteDataModel.status);
  //     if (!favoriteDataModel.status) {
  //       favorites[productId] = !favorites[productId];
  //     } else {
  //       getFavoritesData();
  //     }
  //
  //     emit(FavoriteSuccessHomeData(favoriteDataModel));
  //   }).catchError((e) {
  //     favorites[productId] = !favorites[productId];
  //     print(e.toString());
  //     emit(FavoriteErrorHomeData());
  //   });
  // }
  //
  // FavouriteModel favouriteModel;
//
//   void getFavoritesData() {
//     emit(ShopLoadingFavoriteScreen());
//     DioHelper.getData(url: FAVORITES, token: token).then((value) {
//       favouriteModel = FavouriteModel.fromJson(value.data);
//       emit(ShopSuccessFavoriteScreen());
//     }).catchError((e) {
//       print(e.toString());
//       emit(ShopErrorFavoriteScreen());
//     });
//   }
//
//   ProfileModel profileModel;
//
//   void getProfileData() {
//     emit(ShopLoadingProfileScreen());
//     DioHelper.getData(url: PROFILE, token: token).then((value) {
//       profileModel = ProfileModel.fromJson(value.data);
//
//       print(profileModel.data.name);
//       print(profileModel.data.phone);
//       print(profileModel.data.email);
//
//       emit(ShopSuccessProfileScreen(profileModel));
//     }).catchError((error) {
//       print(error.toString());
//       emit(ShopErrorProfileScreen());
//     });
//   }
//
//   void updateProfile({
//     @required String name,
//     @required String email,
//     @required String phone,
//   }) {
//     emit(ShopLoadingUpdateProfileScreen());
//     DioHelper.putData(url: UPDATEPROFILE, token: token, data: {
//       'name': name,
//       'email': email,
//       'phone': phone,
//     }).then((value) {
//       profileModel = ProfileModel.fromJson(value.data);
//
//       print(profileModel.data.name);
//       print(profileModel.data.phone);
//       print(profileModel.data.email);
//
//       emit(ShopSuccessUpdateProfileScreen(profileModel));
//     }).catchError((error) {
//       print(error.toString());
//       emit(ShopErrorUpdateProfileScreen());
//     });
//   }
//
//   SearchModel model;
//
//   void getSearch(text) {
//     emit(ShopLoadingSearchScreen());
//     DioHelper.postData(
//       url: SEARCH,
//       token: token,
//       data:
//       {
//         'text':text
//       },
//
//     ).then((value) {
//
//       model = SearchModel.fromJson(value.data);
//       emit(ShopSuccessSearchScreen());
//     }).catchError((e) {
//       print(e.toString());
//       emit(ShopErrorSearchScreen());
//     });
//   }
 }
