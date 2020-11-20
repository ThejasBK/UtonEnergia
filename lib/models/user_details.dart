class UserDetails {
  String unique_id;
  UserDetails({this.unique_id});

  UserDetails.map(dynamic obj) {
    this.unique_id = obj["unique_id"];
  }

  factory UserDetails.fromJson(Map<String, dynamic> data) => new UserDetails(
    unique_id: data["unique_id"]
  );
}