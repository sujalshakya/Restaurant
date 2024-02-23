import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lua_app/presentation/constants/colors.dart';
import 'package:lua_app/presentation/screens/dialogs/download_pro_cubit.dart';

class DownloadPro extends StatelessWidget {
  final DownloadProCubit cubit;

  const DownloadPro({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DownloadProCubit, DownloadProState>(
      bloc: cubit,
      builder: (context, state) {
        return Dialog(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
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
                        child: Image.asset('images/logo/logo.png'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "GO Program",
                            style:
                                Theme.of(context).textTheme.headline5?.copyWith(
                                      color: AppColor.primary,
                                      fontFamily: "Lato",
                                    ),
                          ),
                          Text(
                            " Pro",
                            style:
                                Theme.of(context).textTheme.headline5?.copyWith(
                                      color: AppColor.tertiary,
                                      fontFamily: "Lato",
                                    ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  if (state is GettingVersionState)
                    const CircularProgressIndicator()
                  else if (state is VersionReceivedState)
                    Text(
                      'Version: ${(state as VersionReceivedState).versionNumber}',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: AppColor.primary,
                            fontFamily: "Lato",
                          ),
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
