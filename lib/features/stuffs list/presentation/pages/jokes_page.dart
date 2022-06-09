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

class JokesPage extends StatefulWidget {
  const JokesPage({Key? key}) : super(key: key);

  @override
  State<JokesPage> createState() => _JokesPageState();
}

class _JokesPageState extends State<JokesPage> {
  final TextEditingController _jokesController = TextEditingController();

  @override
  void initState() {
    sl<GetStuffsCubit>().getJokes(3);
    super.initState();
  }

  @override
  void dispose() {
    _jokesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopupWidget(
      child: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(
              title: 'Jokes',
            ),
            const Gap(20),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    hintText: 'Increase jokes limit',
                    keyboardtype: TextInputType.number,
                    controller: _jokesController,
                  ),
                ),
                const Gap(20),
                InkWell(
                  onTap: () => sl<GetStuffsCubit>().getJokes(
                    int.parse(_jokesController.text),
                  ),
                  child: Container(
                    height: 55,
                    width: 70,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        'GO',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(30),
            BlocConsumer<GetStuffsCubit, GetStuffsState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const SizedBox();
                  },
                  loading: () {
                    return const SmallLoadingIndicator();
                  },
                  jokes: (jokesEntity) {
                    return Expanded(
                      child: ListView.separated(
                        itemCount: jokesEntity.length,
                        itemBuilder: (context, index) {
                          final jokes = jokesEntity[index];
                          return ContentHolder(
                            text: jokes.joke,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Gap(15);
                        },
                      ),
                    );
                  },
                );
              },
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  error: (message) {
                    return FlushBarNotification.showError(
                      context: context,
                      message: message,
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
