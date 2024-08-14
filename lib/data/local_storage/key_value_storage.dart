import 'package:hive/hive.dart';
import 'package:ieee_sst/data/models/announcement_model/announcement_model.dart';
import 'package:ieee_sst/data/models/comment_model/comment_model.dart';
import 'package:ieee_sst/data/models/post_model/post_model.dart';
import 'package:ieee_sst/data/models/profile_model/profile_model.dart';
import 'package:ieee_sst/data/models/sponsor_model/sponsor_model.dart';
import 'package:ieee_sst/domain/models/event.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class KeyValueStorage {
  static const _eventsBoxKey = 'events';

  KeyValueStorage(this._hive) {
    try {
      _hive
        ..registerAdapter(EventAdapter())
        ..registerAdapter(AnnouncementAdapter())
        ..registerAdapter(CommentAdapter())
        ..registerAdapter(PostAdapter())
        ..registerAdapter(ProfileAdapter());
    } catch (e) {
      throw Exception(
          'You shouldn\'t have more than one [KeyValueStorage] instance in your '
          'project');
    }
  }

  final HiveInterface _hive;

  Future<Box<Event>> get eventsBox async {
    return _hive.openBox<Event>(_eventsBoxKey);
  }

  Future<Box<Announcement>> get announcementsBox async {
    return _hive.openBox<Announcement>('announcements');
  }

  Future<Box<Comment>> get commentsBox async {
    return _hive.openBox<Comment>('comments');
  }

  Future<Box<Post>> get postsBox async {
    return _hive.openBox<Post>('posts');
  }

  Future<Box<Profile>> get profileBox async {
    return _hive.openBox<Profile>('profile');
  }

  Future<Box<Sponsor>> get sponsorsBox async {
    return _hive.openBox<Sponsor>('sponsors');
  }

  /*Future<Box<T>> openBox<T>(String boxKey) async {
    return Hive.openBox(boxKey);
  }*/
}
