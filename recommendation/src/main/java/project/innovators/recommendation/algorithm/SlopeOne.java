//package project.innovators.recommendation.algorithm;
//
//import project.innovators.recommendation.model.Product;
//import project.innovators.recommendation.model.User;
//
//import java.text.DecimalFormat;
//import java.text.NumberFormat;
//import java.util.HashMap;
//import java.util.Map;
//import java.util.Map.Entry;
//
//
///**
// * Slope One algorithm implementation
// *
// */
//public class SlopeOne {
//
//    private static Map<Product, Map<Product, Double>> diff = new HashMap<>();
//    private static Map<Product, Map<Product, Integer>> freq = new HashMap<>();
//    private static Map<User, HashMap<Product, Double>> inputData;
//    private static Map<User, HashMap<Product, Double>> outputData = new HashMap<>();
//
////    public static void main(String[] args) {
////        int numberOfUsers=4;
////        SlopeOne.slopeOne(numberOfUsers);
////        // printData(InputData.initializeData(numberOfUsers));
////    }
//
//    public static void slopeOne(int numberOfUsers) {
//        inputData = InputData.initializeData(numberOfUsers);
//        System.out.println("Slope One - Before the Prediction\n");
//        buildDifferencesMatrix(inputData);
//        // new Scanner(System.in).next();
//        System.out.println("\nSlope One - With Predictions\n");
//        predict(inputData);
//    }
//
//    /**
//     * Based on the available data, calculate the relationships between the
//     * items and number of occurences
//
//     *            existing user data and their items' ratings
//     */
//    private static void buildDifferencesMatrix(Map<User, HashMap<Product, Double>> data) {
//        for (HashMap<Product, Double> user : data.values()) {
//            for (Entry<Product, Double> e : user.entrySet()) {
//                if (!diff.containsKey(e.getKey())) {
//                    diff.put(e.getKey(), new HashMap<Product, Double>());
//                    freq.put(e.getKey(), new HashMap<Product, Integer>());
//                }
//
//                // to calc distance between item, item pairs
//                for (Entry<Product, Double> e2 : user.entrySet()) {
//                    int oldCount = 0;
//                    if (freq.get(e.getKey()).containsKey(e2.getKey())) {
//                        oldCount = freq.get(e.getKey()).get(e2.getKey()).intValue();
//                    }
//                    double oldDiff = 0.0;
//                    if (diff.get(e.getKey()).containsKey(e2.getKey())) {
//                        oldDiff = diff.get(e.getKey()).get(e2.getKey()).doubleValue();
//                    }
//                    double observedDiff = e.getValue() - e2.getValue();
//                    freq.get(e.getKey()).put(e2.getKey(), oldCount + 1);
//                    diff.get(e.getKey()).put(e2.getKey(), oldDiff + observedDiff);
//                }
//            }
//        }
//        for (Product j : diff.keySet()) {
//            for (Product i : diff.get(j).keySet()) {
//                double oldValue = diff.get(j).get(i).doubleValue();
//                int count = freq.get(j).get(i).intValue();
//                diff.get(j).put(i, oldValue / count);
//            }
//        }
//        printData(data);
//    }
//
//    /**Based on existing data predict all missing ratings. If prediction is not
//     possible, the value will be equal to -1
//     Existing user data and their items' ratings
//     */
//    private static void predict(Map<User, HashMap<Product, Double>> data) {
//        HashMap<Product, Double> uPred = new HashMap<Product, Double>();
//        HashMap<Product, Integer> uFreq = new HashMap<Product, Integer>();
//        for (Product j : diff.keySet()) {
//            uFreq.put(j, 0);
//            uPred.put(j, 0.0);
//        }
//        for (Entry<User, HashMap<Product, Double>> e : data.entrySet()) {
//            for (Product j : e.getValue().keySet()) {
//                for (Product k : diff.keySet()) {
//                    try {
//                        double predictedValue = diff.get(k).get(j).doubleValue() + e.getValue().get(j).doubleValue();
//                        double finalValue = predictedValue * freq.get(k).get(j).intValue();
//                        uPred.put(k, uPred.get(k) + finalValue);
//                        uFreq.put(k, uFreq.get(k) + freq.get(k).get(j).intValue());
//                    } catch (NullPointerException e1) {
//                    }
//                }
//            }
//            HashMap<Product, Double> clean = new HashMap<Product, Double>();
//            for (Product j : uPred.keySet()) {
//                if (uFreq.get(j) > 0) {
//                    clean.put(j, uPred.get(j).doubleValue() / uFreq.get(j).intValue());
//                }
//            }
//            for (Product j : InputData.products) {
//                if (e.getValue().containsKey(j)) {
//                    clean.put(j, e.getValue().get(j));
//                } else if (!clean.containsKey(j)) {
//                    clean.put(j, -1.0);
//                }
//            }
//            outputData.put(e.getKey(), clean);
//        }
//
//        // should return a list of predictions sorted from most probable to least
//        printData(outputData);
//    }
//
//    private static void printData(Map<User, HashMap<Product, Double>> data) {
//        for (User user : data.keySet()) {
//            System.out.println(user.getFirstname() + ":");
//            print(data.get(user));
//        }
//    }
//
//    private static void print(HashMap<Product, Double> hashMap) {
//        NumberFormat formatter = new DecimalFormat("#0.000");
//        for (Product j : hashMap.keySet()) {
//            System.out.println(" " + j.getName() + " --> " + formatter.format(hashMap.get(j).doubleValue()));
//        }
//    }
//
//}