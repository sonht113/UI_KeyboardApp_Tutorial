import 'package:app_keyboard_shop_tutorial/model/message.dart';
import 'package:get/state_manager.dart';

class ChatController extends GetxController {
  var chatMessages = <Message>[].obs;
  var connectedUser = 0.obs;
}
