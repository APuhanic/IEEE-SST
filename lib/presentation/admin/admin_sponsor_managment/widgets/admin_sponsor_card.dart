import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/data/models/sponsor_model/sponsor_model.dart';
import 'package:ieee_sst/presentation/common/bloc/sponsors_bloc/bloc/sponsor_managment_bloc.dart';

class AdminSponsorCard extends StatelessWidget {
  const AdminSponsorCard({
    super.key,
    required this.sponsor,
  });

  final Sponsor sponsor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                // Wrapping the Text in Expanded to allow wrapping
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  child: Text(
                    sponsor.name,
                    style: AppTextStyle.nameText,
                    maxLines: null, // Allows unlimited lines
                    overflow: TextOverflow.visible, // Ensures text visibility
                  ),
                ),
              ),
              _SponsorPopupMenu(sponsor),
            ],
          ),
          Expanded(
            child: Center(
              child: Image.network(
                sponsor.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SponsorPopupMenu extends StatelessWidget {
  const _SponsorPopupMenu(this.sponsor);

  final Sponsor sponsor;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: 'delete',
            child: const Text('Delete'),
            onTap: () {
              context
                  .read<SponsorManagmentBloc>()
                  .add(SponsorManagmentEvent.deleteSponsor(sponsor));
            },
          ),
        ];
      },
    );
  }
}
