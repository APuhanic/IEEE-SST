part of 'sponsor_form_bloc.dart';

@freezed
class SponsorFormEvent with _$SponsorFormEvent {
  const factory SponsorFormEvent.nameChanged(String name) = _NameChanged;
  const factory SponsorFormEvent.imageChanged(XFile? image) = _ImageChanged;
  const factory SponsorFormEvent.addSponsor() = _AddSponsor;
  const factory SponsorFormEvent.removeImage() = _RemoveImage;
}
