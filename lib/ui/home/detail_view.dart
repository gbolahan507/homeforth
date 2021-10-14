import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:revieuus/core/model/photo_model.dart';
import 'package:revieuus/export.dart';
import 'package:revieuus/ui/widget/shared/colors.dart';

class DetailVIew extends StatelessWidget {
  final AlbumModel? albumModel;
  DetailVIew({Key? key, this.albumModel}) : super(key: key);

  final doublbBounce = SpinKitDoubleBounce(
    color: AppColors.red,
    size: 30.0,
  );

  final spinkit = SpinKitFadingCircle(
    itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: index.isEven ? Colors.red : Colors.green,
        ),
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.h),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  _productImage(context),
                  SizedBox(
                    height: 16,
                  ),
                  regularPoppinsText(context,
                      text: albumModel!.title!,
                      fontSize: 16.h,
                      color: AppColors.black)
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    shape: BoxShape.circle),
                child: Center(
                  child: regularPoppinsText(context,
                      fontSize: 20, text: albumModel!.id!.toString()),
                ))
          ],
        ),
      ),
    );
  }

  Widget _productImage(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              width: 300,
              decoration: new BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.all(Radius.elliptical(300, 50)),
              ),
            ),
          ),
        ),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl: albumModel!.thumbnailUrl!,
              height: 200.h,
              fit: BoxFit.cover,
              width: double.infinity,
              placeholder: (context, url) => doublbBounce,
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        ),
      ],
    );
  }
}
