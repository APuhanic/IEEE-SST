part of 'sponsor_managment_bloc.dart';

@freezed
class SponsorManagmentEvent with _$SponsorManagmentEvent {
  const factory SponsorManagmentEvent.loadSponsors() = _LoadSponsors;
  const factory SponsorManagmentEvent.deleteSponsor(Sponsor sponsor) =
      _DeleteSponsor;
}
