part of 'announcement_form_bloc.dart';

@freezed
class AnnouncementFormEvent with _$AnnouncementFormEvent {
  const factory AnnouncementFormEvent.createAnnouncement() =
      _CreateAnnouncement;
  const factory AnnouncementFormEvent.titleChanged(String title) =
      _TitleChanged;
  const factory AnnouncementFormEvent.descriptionChanged(String description) =
      _DescriptionChanged;
  const factory AnnouncementFormEvent.updateAnnouncement() =
      _UpdateAnnouncement;
  const factory AnnouncementFormEvent.deleteAnnouncement(
    String announcementId,
  ) = _DeleteAnnouncement;
  const factory AnnouncementFormEvent.setInitialValues(
    Announcement announcement,
  ) = _SetInitialValues;
  const factory AnnouncementFormEvent.resetFrom() = _ResetFrom;
}
