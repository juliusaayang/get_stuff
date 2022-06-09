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
import 'package:get_stuff/features/stuffs%20list/presentation/widgets/text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class DictionaryPage extends StatefulWidget {
  const DictionaryPage({Key? key}) : super(key: key);

  @override
  State<DictionaryPage> createState() => _DictionaryPageState();
}

class _DictionaryPageState extends State<DictionaryPage> {
  final TextEditingController _dictionaryController = TextEditingController();

  @override
  void dispose() {
    _dictionaryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopupWidget(
      child: SafeArea(
        child: ListView(
          children: [
            const CustomAppBar(
              title: 'Dictionary',
            ),
            const Gap(20),
            CustomTextField(
              hintText: 'Search word',
              controller: _dictionaryController,
            ),
            const Gap(20),
            BlocConsumer<GetStuffsCubit, GetStuffsState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  dictionary: (dictionary) {
                    if (dictionary.valid == false) {
                      return FlushBarNotification.showError(
                        context: context,
                        message: 'Invalid word!!',
                      );
                    } else if (dictionary.valid == true) {
                      return FlushBarNotification.showSuccess(
                        context: context,
                        message: 'Successful!!',
                      );
                    }
                  },
                  error: (message) {
                    return FlushBarNotification.showError(
                      context: context,
                      message: message,
                    );
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return InkWell(
                      onTap: () => sl<GetStuffsCubit>().getDictionary(
                        _dictionaryController.text.trim(),
                      ),
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.primaryColor,
                        ),
                        child: Center(
                          child: Text(
                            'Search',
                            style: GoogleFonts.poppins(
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  loading: () {
                    return const SmallLoadingIndicator();
                  },
                );
              },
            ),
            const Gap(20),
            BlocBuilder<GetStuffsCubit, GetStuffsState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const SizedBox();
                  },
                  dictionary: (dictionary) {
                    return (dictionary.definition == "")
                        ? const SizedBox()
                        : SingleChildScrollView(
                            child: ContentHolder(
                              text: dictionary.definition!,
                            ),
                          );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
