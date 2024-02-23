import 'package:flutter/material.dart';
import 'package:store_redirect/store_redirect.dart';

import '../../constants/colors.dart';

class HighSchoolQuiz extends StatelessWidget {
  const HighSchoolQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 28,
                    height: 28,
                    child: Image.asset('images/logo.png'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "cplusplusplus Program",
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: AppColor.primary,
                        ),
                  )
                ],
              ),
              const SizedBox(
                width: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: OutlinedButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Close'),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 3,
                    child: ElevatedButton(
                      onPressed: () {
                        StoreRedirect.redirect(
                            androidAppId: "com.allbachelor.goprogramsapp",
                            iOSAppId: "585027354");
                      },
                      child: const Text(
                        'Dowload Our Pro App',
                        maxLines: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
