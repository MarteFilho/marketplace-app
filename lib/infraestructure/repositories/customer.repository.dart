import 'package:get/get_connect/connect.dart';
import 'package:marketplacemobile/domain/dto/customer.dto.dart';
import 'package:marketplacemobile/domain/entity/customer/customer.dart';

class CustomerRepository extends GetConnect {
  Future<Customer> auth(CustomerDto customerDto) async {
    await post<Customer>(
        'http://10.0.2.2:5000/v1/customers/auth', customerDto.toJson(),
        decoder: (response) {
      return Customer.fromJson(response['data']);
    });
  }
}
