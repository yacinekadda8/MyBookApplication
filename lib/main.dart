import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybook/Core/utils/api_service.dart';
import 'package:mybook/Core/utils/app_router.dart';
import 'package:mybook/Core/utils/get_it_service_locator.dart';
import 'package:mybook/Features/home/data/repos/home_repo_impl.dart';
import 'package:mybook/Features/home/presntation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:mybook/Features/home/presntation/view_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:mybook/constant.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData().copyWith(
          scaffoldBackgroundColor: kneutralColor,
          textTheme: GoogleFonts.montserratTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
        title: 'MyBook',
        routerConfig: AppRouter.router,
        // home: const SplashView(),
      ),
    );
  }
}
