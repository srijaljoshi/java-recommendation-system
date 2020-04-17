//package project.innovators.recommendation.algorithm;
//
//import project.innovators.recommendation.model.Product;
//import project.innovators.recommendation.model.User;
//
//import java.util.*;
//
//public class InputData {
//
//    protected static List<Product> products = new ArrayList<>();
//
//    public static Map<User, HashMap<Product, Double>> initializeData(int numberOfUsers) {
//        Map<User, HashMap<Product, Double>> data = new HashMap<>();
//        HashMap<Product, Double> newUserRating;
//        Set<Product> newRecommendationSet;
//
//        for (int i = 0; i < numberOfUsers; i++) {
//            newUserRating = new HashMap<Product, Double>(); // init new data structure to hold rating for each user
//            newRecommendationSet = new HashSet<>(); // create a set for each user
//
//            // add 3 products (could be duplicate) to the set randomly selected from the list of products
//            for (int j = 0; j < 3; j++) {
//                newRecommendationSet.add(products.get((int) (Math.random() * 5)));
//            }
//
//            // for each product, randomly generate a rating
//            for (Product product : newRecommendationSet) {
//                newUserRating.put(product, Math.random()); // randomly init rating
//            }
//            data.put(new User(...), newUserRating);
//        }
//
//        return data;
//    }
//
//    public static List<Product> getProducts() {
//        return products;
//    }
//
//    public static void setProducts(List<Product> products) {
//        InputData.products = products;
//    }
//
//    @Override
//    public String toString() {
//        return "InputData{}";
//    }
//}