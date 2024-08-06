import 'package:big_bite_casher/core/utils/base_parameters.dart';

abstract class PaginationParameters extends BaseParameters {
  final int skipCount;
  final int maxResultCount;

   const PaginationParameters({
    required this.skipCount,
    required this.maxResultCount,
  });

  @override
  Map<String, dynamic> toJson();

  @override
  List<Object> get props => [
        skipCount,
        maxResultCount,
      ];
}
