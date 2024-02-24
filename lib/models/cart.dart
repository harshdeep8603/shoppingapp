import 'package:first_app/Pages/home_widgets/catalog_list.dart';
import 'package:first_app/core/store.dart';
import 'package:first_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
class CartModel {
  static final cartModel = CartModel._internal();

  CartModel._internal();

  factory CartModel()=> cartModel;
  late CatalogModel _catalog;
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  get items => null;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // List<Item> get items => _itemIds.map((id) => _catalog.getById(id));
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);
}

class AddMutation extends VxMutation<MyStore>{
  late final Item item;
  AddMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.remove(item.id);
  }
}