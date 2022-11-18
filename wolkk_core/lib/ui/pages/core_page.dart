import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../panels/core_panel.dart';

class CorePage extends StatelessWidget {
  const CorePage({super.key, required this.corePanel});

  final CorePanel corePanel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 85.w,
                    child: corePanel.panel.header,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          width: 85.w,
                          child: corePanel.panel.navigation,
                        ),
                        Expanded(
                          child: Container(
                            child: corePanel.panel.main,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: corePanel.panel.secondary.toString() ==
                      const SizedBox.shrink().toString()
                  ? 0.w
                  : 450.w,
              child: corePanel.panel.secondary,
            ),
          ],
        ),
      ),
    );
  }
}
