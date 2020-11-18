class UserDetails {
  String unique_id;
  UserDetails({this.unique_id});

  Map<String, dynamic> toMap() => {
    "unique_id": unique_id,
  };

  factory UserDetails.fromJson(Map<String, dynamic> data) => new UserDetails(
    unique_id: data["unique_id"]
  );
}