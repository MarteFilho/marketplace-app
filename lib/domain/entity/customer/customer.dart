class Customer {
  String id;
  String name;
  String document;
  String email;
  String phone;
  String password;

  Customer(
      {this.id,
      this.name,
      this.document,
      this.email,
      this.phone,
      this.password});

  Customer.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    document = json['document'];
    email = json['email'];
    phone = json['phone'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['document'] = this.document;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['password'] = this.password;
    return data;
  }
}
