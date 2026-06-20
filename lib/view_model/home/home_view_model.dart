import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_symbols_icons/symbols.dart';
import '../../model/home/quick_commands_model.dart';
import '../../model/home/transection_model.dart';

class HomeViewModel extends GetxController{

  List<TransectionModel> transectionList = [
    TransectionModel(
        iconData: Symbols.add_shopping_cart,
        title: 'Sale #849201',
        subTitle: '2 mins ago * 3 Items',
        amount: -154.00
    ),
    TransectionModel(
        iconData: Symbols.mobile_check,
        title: 'Stock Update:Beverages',
        subTitle: '1 hour ago * Warehouse A',
        amount: 500.00
    ),
    TransectionModel(
        iconData: Symbols.assignment_return,
        title: 'Refund #849188',
        subTitle: '3 hours ago * Defective Item',
        amount: -22.50
    ),
    TransectionModel(
        iconData: Symbols.add_shopping_cart,
        title: 'Sale #849201',
        subTitle: '2 mins ago * 3 Items',
        amount: -154.00
    ),
    TransectionModel(
        iconData: Symbols.mobile_check,
        title: 'Stock Update:Beverages',
        subTitle: '1 hour ago * Warehouse A',
        amount: 500.00
    ),
    TransectionModel(
        iconData: Symbols.assignment_return,
        title: 'Refund #849188',
        subTitle: '3 hours ago * Defective Item',
        amount: -22.50
    ),
    TransectionModel(
        iconData: Symbols.add_shopping_cart,
        title: 'Sale #849201',
        subTitle: '2 mins ago * 3 Items',
        amount: -154.00
    ),
    TransectionModel(
        iconData: Symbols.mobile_check,
        title: 'Stock Update:Beverages',
        subTitle: '1 hour ago * Warehouse A',
        amount: 500.00
    ),
    TransectionModel(
        iconData: Symbols.assignment_return,
        title: 'Refund #849188',
        subTitle: '3 hours ago * Defective Item',
        amount: -22.50
    ),
    TransectionModel(
        iconData: Symbols.add_shopping_cart,
        title: 'Sale #849201',
        subTitle: '2 mins ago * 3 Items',
        amount: -154.00
    )
  ];

  List<QuickCommandsModel> quickCommandList = [
    QuickCommandsModel(title: 'New Sale', iconData: Icons.add_circle_outline),
    QuickCommandsModel(title: 'Add Stock', iconData: Icons.add_business),
    QuickCommandsModel(title: 'New Sale', iconData: Icons.add_circle_outline),
    QuickCommandsModel(title: 'Add Stock', iconData: Icons.add_business),
    QuickCommandsModel(title: 'New Sale', iconData: Icons.add_circle_outline),
    QuickCommandsModel(title: 'Add Stock', iconData: Icons.add_business),
    QuickCommandsModel(title: 'New Sale', iconData: Icons.add_circle_outline),
    QuickCommandsModel(title: 'Add Stock', iconData: Icons.add_business),
    QuickCommandsModel(title: 'New Sale', iconData: Icons.add_circle_outline),
    QuickCommandsModel(title: 'Add Stock', iconData: Icons.add_business),
  ];

  QuickCommandsModel? quickCommandData;

  void setQuickCommand(QuickCommandsModel? data){
    quickCommandData = data;
    update();
  }

}