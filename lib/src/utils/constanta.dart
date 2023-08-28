import 'dart:convert';

import 'package:aos/src/domain/entities/data_product/data_product.dart';
import 'package:aos/src/domain/entities/default/default_response.dart';
import 'package:aos/src/domain/entities/product/product.dart';
import 'package:aos/src/domain/entities_hive/product_hive.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const String url =
    "https://bs.aossalestrax.co.id/TestProgrammer_Services/api/GetMasterData";

const List<IconData> listIcon = [
  Icons.account_balance_rounded,
  Icons.shop_2_rounded,
  Icons.local_post_office_rounded,
  Icons.charging_station_rounded,
  Icons.car_crash_rounded,
  Icons.motorcycle_rounded,
  Icons.call_end_rounded,
  Icons.handshake_rounded,
  Icons.ac_unit_rounded,
  Icons.badge_rounded,
  Icons.baby_changing_station_rounded,
];

const List<IconData> listNavbar = [
  Icons.home_rounded,
  Icons.search_rounded,
  Icons.book_rounded,
  Icons.person_rounded,
];

const List<String> listSlider = [
  "https://storage-x.sgp1.cdn.digitaloceanspaces.com/fbs/4.jpg",
  "https://storage-x.sgp1.cdn.digitaloceanspaces.com/fbs/3.jpg",
  "https://storage-x.sgp1.cdn.digitaloceanspaces.com/fbs/b.jpg"
];

const Map<String, dynamic> bodyListProduct = {
  "KEY": "YhNnM/2K++gp/FMWA+m0Pg==",
  "pmethod": "Get Product",
  "pemail": "JK",
  "pwhere6": "1",
  "pwhere7": "4"
};

const Map<String, dynamic> bodyListSales = {
  "KEY": "YhNnM/2K++gp/FMWA+m0Pg==",
  "pmethod": "Get Sales List",
  "pemail": "JK",
  "pwhere2": "2022-12-01",
  "pwhere3": "2022-12-12",
  "pwhere6": "1",
  "pwhere7": "4"
};

Map<String, dynamic> bodyInsertSales = {
  "KEY": "YhNnM/2K++gp/FMWA+m0Pg==",
  "pmethod": "insert sales",
  "pdata1": "SO-1112",
  "pdata2": "Puri",
  "pdata3": "Grab Instan",
  "pdata4": "OVO",
  "pdata5": "JK",
  "pdataDetail": json.encode([
    {"detail1": "AOS001", "detail2": "2", "detail3": "250000", "detail4": ""},
    {"detail1": "AOS003", "detail2": "5", "detail3": "15000", "detail4": ""}
  ])
};

const emptyProduct = Product(success: false, message: "");

const emptyDefaultResponse = DefaultResponse(success: false, message: "");

const emptyDetailProduct = DataProduct(
  NO: 0,
  productId: "",
  productName: "",
  productDescription: "",
  productValue: "",
  productType: "",
  productPhoto: "",
);

final currencyFormatter = NumberFormat.currency(
  symbol: '\$',
  decimalDigits: 2,
  locale: 'en_US',
);
