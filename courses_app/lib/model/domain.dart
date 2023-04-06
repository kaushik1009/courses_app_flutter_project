import '../strings.dart';

enum Domain { all, iOS, android, flutter, sss, unity, macOS, archived, unknown }

extension DomainExtension on Domain {
  String get name {
    switch (this) {
      case Domain.iOS:
        return Strings.iOS;
      case Domain.android:
        return Strings.android;
      case Domain.unity:
        return Strings.unity;
      case Domain.sss:
        return Strings.sss;
      case Domain.flutter:
        return Strings.flutter;
      case Domain.macOS:
        return Strings.macOS;
      case Domain.archived:
      default:
        return Strings.unknown;
    }
  }
}
