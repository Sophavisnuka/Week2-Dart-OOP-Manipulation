class MyDuration {
  final int _milliseconds;
  
  MyDuration(this._milliseconds);

  MyDuration.fromHours(int hours)
    : _milliseconds = hours * 60 * 60 * 1000;
  
  MyDuration.fromMinutes(int minutes)
    : _milliseconds = minutes * 60 * 1000;

  MyDuration.fromSeconds(int seconds)
    : _milliseconds = seconds * 1000;
  
   // Getter for total milliseconds
  int get milliseconds => _milliseconds;
  
  MyDuration operator + (MyDuration other ) {
    return MyDuration(this._milliseconds + other._milliseconds);
  }

  bool operator > (MyDuration other) {
    return _milliseconds > other._milliseconds;
  }

  MyDuration operator - (MyDuration other ) {
    int result = _milliseconds - other._milliseconds;
    if (result < 0) {
      throw new Exception('Duration cannot be negative');
    } else {
      return MyDuration(result);
    }
  }

  // Display the duration in a readable format
  @override
  String toString() {
    int seconds = (_milliseconds / 1000).round();
    int minutes = (seconds / 60).floor();
    seconds = seconds % 60;
    int hours = (minutes / 60).floor();
    minutes = minutes % 60;
    return '$hours hours, $minutes minutes, $seconds seconds';
  }
}