import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_list/presentation/bloc/produts/produts_bloc.dart';
import 'package:product_list/presentation/view/search/search_view.dart';
import 'package:product_list/presentation/view/single_product/single_product_view.dart';
import 'package:product_list/presentation/widgets/app_cached_img.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final bloc = context.read<ProdutsBloc>();
      if (bloc.state.products.isEmpty && !bloc.state.isLoading) {
        bloc.add(const ProdutsEvent.getProducts());
      }
    });

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Products", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return SearchView();
                  },
                ),
              );
            },
            icon: Icon(Icons.search, size: 28),
          ),
          SizedBox(width: 16),
          Icon(Icons.shopping_bag_outlined, size: 28),
          SizedBox(width: 16),
        ],
      ),
      body: BlocBuilder<ProdutsBloc, ProdutsState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(child: CircularProgressIndicator());
          }

          if (state.isError && state.products.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.error_outline, size: 64, color: Colors.red[300]),
                  SizedBox(height: 16),
                  Text(
                    state.errorMessage ?? "Failed to load products",
                    style: TextStyle(color: Colors.grey[600], fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: () {
                      context.read<ProdutsBloc>().add(
                        const ProdutsEvent.getProducts(),
                      );
                    },
                    icon: Icon(Icons.refresh),
                    label: Text("Retry"),
                  ),
                ],
              ),
            );
          }

          if (state.products.isEmpty) {
            return Center(child: Text("NO Products yet"));
          }

          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: GridView.builder(
              controller: context.read<ProdutsBloc>().scrollController,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 9 / 16,
              ),
              itemCount: state.products.length + (state.isLoadingMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == state.products.length) {
                  return Center(child: CircularProgressIndicator());
                }

                final product = state.products[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return SingleProductView(product: product);
                        },
                      ),
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: NetworkImages(
                                  imageUrl: product.image.toString(),
                                  fit: BoxFit.cover,
                                  radius: 14,
                                  height: 110,
                                  width: 110,
                                ),
                              ),
                              SizedBox(height: 12),
                              Text(
                                product.title ?? "",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 7),
                              Text(
                                product.category ?? "",
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 7),
                              Text(
                                product.description ?? "",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey[700],
                                ),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.green[600],
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.green.withValues(alpha:  0.2),
                                          blurRadius: 6,
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      "₹${product.price ?? 0.0}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 16,
                        right: 16,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.amber[700],
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.amber.withValues(alpha:  0.2),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.white, size: 16),
                              SizedBox(width: 4),
                              Text(
                                "${(product.rating?.rate ?? 0.0)}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(width: 4),
                              Text(
                                "(${product.rating?.count ?? 0.00}",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
