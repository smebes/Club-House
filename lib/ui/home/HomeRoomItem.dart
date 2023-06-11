import 'package:club_house/ui/liveroom/LiveRoom.dart';
import 'package:club_house/utils/DynamicColor.dart';
import 'package:club_house/widgets/Squircle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeRoomItem extends StatelessWidget {
  const HomeRoomItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (_) => const LiveRoom(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.fromLTRB(30, 24, 30, 24),
        decoration: BoxDecoration(
          color: theme.colorScheme.background,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "STARTUP CLUB",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Pitch your start up idea to VCs & top Entrepreneurs",
              style: TextStyle(
                fontSize: 14,
                color: DynamicColor.withBrightness(
                  context: context,
                  color: Colors.grey.shade600,
                  darkColor: Colors.grey.shade300,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Squircle(),
                const SizedBox(width: 5),
                const Squircle(),
                const SizedBox(width: 5),
                const Squircle(),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: DynamicColor.withBrightness(
                      context: context,
                      color: const Color(0xFFeff0f5),
                      darkColor: const Color(0xFF404182),
                    ),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        CupertinoIcons.person_fill,
                        size: 18,
                      ),
                      SizedBox(width: 3),
                      Text("354"),
                      SizedBox(width: 10),
                      Icon(
                        CupertinoIcons.mic_fill,
                        size: 18,
                      ),
                      SizedBox(width: 3),
                      Text("354"),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
