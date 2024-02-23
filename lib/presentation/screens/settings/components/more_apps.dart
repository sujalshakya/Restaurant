import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lua_app/presentation/screens/settings/components/more_apps_cubit.dart';
import 'package:store_redirect/store_redirect.dart';
import '../../../../domain/models/MoreAppsModel.dart';
import 'more_app_tiles.dart';

class MoreApps extends StatelessWidget {
  const MoreApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoreAppsCubit, MoreAppsCubitState>(
      builder: (context, state) {
        if (state is MoreAppsCubitLoading) {
          context.read<MoreAppsCubit>().fetchApp();
          return const Center(child: CircularProgressIndicator());
        } else if (state is MoreAppsCubitLoaded) {
          return _buildAppsList(context, state.moreApps);
        } else if (state is MoreAppsCubitError) {
          return const Center(
            child: Text('Error occurred while loading more apps'),
          );
        } else {
          return Center(
            child: Text('Unexpected state: $state'),
          );
        }
      },
    );
  }

  Widget _buildAppsList(BuildContext context, List<MoreAppsModel> moreApps) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'More Apps',
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              MoreAppsTile(
                appname: "Codynn",
                appicon:
                    "https://play-lh.googleusercontent.com/T3nY-1efAfs-7nKq1dVGCcMhxF9EDcK2hSozJf5pHxCG32SuZBBBu3pil0CSORff4j-A=w480-h960",
                onTap: () async {
                  StoreRedirect.redirect(
                      androidAppId: "com.allbachelor.androidedu");
                },
              ),
              for (int i = 0; i < moreApps.length; i++)
                MoreAppsTile(
                  appname: moreApps[i].applicationName,
                  appicon: moreApps[i].appicon,
                  onTap: () async {
                    StoreRedirect.redirect(
                      androidAppId: moreApps[i].playstoreLink,
                      iOSAppId: moreApps[i].IosLink,
                    );
                  },
                ),
            ],
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:store_redirect/store_redirect.dart';

// import '../../../../domain/models/MoreAppsModel.dart';
// import '../../../../data/repositories/retrieve_moreapps.dart';
// import 'more_app_tiles.dart';

// class MoreApps extends StatefulWidget {
//   const MoreApps({Key? key}) : super(key: key);

//   @override
//   State<MoreApps> createState() => _MoreAppsState();
// }

// class _MoreAppsState extends State<MoreApps> {
//   List<MoreAppsModel> moreApps = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     fetchApp();
//   }

//   fetchApp() async {
//     setState(() {
//       isLoading = true;
//     });
//     moreApps = await fetchApps();
//     if (mounted) {
//       setState(() {
//         isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(16),
//           child: Text(
//             'More Apps',
//             style: Theme.of(context).textTheme.caption,
//           ),
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: [
//               SizedBox(
//                 width: MediaQuery.of(context).size.width * 0.02,
//               ),
//               MoreAppsTile(
//                 appname: "Codynn",
//                 appicon:
//                     "https://play-lh.googleusercontent.com/T3nY-1efAfs-7nKq1dVGCcMhxF9EDcK2hSozJf5pHxCG32SuZBBBu3pil0CSORff4j-A=w480-h960",
//                 onTap: () async {
//                   StoreRedirect.redirect(
//                       androidAppId: "com.allbachelor.androidedu");
//                 },
//               ),
//               if (isLoading)
//                 const CircularProgressIndicator()
//               else
//                 for (int i = 0; i < moreApps.length; i++)
//                   MoreAppsTile(
//                     appname: moreApps[i].applicationName,
//                     appicon: moreApps[i].appicon,
//                     onTap: () {
//                       StoreRedirect.redirect(
//                           androidAppId: moreApps[i].playstoreLink,
//                           iOSAppId: moreApps[i].IosLink);
//                     },
//                   ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
