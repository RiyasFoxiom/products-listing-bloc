
import 'package:cached_network_image/cached_network_image.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  const CachedImage(
      {super.key,
      this.radius = 6.0,
      required this.imageUrl,
      this.height,
      this.width,
      this.bgClr,
      this.fit = BoxFit.contain});

  final double radius;
  final String? imageUrl;
  final double? height, width;
  final Color? bgClr;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: bgClr ?? Colors.white,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: CachedNetworkImage(
          fit: fit,
          height: height,
          width: width,
          imageUrl: imageUrl ??
              "https://montevista.greatheartsamerica.org/wp-content/uploads/sites/2/2016/11/default-placeholder.png",
          placeholder: (context, url) =>
              const Center(child: CupertinoActivityIndicator()),
          errorWidget: (context, url, error) => Image.network(
                "https://montevista.greatheartsamerica.org/wp-content/uploads/sites/2/2016/11/default-placeholder.png",
                height: height,
                width: width,
              )),
    );
  }
}

class NetworkImages extends StatelessWidget {
  const NetworkImages(
      {super.key,
      required this.imageUrl,
      this.height,
      this.width,
      this.radius = 6.0,
      this.bgColor,
      this.fit});

  final String imageUrl;
  final double? height, width;
  final double radius;
  final Color? bgColor;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: bgColor ?? Colors.white,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: ExtendedImage.network(
        imageUrl,
        height: height,
        width: width,
        fit: fit,
        cache: false,
        clearMemoryCacheWhenDispose: false,
        loadStateChanged: (state) {
          switch (state.extendedImageLoadState) {
            case LoadState.loading:
              return const Center(child: CupertinoActivityIndicator());
            case LoadState.completed:
              return ExtendedRawImage(
                image: state.extendedImageInfo?.image,
                width: width,
                height: height,
                fit: fit,
              );
            case LoadState.failed:
              return ExtendedImage.network(
                "https://montevista.greatheartsamerica.org/wp-content/uploads/sites/2/2016/11/default-placeholder.png",
                height: height,
                width: width,
              );
          }
        },
        // loadingBuilder: (context, child, loadingProgress) {
        //   if (loadingProgress == null) {
        //     return child;
        //   } else {
        //     return Center(
        //       child: SizedBox(
        //         height: height,
        //         width: width,
        //         child: const CupertinoActivityIndicator(),
        //       ),
        //     );
        //   }
        // },
        // errorBuilder: (context, error, stackTrace) {
        //   return Image.network("https://montevista.greatheartsamerica.org/wp-content/uploads/sites/2/2016/11/default-placeholder.png");
        // },
      ),
    );
  }
}