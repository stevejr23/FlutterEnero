import 'dart:ui';

import 'package:flutter/material.dart';

class FondoP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://www.eluniverso.com/resizer/vr4LtjNL_dLpJcFNQSQ_x3CIMOA=/862x670/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/FFVSU35KAFCQVLI2HVDJSE7LEM.jpg'
              //'https://casapropiacolombia.com/sites/default/files/2019-12/3_0.jpg'
              ),
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
        child: Container(color: Colors.black.withOpacity(0.3)),
      ),
    );
  }
}
