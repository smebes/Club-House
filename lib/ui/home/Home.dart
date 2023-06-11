import 'dart:math';

import 'package:club_house/ui/home/HomeRoomItem.dart';
import 'package:club_house/ui/home/HomeUpcoming.dart';
import 'package:club_house/utils/DynamicColor.dart';
import 'package:club_house/utils/MemojiColors.dart';
import 'package:club_house/widgets/SquircleIconButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final topics = [
      "🎨 Design",
      "🌍 Flutter",
      "🎯 Figma",
      "👀 Clone",
      "⛱ Saturday",
    ];
    final list = [
      Text(
        "Upcoming",
        style: theme.textTheme.headlineMedium,
      ),
      const HomeUpcoming(
        time: "10:00 - 12:00",
        title: "Design talks and chill",
      ),
      Text(
        "Happening now",
        style: theme.textTheme.headlineMedium,
      ),
      const HomeRoomItem(),
      const HomeRoomItem(),
      const HomeRoomItem(),
    ];
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Good Morning,\nLeslie"),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.search),
            onPressed: () {},
          ),
          const SizedBox(width: 5),
          CircleAvatar(
            radius: 18,
            backgroundColor: MemojiColors.blue,
            child: Image.asset("assets/images/10.png"),
          ),
          const SizedBox(width: 20),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: SizedBox(
            height: 50,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: topics.length,
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              separatorBuilder: (_, __) => const SizedBox(width: 10),
              itemBuilder: (context, index) {
                final color = MemojiColors.values[Random.secure().nextInt(MemojiColors.values.length - 1) + 1];
                return InputChip(
                  backgroundColor: DynamicColor.withBrightness(
                    context: context,
                    color: color,
                    darkColor: color.withOpacity(0.15),
                  ),
                  label: Text(
                    topics[index],
                    style: TextStyle(
                      height: 1.2,
                      color: theme.textTheme.bodyMedium!.color,
                    ),
                  ),
                  onPressed: () {},
                );
              },
            ),
          ),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 200),
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return list[index];
        },
      ),
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0, 0.35, 1],
            colors: [
              theme.scaffoldBackgroundColor.withOpacity(0),
              theme.scaffoldBackgroundColor,
              theme.scaffoldBackgroundColor,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 25, 20, 10),
          child: SafeArea(
            top: false,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SquircleIconButton(
                  icon: const Icon(Icons.calendar_today_outlined),
                  onPressed: () {},
                ),
                ElevatedButton.icon(
                  icon: const Icon(CupertinoIcons.plus_circle_fill),
                  label: const Text("Start room"),
                  onPressed: () {},
                ),
                SquircleIconButton(
                  icon: const Icon(CupertinoIcons.person),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
