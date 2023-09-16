abstract class HomeRepo {
  fetchBestSellerBooks();
  fetchFeaturedBooks();
}

// In brief, the repository pattern is a structural pattern that separates the logic
//   that retrieves data from a database or other data source from the rest of the
//   application. It provides a layer of abstraction between your app's code and
//   the data source, which can be a database, web service, or any other
//   data store.

//   Benefits: 
//   The repository pattern promotes separation of concerns, making your codebase
//   more maintainable and testable. It also allows you to switch data sources
//   or storage mechanisms without affecting the rest of your application.
