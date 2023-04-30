import 'package:flutter/material.dart';

import '../models/attraction_model/attraction.dart';
import '../models/attraction_model/attraction_model.dart';
import 'attraction_card.dart';

class AttractionListView extends StatelessWidget {
  const AttractionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: attractions.length,
        itemBuilder: (context, index) {
          AttractionModel currentAttraction = attractions[index];
          return AttractionCard(
            attractionModel: currentAttraction,
          );
        },
      ),
    );
  }
}
