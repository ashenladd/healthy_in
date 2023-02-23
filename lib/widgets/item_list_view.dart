import 'package:flutter/material.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({
    super.key,
    required this.itemCount,
    required this.image,
    required this.title,
    required this.child,
  });

  final int itemCount;

  final Text title;
  final Widget child;
  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 202,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(right: 17),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromRGBO(197, 197, 197, 1.0)),
                    borderRadius: BorderRadius.circular(5)),
                height: 202,
                width: 260,
                child: Column(
                  children: [
                    Container(
                      height: 128,
                      width: 260,
                      decoration: BoxDecoration(
                          image:
                              DecorationImage(image: image, fit: BoxFit.cover)),
                    ),
                    Container(
                      height: 72,
                      width: 260,
                      color: Colors.white,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [title, child]),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
