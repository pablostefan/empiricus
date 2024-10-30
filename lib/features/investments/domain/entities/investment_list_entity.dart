import 'package:empiricus/features/investments/domain/entities/investment_entity.dart';

class InvestmentListEntity {
  final List<InvestmentEntity> investments;

  InvestmentListEntity({required this.investments});

  InvestmentListEntity.empty() : investments = [];

  factory InvestmentListEntity.fromJson(Map<String, dynamic> json) {
    return InvestmentListEntity(
      investments: (json['groups'] as List?)?.map((i) => InvestmentEntity.fromJson(i)).toList() ?? [],
    );
  }
}
