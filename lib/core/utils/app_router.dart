import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mybook/Core/utils/get_it_service_locator.dart';
import 'package:mybook/Features/Splash/presentation/views/splash_view.dart';
import 'package:mybook/Features/home/data/models/book_model/book_model.dart';
import 'package:mybook/Features/home/data/repos/home_repo_impl.dart';
import 'package:mybook/Features/home/presntation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:mybook/Features/home/presntation/views/book_view_details.dart';
import 'package:mybook/Features/home/presntation/views/home_view.dart';
import 'package:mybook/Features/search/presntation/view/search_view.dart';

import '../../Features/home/data/repos/home_repo.dart';

abstract class AppRouter {
  static const kSearchView = 'searchView';
  static const kHomeView = 'homeView';
  static const kBookViewDetails = 'bookViewDetails';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
        routes: <RouteBase>[
          GoRoute(
            path: kHomeView,
            builder: (BuildContext context, GoRouterState state) {
              return const HomeView();
            },
          ),
          GoRoute(
            path: kBookViewDetails,
            builder: (BuildContext context, GoRouterState state) {
              return BlocProvider(
                create: (context) =>
                    SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
                child: BookViewDetails(
                  bookModel: state.extra as BookModel,
                ),
              );
            },
          ),
          GoRoute(
            path: kSearchView,
            builder: (BuildContext context, GoRouterState state) {
              return const SearchView();
            },
          ),
        ],
      ),
    ],
  );
}
