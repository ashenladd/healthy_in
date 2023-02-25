import 'package:flutter/material.dart';
import 'package:healthy_in/theme/fonts.dart';

class ListWebinarWidget extends StatelessWidget {
  const ListWebinarWidget({
    super.key,
    required this.image,
    required this.title,
    required this.child,
  });

  final String image;
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 17),
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(197, 197, 197, 1.0)),
          borderRadius: BorderRadius.circular(5)),
      // height: 202,
      width: 260,
      child: Column(
        children: [
          Container(
            height: 128,
            width: 260,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          Container(
            // height: 72,
            width: 260,
            color: Colors.white,
            child: Container(
              margin: const EdgeInsets.all(5),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: subTitle.copyWith(fontSize: 12),
                      maxLines: 2,
                    ),
                    child
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
