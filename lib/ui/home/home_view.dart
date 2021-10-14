import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:revieuus/export.dart';
import 'package:revieuus/ui/home/home_view_model.dart';
import 'package:revieuus/ui/widget/dumbWidget/heading.dart';
import 'package:revieuus/ui/widget/dumbWidget/search_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:loading_overlay/loading_overlay.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

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
    SizeConfig.init(context);
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onModelReady: (model) {
          model.initial();

          model.getAllAlbum();
        },
        builder: (_, model, ___) => Scaffold(
            backgroundColor: Color(0xffF2F4FA),
            body: LoadingOverlay(
              isLoading: model.isBusy,
              color: AppColors.grey,
              progressIndicator: spinkit,
              child: Column(children: [
                SafeArea(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeadingText(
                          title: 'Album Page',
                          checkSubtiTle: false,
                        ),
                        verticalSpaceSmall,
                        SearchWidget(
                          text: model.searchText,
                          hintText: 'Search company or business',
                          onChanged: model.searchCategory,
                        ),
                      ],
                    ),
                  ),
                ),
                verticalSpaceMedium,
                Expanded(
                    child: ListView(
                        shrinkWrap: true,
                        padding: EdgeInsets.all(0),
                        children: [
                      model.searchresult.length == 0
                          ? Center(
                              child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                regularPoppinsText(context,
                                    text: 'Sorry',
                                    fontSize: 18,
                                    color: AppColors.red),
                                Text('No name with the search keyword',
                                    style: TextStyle(color: Colors.black)),
                              ],
                            ))
                          : ListView.builder(
                              padding: EdgeInsets.all(0),
                              shrinkWrap: true,
                              physics: BouncingScrollPhysics(),
                              itemCount: model.isBusy ? 0 : 10,
                              itemBuilder: (context, index) {
                                var result = model.searchresult[index];
                                return InkWell(
                                  onTap: () => model.navigateToAlbumDetailView(
                                      albumModel: result),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 18),
                                    child: Container(
                                      margin: EdgeInsets.only(bottom: 15),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 21, vertical: 10),
                                      decoration: BoxDecoration(
                                          color: AppColors.white,
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(60),
                                            child: CachedNetworkImage(
                                              imageUrl: model
                                                  .searchresult[index].url!,
                                              height: 50,
                                              fit: BoxFit.cover,
                                              width: 50,
                                              placeholder: (context, url) =>
                                                  doublbBounce,
                                              errorWidget:
                                                  (context, url, error) =>
                                                      Icon(Icons.error),
                                            ),
                                          ),
                                          horizontalSpaceSmall,
                                          Expanded(
                                            child: regularPoppinsText(context,
                                                text: result.title,
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1),
                                          ),
                                          horizontalSpaceSmall,
                                          regularPoppinsText(context,
                                              text: result.id.toString(),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              })
                    ]))
              ]),
            )));
  }
}
