import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intern_ui/widgets/grid_item.dart';
import 'package:intern_ui/widgets/text_button.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Colors.white,
      ),
      Container(
          height: 450,
          width: double.maxFinite,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Image.network(
            fit: BoxFit.fill,
            colorBlendMode: BlendMode.hardLight,
            color: const Color.fromARGB(255, 106, 73, 0).withOpacity(0.6),
            "https://s3-alpha-sig.figma.com/img/faec/4489/01c4cabc6e39df4f5802ee225e7e1d27?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=d7Z9apyueJVECtMbU3SzWboXP2rViuOQrtajPQlKb6iCF39Ssj1HgCZeiUNx5-QEuuoVPuPDEGrAWVX98V-ohpEvbT9BS8JfXz4d-VwAoK5abtmPgHiDuNKjzIgHZQua9Ccjuby3XckOZmnabY44~QOl4sauCvyz9TQu~t-RJuqpRiogldG-1ID0KnimwVbILg4Tls-v8pozA9gEnc3-b4j1l2nFckPkHoL9GKS3Kx4qoV0cA020T3X8RM2rA5L-xs2ZsLat2kQSIBKLvFqhjc-sjhPOVfvvWiKppVkLhr0tMgLBHo4fpjswO1PyZkfCg4xokDA7QGGnQiZ8HNIf8A__",
          )),
      Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          leading: const Icon(
            CupertinoIcons.line_horizontal_3,
            color: Colors.white,
          ),
          title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good Evening",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Devon",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ]),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.bell_fill,
                  color: Colors.white,
                ))
          ],
        ),
        body: Stack(
          children: [
            Padding(
              // padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: TextButtonWidget(
                          textData: "Send",
                          color: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                      ),
                      Expanded(
                          child: TextButtonWidget(
                              textData: "Request",
                              color: Colors.black,
                              backgroundColor: Colors.white)),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "History",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 8,
                    child: GridView.count(
                      childAspectRatio: 11 / 9,
                      crossAxisCount: 2,
                      children: const [
                        GridItem(),
                        GridItem(),
                        GridItem(),
                        GridItem(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
