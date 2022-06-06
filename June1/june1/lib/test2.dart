// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'test2.freezed.dart';

// void main() {
//   const resultSuccess = Result.success(100);

//   print(
//     resultSuccess.when(success: (value) {
//       return 'Yes we got the data successfully: $value';
//     }, failure: (message) {
//       return ' An error occured: $message';
//     }, loading: () {
//       return 'We are loading the data';
//     }),
//   );

//   print(resultSuccess.maybeWhen(
//     failure: (message) {
//       return ' An error occured: $message';
//     },
//   ));


//   print(
//     resultSuccess.map(
//       success: (successCase) {
//       return 'Yes we got the data successfully: ${successCase.value}';
//     }, failure: (failureCase) {
//       return ' An error occured: ${failureCase.errormessage}';
//     }, loading: (loadingCase) {
//       return 'We are loading the data';
//     }),
//   );





// }


// @Freezed()
// class Result with _$Result {
//   const Result._();
//   const factory Result.loading() = _Loading;
//   const factory Result.success(int value) = _Success;
//   const factory Result.failure(int errorMessage) = _Failure;
// }
