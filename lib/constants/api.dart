import 'dart:convert';
import 'dart:io';

import 'package:resident/repository/data/response_data.dart';

const String assetsUrl = "assets/images/";
const String apiId = "edgeDeveloper";
const String apiSecret = "4953b2aeecde85314b5b0f8f5fa6091e";

const String host = 'https://';
const String baseUrl = "prodints.residentfintech.com";
const String appPathUrl = "/api/account/v1/";
const String iswPathUrl = "/api/isw/v1/";
const String isRemitaUrl = "/api/remita/v1/";
const String headerType = 'application/json';

//Remita
const String remitaKey =
    "U09MRHw0MDgxOTUzOHw2ZDU4NGRhMmJhNzVlOTRiYmYyZjBlMmM1YzUyNzYwZTM0YzRjNGI4ZTgyNzJjY2NjYTBkMDM0ZDUyYjZhZWI2ODJlZTZjMjU0MDNiODBlMzI4YWNmZGY2OWQ2YjhiYzM2N2RhMmI1YWEwYTlmMTFiYWI2OWQxNTc5N2YyZDk4NA==";

//Paystack
const String paystackKey = "sk_test_71f5f04fc1b65f02a56f5746c0e0fa484b0bc234";

//NIBSS
const String apiKey = "";
const String authCode = "";
const String verificationURL =
    "https://prodints.residentfintech.com/api/igree/v1/initialize";
//ISW
const String merchantCode = "MX200728";
const String merchantId = "IKIA6C29748192DA49D64F7433B19E4D6EF741096A5D";
const String secretKey = "g2MarvZcszecMUE";
const String iconUrl =
    "https://prodints.residentfintech.com/web/img2/resident_logo.png";

const String remitaUrl =
    "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAcCAMAAABF0y+mAAAApVBMVEVHcEwXjHXyYiPtXCrnWygdrZAYkngbmoLkWSbqXSb6aSMbn4UerpIcpIkYjnbiVSrqWygbnYMdrpEcqYznVyvrXSYZjnbtXiUWiXHrXyftXyj4aCL2ZScXjnYdrZEdrpAeqY4dqo8Zk3r/biUer5PnVi3/biXzZCEYiXIdp4wesZTZUSryZiLhVikdposbn4Udqo4ZkXgZjnb2aCL8bCPpWCwZk3p3HcgnAAAAKHRSTlMAzwXY/XxTFyld8apIdIfAly2a5vY54xbvRHajwL+49OtO7dnG6t/kMw65vgAAANNJREFUKJHd0NkWgiAQBmCkU4J7e2n7ihQVSr7/ozWM2pUvUP8d5zsDzE/IP2cY+ptR4HaR299Km1PQYSP5ekByOR7YM51yvqQNhmC5zbOawc3z5Oh5l4zVg2OJ9noKoUNCV6aEmBVqIPPWROGQ1NwhpVKJxT4OooliQXqI6qZ6rMXaLHolGuAScC+/Zq+9GjTAqf3QTuaNCR2RzKDdVDyvH22tgFWY90ab8HoXv2rmDrYEfn5DFG9qcKOi0rrSDhZEWBrHCWv7o3QYrR1/0Fn87+YD304jnZwbsM8AAAAASUVORK5CYII=";
final credentials = '$merchantId:$secretKey';
final base64Credentials = base64Encode(utf8.encode(credentials));

String headerAuthorization = 'Bearer ${ResponseData.tokenResponseModel!.token}';
Map<String, String> headersContent = {
  HttpHeaders.contentTypeHeader: headerType,
  HttpHeaders.authorizationHeader: headerAuthorization
};
