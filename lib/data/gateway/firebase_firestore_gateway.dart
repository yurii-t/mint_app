import 'package:mint_app/data/data.dart';
import 'package:mint_app/data/models/chat_model.dart';
import 'package:mint_app/data/models/message_model.dart';
import 'package:mint_app/data/models/session.dart';
import 'package:mint_app/data/models/user_call.dart';

abstract class FirebaseFirestoreGateway {
  Future<void> createCurrentUser(CurrentUser user);

  Future<CurrentUser> getCurrentUserInfo();

  Future<void> setAppPinCode(String pinCode);

  Future<bool> phoneNumberExistsCheck(String phoneNumber);

  Future<List<Doctor>> getDoctors();

  Future<void> addDoctorToFavorite(Doctor doctor);
  Stream<CurrentUser> streamCurrentUserInfo();
  Future<void> addPaymentCard(
    PaymentMethod card,
  );
  Future<void> deletePaymentCard(
    PaymentMethod card,
  );
  Future<void> bookSession(
    Session session,
  );
  Future<void> rescheduleSession(
    Session oldSession,
    Session newSession,
  );
  Future<void> cancelSession(
    Session session,
  );

  Future<List<CurrentUser>> getUsers();

  ///Call

  Future<String> getVideoToken();

  Future<void> startCall(
    UserCall userCall,
  );
  Future<void> updateCallStatus();

  Stream<List<UserCall>> incomingCall();

  ///Chat

  Future<void> createChat({required String uid, required String otherUid});

  Future<void> sendMessage({
    required MessageModel messageModel,
    required String chatId,
  });

  Future<String> setMessageId(String chatId);

  Future<void> addActiveChatDetails(ChatModel chatModel);

  Stream<List<MessageModel>> getMessages(String chatId);

  Stream<List<ChatModel>> getActiveChats();

  Future<String> getChatId({required String uid, required String otherUid});

  Future<void> readMessages({
    required String chatId,
    required String senderUID,
  });

  Future<void> getNewMessages({
    required String chatId,
    required String recepientUid,
  });

  Future<void> updateChattingWithId(String recepientUid);

  Future<void> rateDoctor({
    required String doctorId,
    required Review review,
  });

  Future<void> changeFirstName({
    required String newFirstName,
  });

  Future<void> changeLastName({
    required String newLastName,
  });

  Future<void> changeDob({
    required String newDob,
  });
}
