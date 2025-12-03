import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_list/presentation/bloc/search/search_bloc.dart';
import 'package:product_list/presentation/widgets/app_cached_img.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        title: Text("Search Products",
            style: TextStyle(fontWeight: FontWeight.bold)),
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search TextField
            TextField(
              onChanged: (value) {
                context.read<SearchBloc>().add(
                      SearchEvent.searchProducts(
                        query: value,
                        sortBy:
                            context.read<SearchBloc>().state.sortOption,
                      ),
                    );
              },
              decoration: InputDecoration(
                hintText: "Search products...",
                prefixIcon: Icon(Icons.search),
                suffixIcon: BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    return state.searchQuery.isNotEmpty
                        ? IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: () {
                              context
                                  .read<SearchBloc>()
                                  .add(const SearchEvent.clearSearch());
                            },
                          )
                        : SizedBox.shrink();
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              ),
            ),
            SizedBox(height: 16),
            // Sort Option (shown when search query exists)
            BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.searchQuery.isEmpty) {
                  return SizedBox.shrink();
                }

                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[200]!),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.sort, color: Colors.grey[600]),
                      SizedBox(width: 8),
                      Text(
                        "Sort:",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                      Spacer(),
                      PopupMenuButton<String>(
                        onSelected: (value) {
                          context.read<SearchBloc>().add(
                                SearchEvent.sortBy(sortOption: value),
                              );
                        },
                        itemBuilder: (BuildContext context) {
                          return [
                            PopupMenuItem<String>(
                              value: 'low_to_high',
                              child: Text('Low to High'),
                            ),
                            PopupMenuItem<String>(
                              value: 'high_to_low',
                              child: Text('High to Low'),
                            ),
                          ];
                        },
                        child: Row(
                          children: [
                            Text(
                              state.sortOption == 'low_to_high'
                                  ? 'Low to High'
                                  : 'High to Low',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(width: 4),
                            Icon(Icons.arrow_drop_down, size: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 16),
            // Search Results or Empty State
            Expanded(
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state.searchQuery.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.search,
                              size: 64, color: Colors.grey[300]),
                          SizedBox(height: 16),
                          Text(
                            "Start typing to search",
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 16),
                          ),
                        ],
                      ),
                    );
                  }

                  if (state.isLoading) {
                    return Center(child: CircularProgressIndicator());
                  }

                  if (state.isError) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.error_outline,
                              size: 64, color: Colors.red[300]),
                          SizedBox(height: 16),
                          Text(
                            state.errorMessage ?? "Failed to search",
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  }

                  if (state.results.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.search,
                              size: 64, color: Colors.grey[300]),
                          SizedBox(height: 16),
                          Text(
                            "No products found",
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 16),
                          ),
                        ],
                      ),
                    );
                  }

                  return ListView.builder(
                    itemCount: state.results.length,
                    itemBuilder: (context, index) {
                      final product = state.results[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: NetworkImages(
                              imageUrl: product.image ?? "",
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(
                            product.title ?? "",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text(
                            "₹${product.price?.toStringAsFixed(2) ?? "0.00"}",
                            style: TextStyle(
                                color: Colors.green[700],
                                fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(color: Colors.grey[200]!),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
