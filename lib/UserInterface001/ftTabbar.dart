import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';

import 'package:flutter/material.dart';

class FitnessTabBar extends StatelessWidget {
  const FitnessTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyLarge;
    final selectedTextStyle = textStyle?.copyWith(fontWeight: FontWeight.bold);
    return  DefaultTabController(
        length: 3,
        child: Scaffold(
        body: SafeArea(
        child: Stack(
        children: [
    Padding(
    padding: const EdgeInsets.all(16.0),
    child: SegmentedTabControl(
    // Customization of widget
    tabTextColor: Colors.black,
    selectedTabTextColor: Colors.white,
    indicatorPadding: const EdgeInsets.all(4),
    squeezeIntensity: 2,
    tabPadding: const EdgeInsets.symmetric(horizontal: 8),
    textStyle: textStyle,
    selectedTextStyle: selectedTextStyle,
    // Options for selection
    // All specified values will override the [SegmentedTabControl] setting
    tabs: [
    SegmentTab(
    label: 'Day',
    // For example, this overrides [indicatorColor] from [SegmentedTabControl]
    color: Colors.blue.shade900,
    backgroundColor: Colors.grey.shade100,
    ),
    SegmentTab(
    label: 'Week',
    backgroundColor: Colors.grey.shade100,
    color: Colors.blue.shade900,
    ),
    SegmentTab(
    label: 'Month',
    backgroundColor: Colors.grey.shade100,
    color: Colors.blue.shade900,
    ),
    ],
    ),
    ),
          ],
    ),
    ),
    ),
    );
  }
}
