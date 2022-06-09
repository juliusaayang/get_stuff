import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:get_stuff/features/stuffs%20list/presentation/pages/bucketlist_page.dart';
import 'package:get_stuff/features/stuffs%20list/presentation/pages/dictionary_page.dart';
import 'package:get_stuff/features/stuffs%20list/presentation/pages/jokes_page.dart';
import 'package:get_stuff/features/stuffs%20list/presentation/widgets/stuffs_list_card.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStuffList extends StatelessWidget {
  const GetStuffList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Get Stuff',
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              StuffsListCard(
                onTap: () {
                  showGeneralDialog(
                    context: context,
                    pageBuilder: (_, __, ___) {
                      return const DictionaryPage();
                    },
                  );
                },
                child: Text(
                  'Dictionary',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              const Gap(20),
              StuffsListCard(
                onTap: () {
                  showGeneralDialog(
                    context: context,
                    pageBuilder: (_, __, ___) {
                      return const BucketlistPage();
                    },
                  );
                },
                child: Text(
                  'Bucket List',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              const Gap(20),
              StuffsListCard(
                onTap: () {
                  showGeneralDialog(
                    context: context,
                    pageBuilder: (_, __, ___) {
                      return const JokesPage();
                    },
                  );
                },
                child: Text(
                  'Jokes',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
