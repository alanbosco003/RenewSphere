import 'package:reactiv/reactiv.dart';

class BaseStructureController extends ReactiveController {
  ReactiveInt currentPage = ReactiveInt(0);

  setCurrentPage(int newPage) {
    currentPage.value = newPage;
    Logger.info("Currectly selected page : $currentPage");
  }
}
