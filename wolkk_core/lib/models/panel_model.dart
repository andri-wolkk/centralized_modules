part of core;

class PanelModel extends BaseModel {
  PanelModel({
    required this.header,
    required this.main,
    required this.navigation,
    this.secondary,
  });

  final Widget header;
  final Widget main;
  final Widget navigation;
  final Widget? secondary;
}
