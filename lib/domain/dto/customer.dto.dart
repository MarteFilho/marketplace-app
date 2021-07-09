import 'package:json_annotation/json_annotation.dart';

part 'customer.dto.g.dart';

@JsonSerializable.defaults
class CustomerDto {
  final String Cpf;
  final String Password;

  CustomerDto({this.Cpf, this.Password});

  factory CustomerDto.fromJson(Map<String, dynamic> json) =>
      _$CustomerDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerDtoToJson(this);
}
