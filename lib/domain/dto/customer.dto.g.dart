// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerDto _$CustomerDtoFromJson(Map<String, dynamic> json) {
  return CustomerDto(
    Cpf: json['Cpf'] as String,
    Password: json['Password'] as String,
  );
}

Map<String, dynamic> _$CustomerDtoToJson(CustomerDto instance) =>
    <String, dynamic>{
      'Cpf': instance.Cpf,
      'Password': instance.Password,
    };
