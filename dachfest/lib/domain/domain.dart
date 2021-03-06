class Schedule {
  final Day day1;
  final Day day2;

  Schedule({this.day1, this.day2});
}

class SlotInfo {
  final String start;
  final String end;

  SlotInfo({this.start, this.end});
}

class Day {
  final Track track1;
  final Track track2;
  final Track track3;
  final List<SlotInfo> slotInfo;

  Day({this.track1, this.track2, this.track3, this.slotInfo});
}

class Track {
  final List<Talk> talks;
  final String name;

  Track({this.talks, this.name});
}

final emptyTalk = Talk(
  id: "",
  title: "",
  speakers: [],
);

class Talk {
  final String id;
  final String title;
  final String description;
  final List<Speaker> speakers;
  final int extend;

  Talk({this.id, this.title, this.description, this.speakers, this.extend = 1});

  @override
  String toString() {
    return 'Talk: $title';
  }
}

class Speaker {
  final id;
  final String name;
  final String picture;

  Speaker({this.id, this.name, this.picture,});
}
