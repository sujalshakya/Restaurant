import '../../data/repositories/contents.dart';

class StudyList {
  final String title;
  final List<StudyList> items;

  const StudyList({
    required this.title,
    this.items = const [],
  });
}

final studyList = <StudyList>[
  for (var i = 0; i < Contents.contentsList[0]["items"].length; i++)
    StudyList(title: Contents.contentsList[0]["items"][i]['title'], items: [
      for (var j = 0;
          j < Contents.contentsList[0]["items"][i]['content'].length;
          j++)
        StudyList(
            title: Contents.contentsList[0]["items"][i]['content'][j]
                ['tag_line'])
    ]),
];
