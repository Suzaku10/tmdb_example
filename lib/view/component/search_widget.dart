import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_example/router/router.gr.dart';

Widget searchWidget(BuildContext context) {
  return IconButton(
    onPressed: () => AutoRouter.of(context).push(
      SearchRoute(),
    ),
    icon: Icon(Icons.search),
  );
}
