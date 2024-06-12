part of 'announcement_form_bloc.dart';

@freezed
class AnnouncementFormEvent with _$AnnouncementFormEvent {
  const factory AnnouncementFormEvent.createAnnouncement() =
      _CreateAnnouncement;
  const factory AnnouncementFormEvent.titleChanged(String title) =
      _TitleChanged;
  const factory AnnouncementFormEvent.descriptionChanged(String description) =
      _DescriptionChanged;
}
