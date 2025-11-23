import 'package:whatsapp_clone/core/constants/app_enums.dart';
import 'package:whatsapp_clone/shared/providers/base_provider.dart';

class HomeProvider extends BaseProvider {
  MainSection _selecteSection = MainSection.chats;
  MainSection get selectedSection => _selecteSection;
  selectSection(MainSection value) {
    _selecteSection = value;
    notifyListeners();
  }
}
