import 'package:get/get.dart';
import 'package:marketplacemobile/domain/dto/customer.dto.dart';
import 'package:marketplacemobile/domain/entity/customer/customer.dart';
import 'package:marketplacemobile/infraestructure/repositories/customer.repository.dart';

class CustomerService {
  final CustomerRepository customerRepository = Get.find();

  Future<Customer> auth(String cpf, String password) async {
    CustomerDto customerDto = CustomerDto(Cpf: cpf, Password: password);
    return await customerRepository.auth(customerDto);
  }
}
