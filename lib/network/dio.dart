import "package:dio/dio.dart";

BaseOptions options = new BaseOptions(
  baseUrl: "http://localhost:3000",
  connectTimeout: 5000,
  receiveTimeout: 5000,
);

Dio dio = new Dio(options);
