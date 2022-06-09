import 'package:equatable/equatable.dart';

class BucketlistEntity extends Equatable {
  final String item;
  const BucketlistEntity({
    required this.item,
  });
  
  @override
  List<Object?> get props => [
    item,
  ];


}
