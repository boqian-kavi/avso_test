class DrawerIndex {
  final int payload;
  DrawerIndex(this.payload);
}

class DrawerOpened {
  final bool payload;
  DrawerOpened(this.payload);
}

class DrawerMobileOpened {
  final bool payload;
  DrawerMobileOpened(this.payload);
}

class SelectedRequests {
  final List payload;
  SelectedRequests(this.payload);
}

class UpdateUser {
  final Object payload;
  UpdateUser(this.payload);
}
