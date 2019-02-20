import 'package:flutter/material.dart';


class ListProductsModel {

  List<String> products;

  ListProductsModel(this.products);

  addProduct(String product){

    products.add(product);

  }

  deleteProduct(int index){

    products.removeAt(index);

  }

  getListP(){

    return products;

  }


}