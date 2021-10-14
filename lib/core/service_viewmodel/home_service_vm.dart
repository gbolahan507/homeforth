import 'package:revieuus/app/app.locator.dart';
import 'package:revieuus/app/utils/auth_exception.dart';
import 'package:revieuus/core/model/photo_model.dart';
import 'package:revieuus/core/service/home_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewServiceModel extends BaseViewModel {
  final _homeservice = locator<HomeService>();
  final _dialogservice = locator<DialogService>();


  List<AlbumModel> _searchresult = [];
  String? _searchText = "";

  String get searchText => _searchText!;

  List<AlbumModel> get searchresult => _searchresult;


  void initial() {
    this._searchresult = _searchresult;
    notifyListeners();
  }

  Future<List<AlbumModel>> getAllAlbum() async {
    try {
      setBusy(true);
      _searchresult = await _homeservice.getAllAlbum();
      setBusy(false);
    } on AuthException catch (e) {
      print(e.message);
      notifyListeners();
      _dialogservice.showCustomDialog(title: e.message);
    }
    return _searchresult;
  }



  searchCategory(String _searchText) {
    getAllAlbum();
    final books = _searchresult.where((book) {
      final titleLower = book.title!.toLowerCase();
      final searchLower = _searchText.toLowerCase();

      return titleLower.contains(searchLower);
    }).toList();
    this._searchText = _searchText;
    this._searchresult = books;
    notifyListeners();
  }
}
