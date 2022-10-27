import "package:dio/dio.dart";
import "package:fluttertoast/fluttertoast.dart";
import "package:flutter/material.dart";

const String BASE_URL = "http://172.16.8.81:3000";
// const String BASE_URL = "http://192.168.3.110:3000";
const int TIMEOUT = 5000;

class HttpConfig {
  static const baseUrl = BASE_URL;
  static const timeout = TIMEOUT;
}

class HttpRequest {
  static final BaseOptions options = BaseOptions(
    baseUrl: HttpConfig.baseUrl,
    connectTimeout: HttpConfig.timeout,
  );

  final Dio dio = Dio(options);

  HttpRequest() {
    Interceptor requestInterceptor = InterceptorsWrapper(
      onRequest: (RequestOptions options, handler) {
        print("network: 请求拦截");
        return handler.next(options);
      },
      onResponse: (Response response, handler) {
        print("network: 响应拦截");
        return handler.next(response);
      },
      onError: (DioError error, handler) {
        print("network: 错误拦截");
        return handler.next(error);
      },
    );
    List<Interceptor> interceptors = [requestInterceptor];
    dio.interceptors.addAll(interceptors);
  }

  Future<Response<T>> request<T>(
    String url, {
    data,
    String method = "get",
    Map<String, dynamic>? params,
  }) async {
    final options = Options(method: method);
    try {
      Response<T> response = await dio.request<T>(
        url,
        queryParameters: params,
        options: options,
      );
      return response;
    } on DioError catch (e) {
      if (e.response != null) {
        Fluttertoast.showToast(
          msg: e.message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 100,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      } else {
        print(e.message);
        Fluttertoast.showToast(
          msg: "网络错误",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 100,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
      return Future.error(e);
    } catch (error) {
      return Future.error(error);
    }
  }

  Future<Response<T>> get<T>(
    String url, {
    Map<String, dynamic>? params,
  }) {
    return request(url, method: "get", params: params);
  }

  Future<Response<T>> post<T>(
    String url, {
    data,
    Map<String, dynamic>? params,
  }) {
    return request(url, method: "post", data: data, params: params);
  }

  Future<Response<T>> delete<T>(
    String url, {
    data,
    Map<String, dynamic>? params,
  }) {
    return request(url, method: "delete", data: data, params: params);
  }

  Future<Response<T>> put<T>(
    String url, {
    data,
    Map<String, dynamic>? params,
  }) {
    return request(url, method: "put", data: data, params: params);
  }
}

HttpRequest request = HttpRequest();
