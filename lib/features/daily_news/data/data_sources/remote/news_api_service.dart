
import 'dart:io';

import 'package:daily_news/core/constants/constants.dart';
import 'package:daily_news/features/daily_news/data/models/article.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: newsAPIBaseURL)
abstract class NewsApiService {

  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticle({
    @Query('country') String  ? country,
    @Query('category') String  ? category,
    @Query('apiKey') String  ? apiKey,
  })
}