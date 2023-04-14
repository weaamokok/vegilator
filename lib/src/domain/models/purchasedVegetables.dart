// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:ffi';
import 'package:floor/floor.dart';
import 'package:equatable/equatable.dart';
import 'package:retrofit/http.dart';

import 'package:vegilator/src/domain/models/vegetable.dart';

import '../../utils/constants/strings.dart';

@Entity(tableName: purchasedVegetables)
class PurchasedVegetables extends Equatable {
  @PrimaryKey(autoGenerate: true)
  final int id;
  final int purchaseId;
  final int vegeID; //suppose to be the id of the vegetable
  final double amount;
  final double prize;
  const PurchasedVegetables({
    required this.id,
    required this.vegeID,
    required this.purchaseId,
    required this.amount,
    required this.prize,
  });

  PurchasedVegetables copyWith({
    int? id,
    int? vegeID,
    int? purchaseId,
    double? amount,
    double? prize,
  }) {
    return PurchasedVegetables(
      id: id ?? this.id,
      vegeID: vegeID ?? this.vegeID,
      purchaseId: purchaseId ?? this.purchaseId,
      amount: amount ?? this.amount,
      prize: prize ?? this.prize,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'vegeID': vegeID,
      'purchaseId': purchaseId,
      'amount': amount,
      'prize': prize,
    };
  }

  factory PurchasedVegetables.fromMap(Map<String, dynamic> map) {
    return PurchasedVegetables(
      id: map['id'],
      vegeID: map['vegeID'],
      purchaseId: map['purchaseId'],
      amount: map['amount'],
      prize: map['prize'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PurchasedVegetables.fromJson(String source) =>
      PurchasedVegetables.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, vegeID, purchaseId, amount, prize];
}
