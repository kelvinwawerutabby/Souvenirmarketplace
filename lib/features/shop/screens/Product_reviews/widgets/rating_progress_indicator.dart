import 'package:eccomerceapp/features/shop/screens/Product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:flutter/material.dart';

class SOverallProductRating extends StatelessWidget {
  const SOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3,child: Text('4.8', style: Theme.of(context).textTheme.displayLarge)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              SRatingProgressionIndicator(text: '5', value: 1.0),
              SRatingProgressionIndicator(text: '5', value: 0.8),
              SRatingProgressionIndicator(text: '5', value: 0.6),
              SRatingProgressionIndicator(text: '5', value: 0.4),
              SRatingProgressionIndicator(text: '5', value: 0.2),
            ],
          ),
        )
      ],
    );
  }
}