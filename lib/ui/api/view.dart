import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:coffeeapp/ui/api/post.dart';
import 'package:flutter/material.dart';

class ApiView extends StatelessWidget {
  const ApiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Future<Post> fetchPost() async {
    final uri = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return Post.fromJson(json.decode(response.body));
    } else {
      throw Exception('failed to load post');
    }
  }
}
