import 'package:flutter/material.dart';
import 'package:product_list/domain/core/di/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_list/presentation/bloc/produts/produts_bloc.dart';
import 'package:product_list/presentation/bloc/search/search_bloc.dart';
import 'package:product_list/presentation/bloc/single_product/single_product_bloc.dart';
import 'package:product_list/presentation/view/products/products_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configInjection();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<ProdutsBloc>()),
        BlocProvider(create: (ctx) => getIt<SingleProductBloc>()),
        BlocProvider(create: (ctx) => getIt<SearchBloc>()),
      ],
      child: MaterialApp(
        title: 'E-commerce Application',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const ProductsView(),
      ),
    );
  }
}
