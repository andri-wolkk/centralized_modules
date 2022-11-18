import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../base/base_model.dart';

part 'panel_model.freezed.dart';

@freezed
class PanelModel with _$PanelModel implements BaseModel {
  const factory PanelModel({
    required Widget header,
    required Widget main,
    required Widget navigation,
    @Default(SizedBox.shrink()) Widget secondary,
  }) = _PanelModel;
}
