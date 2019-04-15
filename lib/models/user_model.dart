class UserModel {


// field
   int id;
   String name, user, password;

// constructor
  UserModel(this.id, this.name, this.user, this.password);

  UserModel.formJSON(Map<String, dynamic> parseJSON){
    id = int.parse(parseJSON['id']);
    name = parseJSON['Name'];
    user = parseJSON['User'];
    password = parseJSON['Password'];
  }

}