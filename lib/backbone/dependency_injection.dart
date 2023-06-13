// ignore_for_file: cascade_invocations

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:mint_app/data/data.dart';
import 'package:mint_app/data/gateway/firebase_cloud_messaging.dart';
import 'package:mint_app/data/gateway/firebase_cloud_messaging_impl.dart';
import 'package:mint_app/data/gateway/firebase_storage_gateway.dart';
import 'package:mint_app/data/gateway/firebase_storage_gateway_impl.dart';
import 'package:mint_app/presentation/bloc/audio_play/bloc/audio_play_bloc.dart';
import 'package:mint_app/presentation/bloc/audio_record/bloc/audio_record_bloc.dart';
import 'package:mint_app/presentation/bloc/audio_wave_loader/bloc/audio_wave_loader_bloc.dart';
import 'package:mint_app/presentation/bloc/auth_status/auth_status_bloc.dart';
import 'package:mint_app/presentation/bloc/call/bloc/call_bloc.dart';
import 'package:mint_app/presentation/bloc/catalogue/bloc/catalogue_bloc.dart';
import 'package:mint_app/presentation/bloc/chat/bloc/chat_bloc.dart';
import 'package:mint_app/presentation/bloc/favorite/bloc/favorite_bloc.dart';
import 'package:mint_app/presentation/bloc/file_interaction/bloc/file_interaction_bloc.dart';
import 'package:mint_app/presentation/bloc/filter/bloc/filter_bloc.dart';
import 'package:mint_app/presentation/bloc/main/bloc/main_bloc.dart';
import 'package:mint_app/presentation/bloc/notifications/bloc/notifications_bloc.dart';
import 'package:mint_app/presentation/bloc/phone_auth/bloc/phone_auth_bloc.dart';
import 'package:mint_app/presentation/bloc/sessions/bloc/sessions_bloc.dart';
import 'package:mint_app/presentation/bloc/user/bloc/user_bloc.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  //Gateway
  sl.registerLazySingleton<AuthGatewayImpl>(
    () => AuthGatewayImpl(auth: sl.call()),
  );

  sl.registerLazySingleton<AuthGateway>(() => AuthGatewayImpl(auth: sl.call()));

  sl.registerLazySingleton<FirebaseFirestoreGatewayImpl>(
    () => FirebaseFirestoreGatewayImpl(
      auth: sl.call(),
      firebaseFirestore: sl.call(),
    ),
  );

  sl.registerLazySingleton<FirebaseFirestoreGateway>(
    () => FirebaseFirestoreGatewayImpl(
      auth: sl.call(),
      firebaseFirestore: sl.call(),
    ),
  );

  sl.registerLazySingleton<FirebaseStorageGatewayImpl>(
    () => FirebaseStorageGatewayImpl(firebaseStorage: sl.call()),
  );

  sl.registerLazySingleton<FirebaseStorageGateway>(
    () => FirebaseStorageGatewayImpl(firebaseStorage: sl.call()),
  );

  sl.registerLazySingleton<FirebaseCloudMessagingImpl>(
    () => FirebaseCloudMessagingImpl(firebaseMessaging: sl.call()),
  );

  sl.registerLazySingleton<FirebaseCloudMessaging>(
    () => FirebaseCloudMessagingImpl(firebaseMessaging: sl.call()),
  );

  //Service
  sl.registerLazySingleton<TwillioServiceImpl>(TwillioServiceImpl.new);

  //Bloc
  sl.registerLazySingleton<AuthStatusBloc>(() => AuthStatusBloc(
        sl.get(),
      )..add(const AuthStatusEvent.started()));

  sl.registerLazySingleton<PhoneAuthBloc>(() => PhoneAuthBloc(
        sl.get(),
        sl.get(),
      ));
  sl.registerLazySingleton<UserBloc>(() => UserBloc(
        sl.get(),
      ));
  sl.registerLazySingleton<MainBloc>(
    () => MainBloc(sl.get())..add(const MainEvent.getDoctors()),
  );
  sl.registerLazySingleton<FavoriteBloc>(
    () => FavoriteBloc(sl.get())..add(const FavoriteEvent.getUserStream()),
  );
  sl.registerLazySingleton<CatalogueBloc>(
    () => CatalogueBloc(sl.get())
      ..add(const CatalogueEvent.getCatalogueDoctors()),
  );

  sl.registerLazySingleton<FilterBloc>(
    () => FilterBloc(sl.get())..add(const FilterEvent.loadFilter()),
  );
  sl.registerLazySingleton<SessionsBloc>(
    () => SessionsBloc(sl.get())..add(const SessionsEvent.getSessions()),
  );
  sl.registerLazySingleton<CallBloc>(
    () => CallBloc(sl.get())..add(const CallEvent.incomingCall()),
  );
  sl.registerLazySingleton<ChatBloc>(
    () => ChatBloc(sl.call(), sl.call()),
  );
  sl.registerLazySingleton<FileInteractionBloc>(
    () => FileInteractionBloc(sl.call(), sl.call()),
  );

  sl.registerLazySingleton<AudioPlayBloc>(
    AudioPlayBloc.new,
  );
  sl.registerLazySingleton<AudioRecordBloc>(
    AudioRecordBloc.new,
  );
  sl.registerLazySingleton<AudioWaveLoaderBloc>(
    () => AudioWaveLoaderBloc(sl.call()),
  );
  sl.registerLazySingleton<NotificationsBloc>(
    () => NotificationsBloc(sl.call())
      ..add(const NotificationsEvent.receiveNotification()),
  );
  //External
  final auth = FirebaseAuth.instance;
  final fireStore = FirebaseFirestore.instance;
  final firebaseStorage = FirebaseStorage.instance;
  final firebaseMessaging = FirebaseMessaging.instance;
  sl.registerLazySingleton(() => auth);
  sl.registerLazySingleton(() => fireStore);
  sl.registerLazySingleton(() => firebaseStorage);
  sl.registerLazySingleton(() => firebaseMessaging);
}
