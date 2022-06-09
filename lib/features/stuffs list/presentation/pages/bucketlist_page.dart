// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get_stuff/core/constants/colors/colors.dart';
import 'package:get_stuff/core/injections/injection.dart';
import 'package:get_stuff/features/stuffs%20list/presentation/cubit/get_stuffs_cubit.dart';
import 'package:get_stuff/features/stuffs%20list/presentation/cubit/get_stuffs_state.dart';
import 'package:get_stuff/features/stuffs%20list/presentation/widgets/appbar.dart';
import 'package:get_stuff/features/stuffs%20list/presentation/widgets/content_holder.dart';
import 'package:get_stuff/features/stuffs%20list/presentation/widgets/flushbar_notification.dart';
import 'package:get_stuff/features/stuffs%20list/presentation/widgets/popup_widget.dart';
import 'package:get_stuff/features/stuffs%20list/presentation/widgets/small_loading_indicatior.dart';
import 'package:google_fonts/google_fonts.dart';

class BucketlistPage extends StatefulWidget {
  const BucketlistPage({Key? key}) : super(key: key);

  @override
  State<BucketlistPage> createState() => _BucketlistPageState();
}

class _BucketlistPageState extends State<BucketlistPage> {
  @override
  void initState() {
    sl<GetStuffsCubit>().getBucketlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopupWidget(
      child: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              title: 'Bucket List',
            ),
            Gap(30),
            BlocBuilder<GetStuffsCubit, GetStuffsState>(
              builder: (context, state) {
                return state.maybeWhen(
                  bucketlist: (bucketlist) {
                    return ContentHolder(
                      text: bucketlist.item,
                    );
                  },
                  orElse: () {
                    return Container();
                  },
                  error: (message) {
                    return Container(
                      padding: const EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.redColor,
                      ),
                      child: Center(
                        child: Text(
                          message,
                          softWrap: true,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                  loading: () {
                    return SmallLoadingIndicator();
                  },
                );
              },
            ),
            Gap(20),
            InkWell(
              onTap: () => sl<GetStuffsCubit>().getBucketlist(),
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryColor,
                ),
                child: Center(
                  child: Icon(
                    Icons.refresh,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
