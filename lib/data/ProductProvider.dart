import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/product.dart';

// ユーザー名を管理する Provider
final productProvider = StateProvider<List<Product>>((ref) => "ゲスト");
