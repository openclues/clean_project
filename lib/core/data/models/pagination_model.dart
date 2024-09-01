import 'package:equatable/equatable.dart';

class Pagination<T> extends Equatable {
  final int count;
  final String? next;
  final String? previous;
  final List<T> items;

  const Pagination({
    required this.count,
    required this.next,
    required this.previous,
    required this.items,
  });

  factory Pagination.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    return Pagination(
      count: json['count'],
      next: json['next'],
      previous: json['previous'],
      items: (json['results'] as List).map((e) => fromJson(e)).toList(),
    );
  }

  //copy with
  Pagination<T> copyWith({
    int? count,
    String? next,
    String? previous,
    List<T>? items,
  }) {
    return Pagination<T>(
      count: count ?? this.count,
      next: next ?? this.next,
      previous: previous ?? this.previous,
      items: items ?? this.items,
    );
  }

  @override
  List<Object?> get props => [count, next, previous, items];
}
