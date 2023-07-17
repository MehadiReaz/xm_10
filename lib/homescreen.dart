import 'package:flutter/material.dart';

import 'news.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<News> Newses = [
    News(
      title: 'News 1',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpnHpTEi61x2qXfpDUwmICoXWr5OFJ2dH29A&usqp=CAU',
    ),
    News(
      title: 'News 2',
      imageUrl:
          'https://timesofindia.indiatimes.com/thumb/msid-99625052,width-1200,height-900,resizemode-4/99625052.jpg',
    ),
    News(
      title: 'News 3',
      imageUrl:
          'https://feeds.abplive.com/onecms/images/uploaded-images/2023/07/03/eec7c0ac3e508fb411dc788f9cdd75181688407449422320_original.jpg',
    ),
    News(
      title: 'News 4',
      imageUrl:
          'https://imageresizer.static9.net.au/GqP2_ZNyzogaKofOT6D29bG1_W4=/1920x0/filters:format(webp)/vms-tv-images-prod.s3-ap-southeast-2.amazonaws.com%2F2023%2F06%2F512511%2Fmel23_6pm_nextgen_hitch_clean_standardcard.png',
    ),
    News(
      title: 'News 5',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpnHpTEi61x2qXfpDUwmICoXWr5OFJ2dH29A&usqp=CAU',
    ),
    News(
      title: 'News 6',
      imageUrl:
          'https://feeds.abplive.com/onecms/images/uploaded-images/2023/07/03/eec7c0ac3e508fb411dc788f9cdd75181688407449422320_original.jpg',
    ),
    News(
      title: 'News 7',
      imageUrl:
          'https://imageresizer.static9.net.au/GqP2_ZNyzogaKofOT6D29bG1_W4=/1920x0/filters:format(webp)/vms-tv-images-prod.s3-ap-southeast-2.amazonaws.com%2F2023%2F06%2F512511%2Fmel23_6pm_nextgen_hitch_clean_standardcard.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return GridView.builder(
            itemCount: Newses.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  height: 300,
                  child: Card(
                    child: Column(
                      children: [
                        Image.network(
                          Newses[index].imageUrl,
                          width: double.infinity,
                          height: 350,
                          fit: BoxFit.fill,
                        ),
                        Text(
                          Newses[index].title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ));
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (orientation == Orientation.portrait) ? 1 : 2,
            ),
          );
        },
      ),
    );
  }
}
