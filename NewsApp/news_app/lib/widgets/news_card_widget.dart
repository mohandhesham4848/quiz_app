import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  // final Image image;
  // final String title;
  // final String Discreption;
  const NewsCard({
    super.key,
    // required this.image,
    // required this.title,
    // required this.Discreption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 240,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/business.avif'),
              ),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              color: Colors.redAccent,
            ),
          ),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            'asdasd asfkldsfs fjgsdfjgsdfjg sd fasfk dfsdfgdsfg d sdfasfkmasfsdfsdfkjsdfljkgskgf jkgsdjfg sdmf',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            'asdasd asfkldsfs fjgsdfjgsdfjg sd fjkgsd  jf  gasd mkfdas sadasdasdasd  sadd  asd asd asd as  asd asd asd as d as sdfsfsfsfsdfsdsdf',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
