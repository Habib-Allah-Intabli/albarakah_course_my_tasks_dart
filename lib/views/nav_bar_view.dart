import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_22_full_design/blocs/cart_bloc/cart_bloc.dart';
import 'package:task_22_full_design/blocs/favorite_bloc/favorite_bloc.dart';
import 'package:task_22_full_design/blocs/product_bloc/product_bloc.dart';
import 'package:task_22_full_design/core/service/cart_local_data_source.dart';
import 'package:task_22_full_design/core/service/product_service.dart';
import 'package:task_22_full_design/views/account_view.dart';
import 'package:task_22_full_design/views/cart_view.dart';
import 'package:task_22_full_design/views/home_view.dart';
import 'package:task_22_full_design/views/saved_item_view.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  int currentPage = 0;
  final List<Widget> pages = [
    HomeView(),
    SavedItemView(),
    CartView(),
    AccountView(),
  ];
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              ProductBloc(productService: ProductService())
                ..add(GetAllProducts()),
        ),
        BlocProvider(
          create: (context) => FavoriteBloc()..add(InitializeFavoriteList()),
        ),
        BlocProvider(
          create: (context) =>
              CartBloc(cartLocalDataSource: CartLocalDataSource())
                ..add(InitiliazeCart()),
        ),
      ],
      child: Scaffold(
        body: pages[currentPage],
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentPage,
          onDestinationSelected: (index) {
            setState(() {
              currentPage = index;
            });
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite_outline),
              selectedIcon: Icon(Icons.favorite),
              label: 'saved',
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_cart_outlined),
              selectedIcon: Icon(Icons.shopping_cart),
              label: 'cart',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
