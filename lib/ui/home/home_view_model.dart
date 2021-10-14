import 'package:revieuus/app/app.locator.dart';
import 'package:revieuus/app/app.router.dart';
import 'package:revieuus/core/model/photo_model.dart';
import 'package:revieuus/core/service_viewmodel/home_service_vm.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends HomeViewServiceModel {
  final _navigationService = locator<NavigationService>();




  void navigateToAlbumDetailView({AlbumModel? albumModel}) {
    _navigationService.navigateTo(Routes.detailVIew,
        arguments: DetailVIewArguments(albumModel: albumModel));
  }
}
