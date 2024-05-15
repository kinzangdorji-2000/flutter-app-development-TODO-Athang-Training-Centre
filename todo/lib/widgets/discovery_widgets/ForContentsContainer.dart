import 'package:flutter/material.dart';
import 'package:todo/widgets/discovery_widgets/ForContentCard.dart';

class ForContentsContainer extends StatelessWidget {
  const ForContentsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          ForContentCard(
            url: "https://cdn.pixabay.com/photo/2024/02/22/09/04/warehouse-8589487_640.jpg",
            title: "Image",
            description: "Description.",
          ),
          ForContentCard(
            url: "https://cdn.pixabay.com/photo/2023/03/15/10/14/hamburg-7854198_640.jpg",
            title: "Image",
            description: "Description",
          ),
          ForContentCard(
            url: "https://cdn.pixabay.com/photo/2018/02/27/06/30/skyscrapers-3184798_640.jpg",
            title: "Image",
            description: "Description",
          ),
          ForContentCard(
            url: "https://cdn.pixabay.com/photo/2022/12/28/21/10/night-7683839_640.jpg",
            title: "Iamge",
            description: "Description",
          ),
        ],
      ),
    );
  }
}