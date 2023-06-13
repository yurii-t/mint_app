// ignore_for_file: deprecated_member_use_from_same_package

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/backbone/dependency_injection.dart' as di;
import 'package:mint_app/gen/assets.gen.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/call/bloc/call_bloc.dart';
import 'package:mint_app/presentation/bloc/status.dart';
import 'package:mint_app/routes/app_router.gr.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';
import 'package:mint_app/utils/duration_formatter.dart';

class CallingPage extends StatefulWidget {
  const CallingPage({this.isCaller = true, super.key});
  final bool isCaller;

  @override
  State<CallingPage> createState() => _CallingPageState();
}

class _CallingPageState extends State<CallingPage> {
  final CallBloc _callBloc = di.sl.get();
  final _pageController = PageController();

  @override
  void initState() {
    if (widget.isCaller)
      _callBloc.add(const CallEvent.startCall(isCaller: true));
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocConsumer<CallBloc, CallState>(
        bloc: _callBloc,
        listener: (context, state) {
          if (state.isVideoPage) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          }
        },
        builder: (context, state) {
          if (state.status == BlocStatus.loading) {
            return const Center(
              child: SizedBox.square(
                dimension: 24,
                child: CircularProgressIndicator(),
              ),
            );
          }
          if (state.status == BlocStatus.loaded) {
            final receiverAvatar = state.userCallModel?.receiverAvatar ?? '';
            final callerAvatar = state.userCallModel?.callerAvatar ?? '';
            final engine = state.engine;

            return PageView(controller: _pageController, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                    backgroundImage: widget.isCaller
                        ? receiverAvatar.isNotEmpty
                            ? NetworkImage(receiverAvatar)
                            : null
                        : callerAvatar.isNotEmpty
                            ? NetworkImage(callerAvatar)
                            : null,
                    radius: 104.r,
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Text(
                    widget.isCaller
                        ? state.userCallModel?.receiverName ?? ''
                        : state.userCallModel?.callerName ?? '',
                    style: AppTextStyles.boldNormal.copyWith(fontSize: 24),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  if (state.remoteUid != null)
                    Text(
                      DurationFormatter.formatDuration(
                        state.duration ?? Duration.zero,
                      ),
                      style: AppTextStyles.regularTextGrey,
                    )
                  else
                    Text(
                      !widget.isCaller ? l10n.isCallingToStart : l10n.calling,
                      style: AppTextStyles.regularTextGrey,
                    ),
                  SizedBox(
                    height: 108.h,
                  ),
                  if (!widget.isCaller && state.remoteUid == null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Colors.red,
                                shape: const CircleBorder(),
                                fixedSize: Size(60.w, 60.h),
                              ),
                              onPressed: () {
                                _callBloc.add(const CallEvent.endCall());
                              },
                              child: const $AssetsIconsGen().declineCall.svg(),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                              l10n.decline,
                              style: AppTextStyles.regularText
                                  .copyWith(fontSize: 14.h),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                foregroundColor: Colors.grey,
                                backgroundColor: Colors.white,
                                shape: const CircleBorder(),
                                fixedSize: Size(60.w, 60.h),
                              ),
                              onPressed: () {
                                context.router.push(const ChatRoute());
                              },
                              child: const $AssetsIconsGen().callMessage.svg(),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                              l10n.message,
                              style: AppTextStyles.regularText
                                  .copyWith(fontSize: 14.h),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor:
                                    const Color.fromRGBO(52, 199, 89, 1),
                                shape: const CircleBorder(),
                                fixedSize: Size(60.w, 60.h),
                              ),
                              onPressed: () {
                                _callBloc.add(
                                  CallEvent.startCall(
                                    isCaller: widget.isCaller,
                                  ),
                                );
                              },
                              child: const $AssetsIconsGen()
                                  .call
                                  .svg(color: Colors.white),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                              l10n.accept,
                              style: AppTextStyles.regularText
                                  .copyWith(fontSize: 14.h),
                            ),
                          ],
                        ),
                      ],
                    )
                  else
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                foregroundColor: Colors.grey,
                                backgroundColor: Colors.white,
                                shape: const CircleBorder(),
                                fixedSize: Size(60.w, 60.h),
                              ),
                              onPressed: () {
                                _callBloc.add(const CallEvent.toggleSpeaker());
                              },
                              child: const $AssetsIconsGen().speaker.svg(),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                              l10n.speaker,
                              style: AppTextStyles.regularText
                                  .copyWith(fontSize: 14.h),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                foregroundColor: Colors.grey,
                                backgroundColor: Colors.white,
                                shape: const CircleBorder(),
                                fixedSize: Size(60.w, 60.h),
                              ),
                              onPressed: () {
                                _callBloc.add(const CallEvent.toggleVideo());
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: const $AssetsIconsGen().videoCall.svg(),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                              l10n.videoCall,
                              style: AppTextStyles.regularText
                                  .copyWith(fontSize: 14.h),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                foregroundColor: Colors.grey,
                                backgroundColor: Colors.white,
                                shape: const CircleBorder(),
                                fixedSize: Size(60.w, 60.h),
                              ),
                              onPressed: () {
                                _callBloc.add(const CallEvent.toggleAudio());
                              },
                              child: state.isMuted
                                  ? const $AssetsIconsGen().mic.svg()
                                  : const $AssetsIconsGen().mute.svg(),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                              l10n.mute,
                              style: AppTextStyles.regularText
                                  .copyWith(fontSize: 14.h),
                            ),
                          ],
                        ),
                      ],
                    ),
                  if (widget.isCaller)
                    const SizedBox.shrink()
                  else
                    SizedBox(
                      height: 72.h,
                    ),
                  if (!widget.isCaller && state.remoteUid == null)
                    const SizedBox.shrink()
                  else
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 50.h,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.red,
                            shape: const CircleBorder(),
                            fixedSize: Size(60.w, 60.h),
                          ),
                          onPressed: () {
                            _callBloc.add(const CallEvent.endCall());
                          },
                          child: const $AssetsIconsGen().declineCall.svg(),
                        ),
                      ],
                    ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.blueGrey,
                    child: state.remoteUid != null && engine != null
                        ? AgoraVideoView(
                            controller: VideoViewController.remote(
                              rtcEngine: engine,
                              canvas: VideoCanvas(uid: state.remoteUid),
                              connection:
                                  RtcConnection(channelId: state.channelName),
                            ),
                          )
                        : Center(
                            child: Text(
                              l10n.pleaseWaitForRemoteUser,
                              style: AppTextStyles.boldNormal
                                  .copyWith(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                  ),
                  Positioned(
                    bottom: 120.h,
                    left: 16.w,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          widget.isCaller
                              ? state.userCallModel?.receiverName ?? ''
                              : state.userCallModel?.callerName ?? '',
                          style: AppTextStyles.boldNormal
                              .copyWith(fontSize: 18.h, color: Colors.white),
                        ),
                        Text(
                          DurationFormatter.formatDuration(
                            state.duration ?? Duration.zero,
                          ),
                          style: AppTextStyles.regularText
                              .copyWith(fontSize: 14.h, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 120.h,
                    right: 16.w,
                    child: Container(
                      width: 117.w,
                      height: 156.h,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: engine != null
                          ? state.localUserJoined ?? false
                              ? AgoraVideoView(
                                  controller: VideoViewController(
                                    rtcEngine: engine,
                                    canvas: const VideoCanvas(uid: 0),
                                  ),
                                )
                              : const CircularProgressIndicator()
                          : const CircularProgressIndicator(),
                    ),
                  ),
                  Positioned(
                    bottom: 39.h,
                    left: 16,
                    right: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.grey,
                              elevation: 0,
                              backgroundColor: Colors.white,
                              shape: const CircleBorder(),
                              fixedSize: Size(55.w, 55.h),
                            ),
                            onPressed: () {
                              _callBloc.add(const CallEvent.switchCamera());
                            },
                            child: const $AssetsIconsGen().cameraSwap.svg(),
                          ),
                        ),
                        Flexible(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              foregroundColor: Colors.grey,
                              backgroundColor: Colors.white,
                              shape: const CircleBorder(),
                              fixedSize: Size(55.w, 55.h),
                            ),
                            onPressed: () {
                              _callBloc.add(const CallEvent.toggleAudio());
                            },
                            child: state.isMuted
                                ? const $AssetsIconsGen().mic.svg()
                                : const $AssetsIconsGen().mute.svg(),
                          ),
                        ),
                        Flexible(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.red,
                              shape: const CircleBorder(),
                              fixedSize: Size(65.w, 65.h),
                            ),
                            onPressed: () {
                              _callBloc.add(const CallEvent.endCall());
                            },
                            child: const $AssetsIconsGen().declineCall.svg(),
                          ),
                        ),
                        Flexible(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              foregroundColor: Colors.grey,
                              backgroundColor: Colors.white,
                              shape: const CircleBorder(),
                              fixedSize: Size(55.w, 55.h),
                            ),
                            onPressed: () {
                              _callBloc.add(const CallEvent.toggleVideo());
                            },
                            child: state.isVideoCall
                                ? const $AssetsIconsGen().cancelVideo.svg()
                                : const $AssetsIconsGen().videoCall.svg(),
                          ),
                        ),
                        Flexible(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              foregroundColor: Colors.grey,
                              backgroundColor: Colors.white,
                              shape: const CircleBorder(),
                              fixedSize: Size(55.w, 55.h),
                            ),
                            onPressed: () {
                              context.router.push(const ChatRoute());
                            },
                            child: const $AssetsIconsGen().callMessage.svg(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]);
          }

          return const Center(
            child: Text('Error'),
          );
        },
      ),
    );
  }
}
