import 'package:get/get.dart';
import 'package:marketplacemobile/application/customer/customer.service.dart';
import 'package:marketplacemobile/infraestructure/repositories/customer.repository.dart';

void Inject() {
  Get.put(CustomerRepository());
  Get.put(CustomerService());
}
