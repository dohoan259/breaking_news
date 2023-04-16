import 'package:equatable/equatable.dart';

class ValidateModel<V> extends Equatable {
  final String identity;
  final V value;

  const ValidateModel({
    required this.value,
    required this.identity,
  });

  ValidateModel<V> copyWith({V? value, bool? hasError}) {
    return ValidateModel<V>(
      value: value ?? this.value,
      identity: this.identity,
    );
  }

  @override
  List<Object?> get props => [value, identity];
}
