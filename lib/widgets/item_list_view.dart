import 'package:flutter/material.dart';
import 'package:healthy_in/theme/fonts.dart';

// class ItemListView extends StatelessWidget {
//   const ItemListView({
//     super.key,
//     required this.itemCount,
//     required this.image,
//     required this.child,
//     required this.title,
//   });

//   final int itemCount;

//   final String title;
//   final Widget child;
//   final String image;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 202,
//       child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: itemCount,
//           itemBuilder: (context, index) {
//             return ListWebinarWidget(image: image, title: title, child: child);
//           }),
//     );
//   }
// }

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
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: 17),
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(197, 197, 197, 1.0)),
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
                margin: EdgeInsets.all(5),
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
      ),
    );
  }
}
