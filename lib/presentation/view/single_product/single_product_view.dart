import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_list/data/models/products/products_model.dart';
import 'package:product_list/presentation/bloc/single_product/single_product_bloc.dart';
import 'package:product_list/presentation/widgets/app_cached_img.dart';

class SingleProductView extends StatelessWidget {
  const SingleProductView({super.key, required this.product});

  final ProductsResponse product;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<SingleProductBloc>(
        context,
      ).add(GetSigleProduct(id: product.id.toString()));
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: BlocBuilder<SingleProductBloc, SingleProductState>(
        builder: (context, state) {
          if (state.isError) {
            return Center(child: Text("Error while getting data"));
          } else if (state.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state.product == null) {
            return Center(child: Text("Product data not getting"));
          }

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: NetworkImages(
                      imageUrl: product.image.toString(),
                      fit: BoxFit.cover,
                      radius: 16,
                      height: 200,
                      width: 200,
                    ),
                  ),

                  SizedBox(height: 28),
                  Text(
                    state.product?.title ?? "",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12),
                  Text(
                    state.product?.category ?? "",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "₹${state.product?.price ?? 0.00}",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[700],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 20),
                          SizedBox(width: 6),
                          Text(
                            "${state.product?.rating?.rate ?? 0.0}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            "(${state.product?.rating?.count ?? 0.0} reviews)",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    "Description",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    state.product?.description ?? "",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700],
                      height: 1.6,
                    ),
                  ),
                  SizedBox(height: 80),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green[600],
              padding: EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              "Add to Cart",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
