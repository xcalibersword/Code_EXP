import 'package:flutter_ecommerce_app/src/model/category.dart';
import 'package:flutter_ecommerce_app/src/model/product.dart';

class AppData {
  static List<Product> productList = [
    Product(
        id:1,
        name: 'Nursing Assistant',
        price: '16 Hours/Week',
        isSelected: true,
        isliked: false,
        image: 'assets/nursingassistant_1.png',
        category: "Pasir Ris Health Center"),
    Product(
        id:2,
        name: 'Project BUDDY',
        price: '12 Hours/Week',
        isliked: false,
        image: 'assets/projectbuddy_1.png',
        category: "Ageless Online"),
  ];
  static List<Product> cartList = [
    Product(
        id:1,
        name: 'Nursing 101 Workshop',
        price: 'Pasir Ris Healthcare',
        isSelected: true,
        isliked: false,
        image: 'assets/course_1.png',
        category: "Trending Now"),
    Product(
        id:2,
        name: 'Introductory to Counselling',
        price: 'Jurong Medical Group',
        isliked: false,
        image: 'assets/course_2.png',
        category: "Trending Now"),
    Product(
        id:1,
        name: 'Eldercare Course',
        price: 'NTUC Learning Hub',
        isliked: false,
        image: 'assets/course_3.png',
        category: "Trending Now"),
    Product(
        id:2,
        name: 'Excel for Analysis',
        price: 'Project ASSIST',
        isSelected: true,
        isliked: false,
        image: 'assets/course_4.png',
        category: "Trending Now"),
    // Product(
    //     id:1,
    //     name: 'Nike Air Max 97',
    //     price: 190.00,
    //     isliked: false,
    //     image: 'assets/small_tilt_shoe_2.png',
    //     category: "Trending Now"),
  ];
  static List<Category> categoryList = [
    Category(),
    Category(id:1,name: "Befriending",image: 'assets/befriend.png',isSelected: true),
    Category(id:2,name: "Nursing", image: 'assets/nurse.png'),
    Category(id:3,name: "Facilitation", image: 'assets/facilitator.png'),
    Category(id:4,name: "Counselling", image: 'assets/counsel.png'),
  ];
  static String desc1 = "• Provide coordination and support to assigned nurses";
  static String desc2 = "• Perform basic nursing procedures to assigned patients";
  static String desc3 = "• Attend to patients needs (such as bathing, grooming and feeding)";
  static String desc4 = "• Assist in recreational / social events";
  static String desc5 = "• Collaborate with other healthcare staff and volunteers who are caring for the same patient";
  static String desc6 = "• Assist in other ad-hoc tasks to increase efficiency";

  static String req1 = "• Completed Nursing 101 Workshop";
  static String req2 = "• Able to commit at least 16 hours each week during this period";
  static String req3 = "• Have the heart and enthusiasm to learn";
  static String space = " ";
}