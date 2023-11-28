import 'package:newsapp/model/categorymodel.dart';

List<categorymodel> getCategories() {
  List<categorymodel> category = [];

  categorymodel categorymodels = new categorymodel();

  categorymodels.categoryName = "Business";
  categorymodels.CategoryImage = "images/business.jpg";
  category.add(categorymodels);
  categorymodels = new categorymodel();

  categorymodels.categoryName = "Entertainment";
  categorymodels.CategoryImage = "images/entertain.jpg";
  category.add(categorymodels);
  categorymodels = new categorymodel();

  categorymodels.categoryName = "General";
  categorymodels.CategoryImage = "images/general.jpg";
  category.add(categorymodels);
  categorymodels = new categorymodel();

  categorymodels.categoryName = "Health";
  categorymodels.CategoryImage = "images/health.jpg";
  category.add(categorymodels);
  categorymodels = new categorymodel();

  categorymodels.categoryName = "Science";
  categorymodels.CategoryImage = "images/science.jpg";
  category.add(categorymodels);
  categorymodels = new categorymodel();

  categorymodels.categoryName = "Sports";
  categorymodels.CategoryImage = "images/sports.jpg";
  category.add(categorymodels);
  categorymodels = new categorymodel();

  return category;
}
