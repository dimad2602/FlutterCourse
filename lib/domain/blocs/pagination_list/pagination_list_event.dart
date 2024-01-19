abstract class PaginationListEvent {}

class Initialize extends PaginationListEvent {
  final int pageNumber;
  final int itemCount;

  Initialize(this.pageNumber, this.itemCount);
}

class ChangePage extends PaginationListEvent {
  final int pageNumber;
  final int itemCount;

  ChangePage(this.pageNumber, this.itemCount);
}

class ChangeCountOfElements extends PaginationListEvent {
  final int pageNumber;
  final int itemCount;

  ChangeCountOfElements(this.pageNumber, this.itemCount);
}
