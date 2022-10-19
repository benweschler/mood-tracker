import 'package:mood_tracker/utils/date_time_utils.dart';

import 'data/mood_entry.dart';
import 'models/mood_entry_model.dart';

class Constants {
  static const int maxMood = 10;
  static const Duration sleepGoal = Duration(hours: 7, minutes: 30);

  static const String entryBoxName = "entries";

  static loadDummyData(MoodEntryModel model) {
    for(MoodEntry  entry in _dummyData) {
      model.addEntry(entry);
    }
  }

  static final _dummyData = [
    MoodEntry(
      mood: 3,
      sleep: const Duration(hours: 4, minutes: 30),
      description: "Bad day.",
      timestamp: DateTime.now().copyWith(day: DateTime.now().day - 1),
    ),
    MoodEntry(
      mood: 8,
      sleep: const Duration(hours: 9),
      description: "Good day.",
      timestamp: DateTime.now().copyWith(day: DateTime.now().day - 2),
    ),
    MoodEntry(
      mood: 1,
      sleep: const Duration(hours: 5),
      description: "Super bad day.",
      timestamp: DateTime.now().copyWith(day: DateTime.now().day - 3),
    ),
    MoodEntry(
      mood: 10,
      sleep: const Duration(hours: 9),
      description: "Perfect day.",
      timestamp: DateTime.now().copyWith(day: DateTime.now().day - 4),
    )
  ];
}

