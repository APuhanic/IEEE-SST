part of 'sponsor_managment_bloc.dart';

@freezed
class SponsorManagmentState with _$SponsorManagmentState {
  const factory SponsorManagmentState.initial() = _Initial;
  const factory SponsorManagmentState.loading() = _Loading;
  const factory SponsorManagmentState.loaded(List<Sponsor> sponsors) = _Loaded;
  const factory SponsorManagmentState.error(String message) = _Error;
}
