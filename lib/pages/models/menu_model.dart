class MenuModal {
  String title;
  bool selected;
  MenuModal({required this.title, required this.selected});
  static List<MenuModal> getMenu() {
    List<MenuModal> menu = [];
    menu.add(
      MenuModal(title: 'Location', selected: true),
    );
    menu.add(
      MenuModal(title: 'Hotels', selected: false),
    );
    menu.add(
      MenuModal(title: 'Food', selected: false),
    );
    menu.add(
      MenuModal(title: 'Adventure', selected: false),
    );
    menu.add(
      MenuModal(title: 'Adventure', selected: false),
    );
    return menu;
  }
}
