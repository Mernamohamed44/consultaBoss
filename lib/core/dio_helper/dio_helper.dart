// import 'package:flutter_native_timezone/flutter_native_timezone.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:tartel/constants/diemensions.dart';
// import 'package:tartel/core/appStorage/app_storage.dart';
// import 'package:tartel/core/router/router.dart';
// import 'package:tartel/widgets/snack_bar.dart';
// import 'package:untitled5/core/router/router.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:dio/dio.dart';
//
// class DioHelper {
//   static const _baseUrl = 'https://admin.tartilonline.com/api/';
//
//   static Dio dioSingleton = Dio()..options.baseUrl = _baseUrl;
//
//   static Future<Response<dynamic>> post(String path, bool isAuh,
//       {FormData? formData,
//         Map<String, dynamic>? body,
//         Function(int, int)? onSendProgress}) async {
//     bool result = await InternetConnectionChecker().hasConnection;
//     if (result == true) {
//       print('YAY! Free cute dog pics!');
//     } else {
//       showSnackBar('You are disconnected from the internet');
//     }
//     dioSingleton.options.headers =
//     isAuh ? {'Authorization': 'Bearer ${AppStorage.getToken}'} : null;
//     final response = dioSingleton.post(path,
//         data: formData ?? FormData.fromMap(body!),
//         options: Options(
//             headers: {
//               'Authorization': 'Bearer ${AppStorage.getToken}',
//               'Accept': 'application/json',
//               'Accept-Language': isEn(MagicRouter.currentContext) ? 'en' : 'ar'
//             },
//             followRedirects: false,
//             receiveDataWhenStatusError: true,
//             sendTimeout: 10 * 10000000,
//             //60 seconds
//             receiveTimeout: 10 * 1000,
//             // 60 seconds
//             validateStatus: (status) {
//               return status! < 500;
//             }),
//         onSendProgress: onSendProgress);
//     return response;
//   }
//
//   static Future<Response<dynamic>> put(String path, bool isAuh,
//       {FormData? formData,
//         Map<String, dynamic>? body,
//         Function(int, int)? onSendProgress}) async {
//     bool result = await InternetConnectionChecker().hasConnection;
//     if (result == true) {
//       print('YAY! Free cute dog pics!');
//     } else {
//       showSnackBar('You are disconnected from the internet');
//     }
//     dioSingleton.options.headers =
//     isAuh ? {'Authorization': 'Bearer ${AppStorage.getToken}'} : null;
//     final response = dioSingleton.put(path,
//         data: formData ?? FormData.fromMap(body!),
//         options: Options(
//             headers: {
//               'Authorization': 'Bearer ${AppStorage.getToken}',
//               'Accept': 'application/json',
//               'Accept-Language': isEn(MagicRouter.currentContext) ? 'en' : 'ar'
//             },
//             followRedirects: false,
//             receiveDataWhenStatusError: true,
//             sendTimeout: 10 * 1000,
//             //60 seconds
//             receiveTimeout: 10 * 1000,
//             // 60 seconds
//             validateStatus: (status) {
//               return status! < 500;
//             }),
//         onSendProgress: onSendProgress);
//     return response;
//   }
//
//   static Future<Response<dynamic>> delete(
//       String path, {
//         Map<String, dynamic>? body,
//       }) {
//     try {
//       dioSingleton.options.headers = {
//         'Authorization': 'Bearer ${AppStorage.getToken}'
//       };
//       final response = dioSingleton.delete(
//         path,
//         data: body,
//         options: Options(
//             headers: {
//               'Authorization': 'Bearer ${AppStorage.getToken}',
//               'Accept': 'application/json'
//             },
//             followRedirects: false,
//             validateStatus: (status) {
//               return status! < 500;
//             }),
//       );
//       return response;
//     } on FormatException catch (_) {
//       throw FormatException("Unable to process the data");
//     } catch (e) {
//       throw e;
//     }
//   }
//
//   static Future<Response<dynamic>>? get(String path, {dynamic body}) async {
//     final String currentTimeZone =
//     await FlutterNativeTimezone.getLocalTimezone();
//     if (AppStorage.isLogged) {
//       bool result = await InternetConnectionChecker().hasConnection;
//       if (result == true) {
//         print('YAY! Free cute dog pics!');
//       } else {
//         showSnackBar('You are disconnected from the internet');
//       }
//       dioSingleton.options.headers = {
//         'Authorization': 'Bearer ${AppStorage.getToken}',
//         'Accept': 'application/json',
//         'Accept-Language': isEn(MagicRouter.currentContext) ? 'en' : 'ar',
//         "x-timezone": currentTimeZone
//       };
//     }else{
//       dioSingleton.options.headers = {
//         'Accept': 'application/json',
//         'Accept-Language': isEn(MagicRouter.currentContext) ? 'en' : 'ar',
//         "x-timezone": currentTimeZone
//       };
//     }
//     print(dioSingleton.options.headers);
//     final response = dioSingleton.get(path,
//         queryParameters: body,
//         options: Options(
//           sendTimeout: 10 * 1000, //60 seconds
//           receiveTimeout: 10 * 1000, // 60 seconds
//         ));
//     dioSingleton.options.headers = null;
//     return response;
//   }
//
//   static Future<void>? launchURL(url) async {
//     if (!await launch(
//       url,
//     )) throw 'Could not launch $url';
//   }
// }