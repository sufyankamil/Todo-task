import 'package:flutter/material.dart';

import '../styles/styles.dart';

class Constants {
  Constants._privateConstructor();

  static final Constants _instance = Constants._privateConstructor();

  static Constants get instance => _instance;

  static const release = 'Release Project';
  static const board = 'Board';

  static const String review = 'Review';
  static const String shipped = 'Shipped';
  static const String closed = 'Closed';

  static const releaseCard = 'Release Project > Stage 1';
  static const reviewCardContent = 'End to End Speed Test';
  static const reviewCardContent1 = 'API Integration';

  static const newTask = 'New Task';

  static const String shippedCardContent = 'Speed Test Audit';
  static const String shippedCardContent1 = 'Deploy Updated Git Library';
  static const String shippedCardContent2 = 'Enable Branch Protection';
  static const String shippedCardContent3 = 'Budget assessment';


  static const String closedCardContent = 'Linux TroubleShoot';
  static const String closedCardContent1 = 'Angular Framework Test';
}