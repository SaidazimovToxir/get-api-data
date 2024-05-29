import 'package:lesson46/models/products/product.dart';
import 'package:lesson46/services/products_http_service.dart';

class ProductsController {
  ProductsHttpService productsHttpService = ProductsHttpService();

  Future<List<Product>> getProducts() async {
    List<Product> products = await productsHttpService.getProducts();
    return products;
  }

  
}
