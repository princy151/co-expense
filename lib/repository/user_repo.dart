// import 'package:batch_33a/model/user_model.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// class UserRepo{
//   final instance = FirebaseFirestore.instance.collection("users").withConverter(
//     fromFirestore: (snapshot, options) =>
//         UserModel.fromJson(snapshot.data() as Map<String, dynamic>),
//     toFirestore: (UserModel value, options) =>value.toJson(),
//   );
// //   post
//   Future<dynamic> saveData(UserModel data) async{
//     try {
//       final response = await instance.add(data);
//       return response;
//     } on Exception catch (e) {
//       // TODO
//       print(e.toString());
//     }
//     return null;
//   }
//
//
// // get
// // post
// // update
// // delete
//
// }