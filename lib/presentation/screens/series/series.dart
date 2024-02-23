import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lua_app/presentation/screens/series/series_cubit.dart';
import '../../constants/colors.dart';
import '../../widget/ad_helper.dart';
import '../../widget/dark_mode.dart';

class Series extends StatelessWidget {
  const Series({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<SeriesCubit>().fetchSeriesList();

    return BlocBuilder<SeriesCubit, SeriesState>(
      builder: (context, state) {
        if (state is SeriesLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is SeriesLoaded) {
          return SeriesView(
            seriesList: state.seriesList,
          );
        } else {
          return const Center(child: Text("skdhb"));
        }
      },
    );
  }
}

class SeriesView extends StatelessWidget {
  final List<Map<String, dynamic>> seriesList;
  const SeriesView({Key? key, required this.seriesList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Series Question",
            style: TextStyle(
              fontFamily: "Lato",
            ),
          ),
          backgroundColor: AppColor.primary,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < seriesList.length; i++)
                Column(
                  children: [
                    if (i != 0 && i % 10 == 0) const AppAds(),
                    questionTabs(context, i + 1, seriesList[i]["q"])
                  ],
                ),
            ],
          ),
        ));
  }

  Column questionTabs(BuildContext context, int i, String question) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'seriesdetails', arguments: i - 1);
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.96,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              boxShadow: [
                if (!DarkMode.isDarkMode)
                  const BoxShadow(
                      color: Colors.grey, blurRadius: 2, offset: Offset(0, 1))
              ],
              color: DarkMode.isDarkMode ? Colors.black : Colors.white,
              borderRadius: DarkMode.isDarkMode
                  ? BorderRadius.circular(0)
                  : BorderRadius.circular(18),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      width: MediaQuery.of(context).size.width * 0.19,
                      height: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                        color: AppColor.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('$i',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.04,
                                color: Colors.white)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.64,
                      child: Center(
                        child: Text(question,
                            style: TextStyle(
                              fontFamily: "Lato",
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.022,
                              color: DarkMode.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                            )),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_circle_right_outlined,
                    color:
                        DarkMode.isDarkMode ? Colors.white : AppColor.primary),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
