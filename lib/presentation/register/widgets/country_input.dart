import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/register/bloc/registration_bloc.dart';
import 'package:country_picker/country_picker.dart';

class CountryInput extends StatelessWidget {
  const CountryInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      builder: (context, state) {
        final TextEditingController countryController = TextEditingController(
          text: state.country,
        );

        return SizedBox(
          height: 60,
          child: TextFormField(
            controller: countryController,
            readOnly: true,
            onTap: () {
              showCountryPicker(
                context: context,
                countryListTheme: CountryListThemeData(
                  bottomSheetHeight: MediaQuery.of(context).size.height * 0.7,
                  flagSize: 30,
                  backgroundColor: AppColors.white,
                  inputDecoration: InputDecoration(
                    hintText: 'Search for a country',
                    hintStyle: AppTextStyle.textForm,
                    filled: true,
                    fillColor: AppColors.white,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                onSelect: (Country country) {
                  // Trigger the Bloc event when a country is selected
                  context.read<RegistrationBloc>().add(
                        RegistrationEvent.countryChanged(country.name),
                      );
                },
              );
              FocusScope.of(context).unfocus();
            },
            decoration: InputDecoration(
              hintText: 'Country',
              hintStyle: AppTextStyle.textForm,
              filled: true,
              fillColor: AppColors.white,
              prefixIcon: const Icon(
                FontAwesomeIcons.flag,
                color: AppColors.grayText,
              ),
              suffixIcon: GestureDetector(
                child: const Icon(
                  Icons.arrow_drop_down,
                  color: AppColors.grayText,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
            enableSuggestions: false,
            autocorrect: false,
          ),
        );
      },
    );
  }
}
