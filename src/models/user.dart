class Property {
  final String clientId;
  final String propertyId;
  final String propertyName;
  final String clientName;

  Property(
      {this.clientId, this.propertyId, this.propertyName, this.clientName});
}

class UserModel {
  final String email;
  final List<Property> properties;
  UserModel({this.email, this.properties});
}
