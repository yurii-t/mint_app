// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class AudioPosition extends Equatable {
  final String id;
  final Duration position;
  final bool isPlaying;
  final Duration fullDuration;

  const AudioPosition({
    required this.id,
    required this.position,
    required this.isPlaying,
    required this.fullDuration,
  });

  @override
  List<Object> get props => [id, position, isPlaying, fullDuration];
}
