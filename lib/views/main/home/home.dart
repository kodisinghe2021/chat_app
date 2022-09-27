import 'package:chat_app/components/custom_images.dart';
import 'package:chat_app/components/custom_text.dart';
import 'package:chat_app/utils/app_colours.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const HeaderText(text: 'Chat List', fsize: 30),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: CustomNetworkImage(
                  imageUrl: 'https://picsum.photos/id/27/40/40',
                  width: 40,
                  height: 40,
                  fit: BoxFit.fill),
            ),
            SizedBox(width: 10),
          ],
        ),
        body: Center(
          child: SizedBox(
            width: screenSize.width,
            height: screenSize.height,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return const ConversationCard();
              },
              itemCount: 10,
              separatorBuilder: (context, index) {
                return const SizedBox(height: 20);
              },
            ),
          ),
        ),
      ),
    );
  }
}

class ConversationCard extends StatelessWidget {
  const ConversationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 20,
            color: Colors.black54,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        color: kWhite.withOpacity(0.9),
      ),
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.all(3),
            child: NetworkCicularImage(
              imageUrl: 'https://picsum.photos/id/27/40/40',
              width: 40,
              height: 40,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
