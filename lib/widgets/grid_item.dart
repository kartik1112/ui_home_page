import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Image.network(
              colorBlendMode: BlendMode.hardLight,
              color: Colors.black.withOpacity(0.9),
              width: double.maxFinite,
              fit: BoxFit.cover,
              "https://s3-alpha-sig.figma.com/img/faec/4489/01c4cabc6e39df4f5802ee225e7e1d27?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=d7Z9apyueJVECtMbU3SzWboXP2rViuOQrtajPQlKb6iCF39Ssj1HgCZeiUNx5-QEuuoVPuPDEGrAWVX98V-ohpEvbT9BS8JfXz4d-VwAoK5abtmPgHiDuNKjzIgHZQua9Ccjuby3XckOZmnabY44~QOl4sauCvyz9TQu~t-RJuqpRiogldG-1ID0KnimwVbILg4Tls-v8pozA9gEnc3-b4j1l2nFckPkHoL9GKS3Kx4qoV0cA020T3X8RM2rA5L-xs2ZsLat2kQSIBKLvFqhjc-sjhPOVfvvWiKppVkLhr0tMgLBHo4fpjswO1PyZkfCg4xokDA7QGGnQiZ8HNIf8A__"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage("https://s3-alpha-sig.figma.com/img/e14d/32f0/84ecce2eb3408b9e4a4f85ea12de0b5e?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dIMWbUwmhGFYbzGddLtkfoE0FlP3Th1cVmTSI1KUuAk3aMGbenxEtRe4Y08KOqcek07dz4s8NYvOuWokRAqNMyr~n2CyjiI4xrH~xsRkLGnJJLB85qDHfGlNYVwNYfztNYIyBi5l0~1p~mmI-a24hb-dhpHX1CzofmMiRiPsn75u2K-uslh7HNVUHACtCfSNX0q2exlpgR9VK5lDtUWZdi2kw5-rk-nQr5zF48xPZcXbFgK6iMPi41Wcj7l4Ft2pLm689Xl-BvlPitHEheE4ZC0OOPtD4YUJJiQpJhFgOp65WqJXwmvVIVjFrzNfIw9qyi~b7Rrhr0~m8CuhF0n2BQ__"),
                        radius: 15,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Kaiya",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "29/9/0001",
                          style: TextStyle(
                            color: Colors.white.withAlpha(200),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Expanded(child: SizedBox()),
                const Text(
                  "+ \$250",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
