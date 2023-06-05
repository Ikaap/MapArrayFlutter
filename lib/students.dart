import 'package:flutter/material.dart';

// membuat class student (data class)
class Student {
  final String id;
  final String nama;
  final int umur;
  final DateTime tanggal;

 // membuat constructor
 Student({required this.id,required this.nama,required this.umur,required this.tanggal}) ;
}