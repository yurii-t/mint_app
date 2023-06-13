class DurationFormatter {
  static String formatDuration(Duration duration) {
    final hours = duration.inHours.toString().padLeft(0, '2');
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');

    return '$hours:$minutes:$seconds';
  }
}
