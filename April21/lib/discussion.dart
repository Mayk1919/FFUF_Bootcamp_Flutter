// class User {
//   String _name;
//   int _id;
//
//   User({
//     required String name,
//     required int id,
//   })  : _name = name,
//         _id = id;
//
//   @override
//   String toString() {
//     // TODO: implement toString
//     return 'User (id:$_id, name:$_name)';
//   }
// }

class User {
  final String name;
  final int id;

  const User({
    required this.name,
    required this.id,
  }) ;

  factory User.luna(){
    return const User(name: 'Luna', id:1);
  }

  factory User.fromJson(Map<String,Object>json){
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User( id: userId, name: userName);
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'User (id:$id, name:$name)';
  }
}




void main() {
final map = {'id':7, 'name':'John'};
final john = User.fromJson(map);
print(map);
print(john);
print(User.luna());


}
