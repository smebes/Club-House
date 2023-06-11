import 'package:club_house/ui/liveroom/LiveRoomMember.dart';
import 'package:club_house/utils/DynamicColor.dart';
import 'package:club_house/utils/MemojiColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LiveRoom extends StatelessWidget {
  const LiveRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final members = [
      const LiveRoomMember(
        name: "Sarah",
        isModerator: true,
        isMuted: false,
        imagePath: "assets/images/3.png",
        color: MemojiColors.black,
      ),
      const LiveRoomMember(
        name: "Daniel",
        isModerator: true,
        imagePath: "assets/images/2.png",
        color: MemojiColors.amber,
      ),
      const LiveRoomMember(
        name: "Samantha",
        isModerator: true,
        imagePath: "assets/images/4.png",
        color: MemojiColors.white,
      ),
      const LiveRoomMember(
        name: "Aishat",
        isModerator: true,
        imagePath: "assets/images/6.png",
        color: MemojiColors.yellow,
      ),
      const LiveRoomMember(
        name: "Ruth",
        isModerator: true,
        imagePath: "assets/images/5.png",
        color: MemojiColors.green,
      ),
      const LiveRoomMember(
        name: "Rich",
        imagePath: "assets/images/1.png",
        color: MemojiColors.red,
      ),
      const LiveRoomMember(
        name: "Sarah",
        isNewMember: true,
        imagePath: "assets/images/7.png",
        color: MemojiColors.blue,
      ),
      const LiveRoomMember(
        name: "Mercy",
        isNewMember: true,
        imagePath: "assets/images/8.png",
        color: MemojiColors.white,
      ),
      const LiveRoomMember(
        name: "Tim",
        isNewMember: true,
        imagePath: "assets/images/9.png",
        color: MemojiColors.purple,
      ),
      const LiveRoomMember(
        name: "Ed",
        isNewMember: true,
        imagePath: "assets/images/10.png",
        color: MemojiColors.yellow,
      ),
      const LiveRoomMember(
        name: "John",
        isNewMember: true,
        imagePath: "assets/images/11.png",
        color: MemojiColors.green,
      ),
      const LiveRoomMember(
        name: "Lauret",
        isNewMember: true,
        imagePath: "assets/images/12.png",
        color: MemojiColors.purple,
      ),
    ];
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Design talk and chill"),
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
              icon: const Icon(CupertinoIcons.chevron_down),
              onPressed: () {
                Navigator.maybePop(context);
              },
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: members.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1 / 1,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 14,
                ),
                itemBuilder: (context, index) {
                  return members[index];
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
              decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 6,
                    width: 70,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          maxLines: null,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFF8281ea),
                            hintText: "Type a thought here...",
                            hintStyle: const TextStyle(color: Colors.white70),
                            contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white,
                        foregroundColor: theme.primaryColor,
                        child: const Icon(CupertinoIcons.paperplane_fill),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: ColoredBox(
          color: theme.primaryColor,
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            height: 110,
            decoration: BoxDecoration(
              color: theme.scaffoldBackgroundColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            child: SafeArea(
              top: false,
              child: Row(
                children: [
                  TextButton.icon(
                    icon: const Text(
                      "✌🏼",
                      style: TextStyle(fontSize: 18),
                    ),
                    label: const Text("Leave quietly"),
                    style: TextButton.styleFrom(
                      foregroundColor: DynamicColor.withBrightness(
                        context: context,
                        color: theme.primaryColor,
                        darkColor: const Color(0xFF9d97ec),
                      ), textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      backgroundColor: DynamicColor.withBrightness(
                        context: context,
                        color: const Color(0xFFeff0f5),
                        darkColor: const Color(0xFF2a2b29),
                      ),
                    ),
                    onPressed: () {},
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: DynamicColor.withBrightness(
                      context: context,
                      color: const Color(0xFFeff0f5),
                      darkColor: const Color(0xFF2a2b29),
                    ),
                    child: const Text(
                      "✋🏼",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(width: 10),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: DynamicColor.withBrightness(
                      context: context,
                      color: const Color(0xFFeff0f5),
                      darkColor: const Color(0xFF2a2b29),
                    ),
                    child: Image.asset("assets/images/10.png"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
