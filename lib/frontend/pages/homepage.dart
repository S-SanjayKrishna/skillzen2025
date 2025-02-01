// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         fontFamily: 'Poppins',
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   final double appBarIconSize = 36;
//   final double titleFontSize = 32;
//   final double subtitleFontSize = 16;
//   final double searchBoxHeight = 50;
//   final double cardPadding = 20;
//   final double cardBorderRadius = 12;
//   final double featuredCategoryIconSize = 60;
//   final double featuredCategoryFontSize = 14;
//   final double recommendationCardHeight = 160;
//   final double recommendationCardWidth = 140;

//   final EdgeInsets pagePadding = EdgeInsets.all(16);
//   final EdgeInsets recommendationCardMargin =
//       EdgeInsets.symmetric(horizontal: 8);

//   final Color primaryColor = Color(0xFF21324B);
//   final Color backgroundColor = Colors.white;
//   final Color cardBackgroundColor = Color(0xFFF7F9FC);
//   final Color textColor = Colors.black;
//   final Color iconColor = Color(0xFF0F3870);
//   final Color borderColor = Color(0xFF21324B);
//   final Color buttonColor = Color(0xFF0F3870);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor,
//       appBar: AppBar(
//         backgroundColor: backgroundColor,
//         elevation: 0,
//         title: Center(
//           child: Text(
//             "Home",
//             style: TextStyle(
//               fontSize: titleFontSize + 4,
//               color: textColor,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.account_circle,
//                 color: iconColor, size: appBarIconSize),
//             onPressed: () {},
//           ),
//         ],
//         leading: IconButton(
//           icon: Icon(Icons.grid_view, color: iconColor, size: appBarIconSize),
//           onPressed: () {},
//         ),
//       ),
//       body: Padding(
//         padding: pagePadding,
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Hi Jason!",
//                 style: TextStyle(
//                   fontSize: titleFontSize,
//                   fontWeight: FontWeight.bold,
//                   color: textColor,
//                 ),
//               ),
//               Text(
//                 "Good morning",
//                 style: TextStyle(
//                   fontSize: subtitleFontSize,
//                   color: Colors.grey,
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: "Search",
//                   prefixIcon: Icon(Icons.search, color: Colors.grey),
//                   contentPadding:
//                       EdgeInsets.symmetric(vertical: searchBoxHeight / 4),
//                   filled: true,
//                   fillColor: Colors.grey.shade200,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(cardBorderRadius),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Container(
//                 padding: EdgeInsets.all(cardPadding),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: borderColor, width: 2),
//                   borderRadius: BorderRadius.circular(cardBorderRadius),
//                   color: cardBackgroundColor,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Welcome!",
//                           style: TextStyle(
//                             fontSize: subtitleFontSize + 4,
//                             fontWeight: FontWeight.bold,
//                             color: textColor,
//                           ),
//                         ),
//                         SizedBox(height: 8),
//                         Text(
//                           "Take this test to assess and \nfind out your skills.",
//                           style: TextStyle(
//                             fontSize: subtitleFontSize - 2,
//                             color: Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//                         backgroundColor: buttonColor,
//                         foregroundColor: Colors.white,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(cardBorderRadius),
//                         ),
//                       ),
//                       onPressed: () {
//                         // Add test-taking logic
//                       },
//                       child: Text(
//                         "Take Test",
//                         style: TextStyle(fontSize: subtitleFontSize - 2),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 25),
//               Text(
//                 "Categories",
//                 style: TextStyle(
//                   fontSize: subtitleFontSize + 2,
//                   fontWeight: FontWeight.bold,
//                   color: textColor,
//                 ),
//               ),
//               SizedBox(height: 10),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     buildCategoryCard(context, "assets/english.png", "English"),
//                     SizedBox(width: 12),
//                     buildCategoryCard(context, "assets/python.png", "Python"),
//                     SizedBox(width: 12),
//                     buildCategoryCard(
//                         context, "assets/c_programming.png", "C Program"),
//                     SizedBox(width: 12),
//                     buildCategoryCard(
//                         context, "assets/data_science.png", "DSA"),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 "Recommendations",
//                 style: TextStyle(
//                   fontSize: subtitleFontSize + 2,
//                   fontWeight: FontWeight.bold,
//                   color: textColor,
//                 ),
//               ),
//               SizedBox(height: 10),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     buildRecommendationCard(context),
//                     buildRecommendationCard(context),
//                     buildRecommendationCard(context),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildCategoryCard(
//       BuildContext context, String imagePath, String title) {
//     return GestureDetector(
//       onTap: () {
//         print('$title card tapped!');
//       },
//       child: Column(
//         children: [
//           Container(
//             width: 100,
//             height: 100,
//             padding: EdgeInsets.all(cardPadding / 2),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(cardBorderRadius),
//               border: Border.all(color: Colors.grey.shade300),
//               color: cardBackgroundColor,
//             ),
//             child: Stack(
//               children: [
//                 Positioned(
//                   bottom: 0,
//                   right: 0,
//                   child: Image.asset(
//                     imagePath,
//                     height: featuredCategoryIconSize + 10,
//                     width: featuredCategoryIconSize + 10,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 8),
//           Text(
//             title,
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: featuredCategoryFontSize + 2,
//               color: textColor,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildRecommendationCard(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         print('Recommendation card tapped!');
//       },
//       child: Container(
//         height: recommendationCardHeight,
//         width: recommendationCardWidth,
//         margin: recommendationCardMargin,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(cardBorderRadius),
//           color: cardBackgroundColor,
//           border: Border.all(color: Colors.grey.shade300),
//         ),
//         child: Center(
//           child: Text(
//             "Content",
//             style: TextStyle(
//               fontSize: subtitleFontSize,
//               color: Colors.grey,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//test

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         fontFamily: 'Poppins',
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   final double appBarIconSize = 36;
//   final double titleFontSize = 32;
//   final double subtitleFontSize = 16;
//   final double searchBoxHeight = 50;
//   final double cardPadding = 20;
//   final double cardBorderRadius = 12;
//   final double featuredCategoryIconSize = 60;
//   final double featuredCategoryFontSize = 14;
//   final double recommendationCardHeight = 180;
//   final double recommendationCardWidth = 160;

//   final EdgeInsets pagePadding = EdgeInsets.all(16);
//   final EdgeInsets recommendationCardMargin =
//       EdgeInsets.symmetric(horizontal: 8);

//   final Color primaryColor = Color(0xFF21324B);
//   final Color backgroundColor = Colors.white;
//   final Color cardBackgroundColor = Color(0xFFF7F9FC);
//   final Color textColor = Colors.black;
//   final Color iconColor = Color(0xFF0F3870);
//   final Color borderColor = Color(0xFF21324B);
//   final Color buttonColor = Color(0xFF0F3870);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor,
//       appBar: AppBar(
//         backgroundColor: backgroundColor,
//         elevation: 0,
//         title: Center(
//           child: Text(
//             "Home",
//             style: TextStyle(
//               fontSize: titleFontSize + 4,
//               color: textColor,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.account_circle,
//                 color: iconColor, size: appBarIconSize),
//             onPressed: () {},
//           ),
//         ],
//         leading: IconButton(
//           icon: Icon(Icons.grid_view, color: iconColor, size: appBarIconSize),
//           onPressed: () {},
//         ),
//       ),
//       body: Padding(
//         padding: pagePadding,
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Hi Jason!",
//                 style: TextStyle(
//                   fontSize: titleFontSize,
//                   fontWeight: FontWeight.bold,
//                   color: textColor,
//                 ),
//               ),
//               Text(
//                 "Good morning",
//                 style: TextStyle(
//                   fontSize: subtitleFontSize,
//                   color: Colors.grey,
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: "Search",
//                   prefixIcon: Icon(Icons.search, color: Colors.grey),
//                   contentPadding:
//                       EdgeInsets.symmetric(vertical: searchBoxHeight / 4),
//                   filled: true,
//                   fillColor: Colors.grey.shade200,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(cardBorderRadius),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Container(
//                 padding: EdgeInsets.all(cardPadding),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: borderColor, width: 2),
//                   borderRadius: BorderRadius.circular(cardBorderRadius),
//                   color: cardBackgroundColor,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Welcome!",
//                           style: TextStyle(
//                             fontSize: subtitleFontSize + 4,
//                             fontWeight: FontWeight.bold,
//                             color: textColor,
//                           ),
//                         ),
//                         SizedBox(height: 8),
//                         Text(
//                           "Take this test to assess and \nfind out your skills.",
//                           style: TextStyle(
//                             fontSize: subtitleFontSize - 2,
//                             color: Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//                         backgroundColor: buttonColor,
//                         foregroundColor: Colors.white,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(cardBorderRadius),
//                         ),
//                       ),
//                       onPressed: () {
//                         // Add test-taking logic
//                       },
//                       child: Text(
//                         "Take Test",
//                         style: TextStyle(fontSize: subtitleFontSize - 2),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 25),
//               Text(
//                 "Categories",
//                 style: TextStyle(
//                   fontSize: subtitleFontSize + 2,
//                   fontWeight: FontWeight.bold,
//                   color: textColor,
//                 ),
//               ),
//               SizedBox(height: 10),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     buildCategoryCard(context, "assets/english.png", "English"),
//                     SizedBox(width: 12),
//                     buildCategoryCard(context, "assets/python.png", "Python"),
//                     SizedBox(width: 12),
//                     buildCategoryCard(
//                         context, "assets/c_programming.png", "C Program"),
//                     SizedBox(width: 12),
//                     buildCategoryCard(
//                         context, "assets/data_science.png", "DSA"),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 "Recommendations",
//                 style: TextStyle(
//                   fontSize: subtitleFontSize + 2,
//                   fontWeight: FontWeight.bold,
//                   color: textColor,
//                 ),
//               ),
//               SizedBox(height: 10),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     buildRecommendationCard(context),
//                     buildRecommendationCard(context),
//                     buildRecommendationCard(context),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildCategoryCard(
//       BuildContext context, String imagePath, String title) {
//     return GestureDetector(
//       onTap: () {
//         print('$title card tapped!');
//       },
//       child: Column(
//         children: [
//           Container(
//             width: 100,
//             height: 100,
//             padding: EdgeInsets.all(cardPadding / 2),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(cardBorderRadius),
//               border: Border.all(color: Colors.grey.shade300),
//               color: cardBackgroundColor,
//             ),
//             child: Stack(
//               children: [
//                 Positioned(
//                   bottom: 0,
//                   right: 0,
//                   child: Image.asset(
//                     imagePath,
//                     height: featuredCategoryIconSize + 10,
//                     width: featuredCategoryIconSize + 10,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 8),
//           Text(
//             title,
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: featuredCategoryFontSize + 2,
//               color: textColor,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildRecommendationCard(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         print('Recommendation card tapped!');
//       },
//       child: Container(
//         height: recommendationCardHeight,
//         width: recommendationCardWidth,
//         margin: recommendationCardMargin,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(cardBorderRadius),
//           color: cardBackgroundColor,
//           border: Border.all(color: Colors.grey.shade300),
//         ),
//         child: Center(
//           child: Text(
//             "Content",
//             style: TextStyle(
//               fontSize: subtitleFontSize,
//               color: Colors.grey,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//test 2
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class HomePage extends StatefulWidget {
//   final String email;

//   const HomePage({Key? key, required this.email}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final String recommendationsApi =
//       "http://10.0.2.2:5001/generate-recommendations";
//   List<dynamic> recommendations = [];
//   bool isLoading = true;
//   String? errorMessage;

//   @override
//   void initState() {
//     super.initState();
//     _fetchRecommendations();
//   }

//   Future<void> _fetchRecommendations() async {
//     setState(() {
//       isLoading = true;
//       errorMessage = null;
//     });

//     try {
//       final response = await http.post(
//         Uri.parse(recommendationsApi),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({'email': widget.email}),
//       );

//       if (response.statusCode == 200) {
//         setState(() {
//           recommendations = json.decode(response.body)['recommendations'];
//           isLoading = false;
//         });
//       } else {
//         setState(() {
//           errorMessage = "Failed to load recommendations: ${response.body}";
//           isLoading = false;
//         });
//       }
//     } catch (e) {
//       setState(() {
//         errorMessage = "Error connecting to recommendations service: $e";
//         isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: const Center(
//           child: Text(
//             "Home",
//             style: TextStyle(
//               fontSize: 36,
//               color: Colors.black,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon:
//                 Icon(Icons.account_circle, color: Color(0xFF0F3870), size: 36),
//             onPressed: () {},
//           ),
//         ],
//         leading: IconButton(
//           icon: Icon(Icons.grid_view, color: Color(0xFF0F3870), size: 36),
//           onPressed: () {},
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Hi Jason!",
//                 style: TextStyle(
//                   fontSize: 32,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//               Text(
//                 "Good morning",
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.grey,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: "Search",
//                   prefixIcon: Icon(Icons.search, color: Colors.grey),
//                   filled: true,
//                   fillColor: Colors.grey.shade200,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Container(
//                 padding: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Color(0xFF21324B), width: 2),
//                   borderRadius: BorderRadius.circular(12),
//                   color: Color(0xFFF7F9FC),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Welcome!",
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         Text(
//                           "Take this test to assess and \nfind out your skills.",
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 16,
//                           vertical: 10,
//                         ),
//                         backgroundColor: Color(0xFF0F3870),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       ),
//                       onPressed: () {},
//                       child: const Text(
//                         "Take Test",
//                         style: TextStyle(fontSize: 14),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 25),
//               Text(
//                 "Recommendations",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               if (isLoading)
//                 const Center(child: CircularProgressIndicator())
//               else if (errorMessage != null)
//                 Center(
//                   child: Text(
//                     errorMessage!,
//                     style: const TextStyle(color: Colors.red, fontSize: 16),
//                     textAlign: TextAlign.center,
//                   ),
//                 )
//               else if (recommendations.isEmpty)
//                 const Center(child: Text("No recommendations available."))
//               else
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: recommendations.map((course) {
//                       return buildRecommendationCard(
//                         course["course_name"],
//                         course["course_description"],
//                         course["course_rating"],
//                       );
//                     }).toList(),
//                   ),
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildRecommendationCard(
//       String title, String description, dynamic rating) {
//     return Container(
//       height: 180,
//       width: 160,
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Color(0xFFF7F9FC),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const SizedBox(height: 8),
//             Text(
//               description,
//               style: TextStyle(
//                 fontSize: 12,
//                 color: Colors.grey,
//               ),
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const Spacer(),
//             Text(
//               "Rating: $rating",
//               style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.orange,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//test 3 works

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class HomePage extends StatefulWidget {
//   final String email;

//   const HomePage({Key? key, required this.email}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final String recommendationsApi =
//       "http://10.0.2.2:5001/generate-recommendations";
//   List<dynamic> recommendations = [];
//   bool isLoading = true;
//   String? errorMessage;

//   final List<Map<String, String>> categories = [
//     {'title': 'English', 'icon': 'assets/english.png'},
//     {'title': 'Python', 'icon': 'assets/python.png'},
//     {'title': 'C Programming', 'icon': 'assets/c_programming.png'},
//     {'title': 'Data Science', 'icon': 'assets/data_science.png'},
//     {'title': 'Machine Learning', 'icon': 'assets/machine_learning.png'},
//     {'title': 'UI/UX', 'icon': 'assets/ui_ux.png'},
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _fetchRecommendations();
//   }

//   Future<void> _fetchRecommendations() async {
//     setState(() {
//       isLoading = true;
//       errorMessage = null;
//     });

//     try {
//       final response = await http.post(
//         Uri.parse(recommendationsApi),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({'email': widget.email}),
//       );

//       if (response.statusCode == 200) {
//         setState(() {
//           recommendations = json.decode(response.body)['recommendations'];
//           isLoading = false;
//         });
//       } else {
//         setState(() {
//           errorMessage = "Failed to load recommendations: ${response.body}";
//           isLoading = false;
//         });
//       }
//     } catch (e) {
//       setState(() {
//         errorMessage = "Error connecting to recommendations service: $e";
//         isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: const Center(
//           child: Text(
//             "Home",
//             style: TextStyle(
//               fontSize: 36,
//               color: Colors.black,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon:
//                 Icon(Icons.account_circle, color: Color(0xFF0F3870), size: 36),
//             onPressed: () {},
//           ),
//         ],
//         leading: IconButton(
//           icon: Icon(Icons.grid_view, color: Color(0xFF0F3870), size: 36),
//           onPressed: () {},
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Hi Jason!",
//                 style: TextStyle(
//                   fontSize: 32,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//               Text(
//                 "Good morning",
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.grey,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: "Search",
//                   prefixIcon: Icon(Icons.search, color: Colors.grey),
//                   filled: true,
//                   fillColor: Colors.grey.shade200,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Container(
//                 padding: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Color(0xFF21324B), width: 2),
//                   borderRadius: BorderRadius.circular(12),
//                   color: Color(0xFFF7F9FC),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Welcome!",
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         Text(
//                           "Take this test to assess and \nfind out your skills.",
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 16,
//                           vertical: 10,
//                         ),
//                         backgroundColor: Color(0xFF0F3870),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       ),
//                       onPressed: () {},
//                       child: const Text(
//                         "Take Test",
//                         style: TextStyle(fontSize: 14),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 25),
//               Text(
//                 "Categories",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: categories.map((category) {
//                     return buildCategoryCard(
//                       context,
//                       category['icon']!,
//                       category['title']!,
//                     );
//                   }).toList(),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 "Recommendations",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               if (isLoading)
//                 const Center(child: CircularProgressIndicator())
//               else if (errorMessage != null)
//                 Center(
//                   child: Text(
//                     errorMessage!,
//                     style: const TextStyle(color: Colors.red, fontSize: 16),
//                     textAlign: TextAlign.center,
//                   ),
//                 )
//               else if (recommendations.isEmpty)
//                 const Center(child: Text("No recommendations available."))
//               else
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: recommendations.map((course) {
//                       return buildRecommendationCard(
//                         course["course_name"],
//                         course["course_description"],
//                         course["course_rating"],
//                       );
//                     }).toList(),
//                   ),
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildCategoryCard(
//       BuildContext context, String imagePath, String title) {
//     return GestureDetector(
//       onTap: () {
//         print('$title card tapped!');
//       },
//       child: Column(
//         children: [
//           Container(
//             width: 100,
//             height: 100,
//             margin: const EdgeInsets.symmetric(horizontal: 8),
//             padding: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all(color: Colors.grey.shade300),
//               color: Color(0xFFF7F9FC),
//             ),
//             child: Image.asset(
//               imagePath,
//               fit: BoxFit.contain,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             title,
//             textAlign: TextAlign.center,
//             style: const TextStyle(fontSize: 14, color: Colors.black),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildRecommendationCard(
//       String title, String description, dynamic rating) {
//     return Container(
//       height: 180,
//       width: 160,
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Color(0xFFF7F9FC),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const SizedBox(height: 8),
//             Text(
//               description,
//               style: TextStyle(
//                 fontSize: 12,
//                 color: Colors.grey,
//               ),
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const Spacer(),
//             Text(
//               "Rating: $rating",
//               style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.orange,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//test 5

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class HomePage extends StatefulWidget {
//   final String email;

//   const HomePage({Key? key, required this.email}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final String recommendationsApi =
//       "http://10.0.2.2:5001/generate-recommendations";
//   List<dynamic> recommendations = [];
//   bool isLoading = true;
//   String? errorMessage;

//   final List<Map<String, String>> categories = [
//     {'title': 'English', 'icon': 'assets/english.png'},
//     {'title': 'Python', 'icon': 'assets/python.png'},
//     {'title': 'C Programming', 'icon': 'assets/c_programming.png'},
//     {'title': 'Data Science', 'icon': 'assets/data_science.png'},
//     {'title': 'Machine Learning', 'icon': 'assets/machine_learning.png'},
//     {'title': 'UI/UX', 'icon': 'assets/ui_ux.png'},
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _fetchRecommendations();
//   }

//   Future<void> _fetchRecommendations() async {
//     setState(() {
//       isLoading = true;
//       errorMessage = null;
//     });

//     try {
//       final response = await http.post(
//         Uri.parse(recommendationsApi),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({'email': widget.email}),
//       );

//       if (response.statusCode == 200) {
//         setState(() {
//           recommendations = json.decode(response.body)['recommendations'];
//           isLoading = false;
//         });
//       } else {
//         setState(() {
//           errorMessage = "Failed to load recommendations: ${response.body}";
//           isLoading = false;
//         });
//       }
//     } catch (e) {
//       setState(() {
//         errorMessage = "Error connecting to recommendations service: $e";
//         isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: const Center(
//           child: Text(
//             "Home",
//             style: TextStyle(
//               fontSize: 36,
//               color: Colors.black,
//               fontWeight: FontWeight.w500,
//               fontFamily: 'Poppins',
//             ),
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon:
//                 Icon(Icons.account_circle, color: Color(0xFF0F3870), size: 36),
//             onPressed: () {

//             },
//           ),
//         ],
//         leading: IconButton(
//           icon: Icon(Icons.grid_view, color: Color(0xFF0F3870), size: 36),
//           onPressed: () {},
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Hi Jason!",
//                 style: TextStyle(
//                   fontSize: 32,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                   fontFamily: 'Poppins',
//                 ),
//               ),
//               Text(
//                 "Good morning",
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.grey,
//                   fontFamily: 'Poppins',
//                 ),
//               ),
//               const SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: "Search",
//                   prefixIcon: Icon(Icons.search, color: Colors.grey),
//                   filled: true,
//                   fillColor: Colors.grey.shade200,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Container(
//                 padding: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Color(0xFF21324B), width: 2),
//                   borderRadius: BorderRadius.circular(12),
//                   color: Color(0xFFF7F9FC),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Welcome!",
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                             fontFamily: 'Poppins',
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         Text(
//                           "Take this test to assess and \nfind out your skills.",
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.grey,
//                             fontFamily: 'Poppins',
//                           ),
//                         ),
//                       ],
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 16,
//                           vertical: 10,
//                         ),
//                         backgroundColor: Color(0xFF0F3870),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       ),
//                       onPressed: () {},
//                       child: const Text(
//                         "Take Test",
//                         style: TextStyle(fontSize: 14, fontFamily: 'Poppins'),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 25),
//               Text(
//                 "Featured Categories",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                   fontFamily: 'Poppins',
//                 ),
//               ),
//               const SizedBox(height: 10),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: categories.map((category) {
//                     return buildCategoryCard(
//                       context,
//                       category['icon']!,
//                       category['title']!,
//                     );
//                   }).toList(),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 "Recommendations",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                   fontFamily: 'Poppins',
//                 ),
//               ),
//               const SizedBox(height: 10),
//               if (isLoading)
//                 const Center(child: CircularProgressIndicator())
//               else if (errorMessage != null)
//                 Center(
//                   child: Text(
//                     errorMessage!,
//                     style: const TextStyle(
//                       color: Colors.red,
//                       fontSize: 16,
//                       fontFamily: 'Poppins',
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 )
//               else if (recommendations.isEmpty)
//                 const Center(
//                   child: Text(
//                     "No recommendations available.",
//                     style: TextStyle(fontFamily: 'Poppins'),
//                   ),
//                 )
//               else
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: recommendations.map((course) {
//                       return buildRecommendationCard(
//                         course["course_name"],
//                         course["course_description"],
//                         course["course_rating"],
//                       );
//                     }).toList(),
//                   ),
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildCategoryCard(
//       BuildContext context, String imagePath, String title) {
//     return GestureDetector(
//       onTap: () {
//         print('$title card tapped!');
//       },
//       child: Column(
//         children: [
//           Container(
//             width: 100,
//             height: 100,
//             margin: const EdgeInsets.symmetric(horizontal: 8),
//             padding: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all(color: Colors.grey.shade300),
//               color: Color(0xFFF7F9FC),
//             ),
//             child: Image.asset(
//               imagePath,
//               fit: BoxFit.contain,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             title,
//             textAlign: TextAlign.center,
//             style: const TextStyle(
//               fontSize: 14,
//               color: Colors.black,
//               fontFamily: 'Poppins',
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildRecommendationCard(
//       String title, String description, dynamic rating) {
//     return Container(
//       height: 180,
//       width: 160,
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Color(0xFFF7F9FC),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//                 fontFamily: 'Poppins',
//               ),
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const SizedBox(height: 8),
//             Text(
//               description,
//               style: TextStyle(
//                 fontSize: 12,
//                 color: Colors.grey,
//                 fontFamily: 'Poppins',
//               ),
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const Spacer(),
//             Text(
//               "Rating: $rating",
//               style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.orange,
//                 fontFamily: 'Poppins',
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//test 6

// import 'package:coderaiders/frontend/pages/profile.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class HomePage extends StatefulWidget {
//   final String email;

//   const HomePage({Key? key, required this.email}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final String recommendationsApi =
//       "http://10.0.2.2:5001/generate-recommendations";
//   List<dynamic> recommendations = [];
//   bool isLoading = true;
//   String? errorMessage;

//   final List<Map<String, String>> categories = [
//     {'title': 'English', 'icon': 'assets/english.png'},
//     {'title': 'Python', 'icon': 'assets/python.png'},
//     {'title': 'C Programming', 'icon': 'assets/c_programming.png'},
//     {'title': 'Data Science', 'icon': 'assets/data_science.png'},
//     {'title': 'Machine Learning', 'icon': 'assets/machine_learning.png'},
//     {'title': 'UI/UX', 'icon': 'assets/ui_ux.png'},
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _fetchRecommendations();
//   }

//   Future<void> _fetchRecommendations() async {
//     setState(() {
//       isLoading = true;
//       errorMessage = null;
//     });

//     try {
//       final response = await http.post(
//         Uri.parse(recommendationsApi),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({'email': widget.email}),
//       );

//       if (response.statusCode == 200) {
//         setState(() {
//           recommendations = json.decode(response.body)['recommendations'];
//           isLoading = false;
//         });
//       } else {
//         setState(() {
//           errorMessage = "Failed to load recommendations: ${response.body}";
//           isLoading = false;
//         });
//       }
//     } catch (e) {
//       setState(() {
//         errorMessage = "Error connecting to recommendations service: $e";
//         isLoading = false;
//       });
//     }
//   }

//   void _navigateToProfilePage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ProfilePage(email: widget.email),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: const Center(
//           child: Text(
//             "Home",
//             style: TextStyle(
//               fontSize: 28,
//               color: Colors.black,
//               fontWeight: FontWeight.w400,
//               fontFamily: 'Poppins',
//             ),
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon:
//                 Icon(Icons.account_circle, color: Color(0xFF0F3870), size: 36),
//             onPressed: _navigateToProfilePage, // Navigate to ProfilePage
//           ),
//         ],
//         leading: IconButton(
//           icon: Icon(Icons.grid_view, color: Color(0xFF0F3870), size: 36),
//           onPressed: () {},
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Hi Jason!",
//                 style: TextStyle(
//                   fontSize: 32,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                   fontFamily: 'Poppins',
//                 ),
//               ),
//               Text(
//                 "Good morning",
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.grey,
//                   fontFamily: 'Poppins',
//                 ),
//               ),
//               const SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: "Search",
//                   prefixIcon: Icon(Icons.search, color: Colors.grey),
//                   filled: true,
//                   fillColor: Colors.grey.shade200,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Container(
//                 padding: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Color(0xFF21324B), width: 2),
//                   borderRadius: BorderRadius.circular(12),
//                   color: Color(0xFFF7F9FC),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Welcome!",
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                             fontFamily: 'Poppins',
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         Text(
//                           "Take this test to assess and \nfind out your skills.",
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.grey,
//                             fontFamily: 'Poppins',
//                           ),
//                         ),
//                       ],
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 16,
//                           vertical: 10,
//                         ),
//                         backgroundColor: Color(0xFF0F3870),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       ),
//                       onPressed: () {},
//                       child: const Text(
//                         "Take Test",
//                         style: TextStyle(fontSize: 14, fontFamily: 'Poppins'),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 25),
//               Text(
//                 "Featured Categories",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                   fontFamily: 'Poppins',
//                 ),
//               ),
//               const SizedBox(height: 10),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: categories.map((category) {
//                     return buildCategoryCard(
//                       context,
//                       category['icon']!,
//                       category['title']!,
//                     );
//                   }).toList(),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 "Recommendations",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                   fontFamily: 'Poppins',
//                 ),
//               ),
//               const SizedBox(height: 10),
//               if (isLoading)
//                 const Center(child: CircularProgressIndicator())
//               else if (errorMessage != null)
//                 Center(
//                   child: Text(
//                     errorMessage!,
//                     style: const TextStyle(
//                       color: Colors.red,
//                       fontSize: 16,
//                       fontFamily: 'Poppins',
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 )
//               else if (recommendations.isEmpty)
//                 const Center(
//                   child: Text(
//                     "No recommendations available.",
//                     style: TextStyle(fontFamily: 'Poppins'),
//                   ),
//                 )
//               else
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: recommendations.map((course) {
//                       return buildRecommendationCard(
//                         course["course_name"],
//                         course["course_description"],
//                         course["course_rating"],
//                       );
//                     }).toList(),
//                   ),
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildCategoryCard(
//       BuildContext context, String imagePath, String title) {
//     return GestureDetector(
//       onTap: () {
//         print('$title card tapped!');
//       },
//       child: Column(
//         children: [
//           Container(
//             width: 100,
//             height: 100,
//             margin: const EdgeInsets.symmetric(horizontal: 8),
//             padding: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all(color: Colors.grey.shade300),
//               color: Color(0xFFF7F9FC),
//             ),
//             child: Image.asset(
//               imagePath,
//               fit: BoxFit.contain,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             title,
//             textAlign: TextAlign.center,
//             style: const TextStyle(
//               fontSize: 14,
//               color: Colors.black,
//               fontFamily: 'Poppins',
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildRecommendationCard(
//       String title, String description, dynamic rating) {
//     return Container(
//       height: 180,
//       width: 160,
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Color(0xFFF7F9FC),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//                 fontFamily: 'Poppins',
//               ),
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const SizedBox(height: 8),
//             Text(
//               description,
//               style: TextStyle(
//                 fontSize: 12,
//                 color: Colors.grey,
//                 fontFamily: 'Poppins',
//               ),
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const Spacer(),
//             Text(
//               "Rating: $rating",
//               style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.orange,
//                 fontFamily: 'Poppins',
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//test 7 pass

// import 'package:coderaiders/frontend/pages/profile.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class HomePage extends StatefulWidget {
//   final String email;

//   const HomePage({Key? key, required this.email}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final String recommendationsApi =
//       "http://10.0.2.2:5001/generate-recommendations";
//   final String userApi = "http://10.0.2.2:5000/get-user";

//   List<dynamic> recommendations = [];
//   bool isLoading = true;
//   String? errorMessage;
//   String? userName;

//   final List<Map<String, String>> categories = [
//     {'title': 'English', 'icon': 'assets/english.png'},
//     {'title': 'Python', 'icon': 'assets/python.png'},
//     {'title': 'C Programming', 'icon': 'assets/c_programming.png'},
//     {'title': 'Data Science', 'icon': 'assets/data_science.png'},
//     {'title': 'Machine Learning', 'icon': 'assets/machine_learning.png'},
//     {'title': 'UI/UX', 'icon': 'assets/ui_ux.png'},
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _fetchUserName();
//     _fetchRecommendations();
//   }

//   Future<void> _fetchUserName() async {
//     try {
//       final response =
//           await http.get(Uri.parse('$userApi?email=${widget.email}'));

//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         setState(() {
//           userName = data['name'];
//         });
//       } else {
//         setState(() {
//           userName = "User"; // Fallback if fetching name fails
//         });
//       }
//     } catch (e) {
//       setState(() {
//         userName = "User"; // Fallback if there is an error
//       });
//     }
//   }

//   Future<void> _fetchRecommendations() async {
//     setState(() {
//       isLoading = true;
//       errorMessage = null;
//     });

//     try {
//       final response = await http.post(
//         Uri.parse(recommendationsApi),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({'email': widget.email}),
//       );

//       if (response.statusCode == 200) {
//         setState(() {
//           recommendations = json.decode(response.body)['recommendations'];
//           isLoading = false;
//         });
//       } else {
//         setState(() {
//           errorMessage = "Failed to load recommendations: ${response.body}";
//           isLoading = false;
//         });
//       }
//     } catch (e) {
//       setState(() {
//         errorMessage = "Error connecting to recommendations service: $e";
//         isLoading = false;
//       });
//     }
//   }

//   void _navigateToProfilePage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ProfilePage(email: widget.email),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'Poppins', // Apply Poppins font globally
//       ),
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//           title: const Center(
//             child: Text(
//               "Home",
//               style: TextStyle(
//                 fontSize: 28,
//                 color: Colors.black,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.account_circle,
//                   color: Color(0xFF0F3870), size: 36),
//               onPressed: _navigateToProfilePage, // Navigate to ProfilePage
//             ),
//           ],
//           leading: IconButton(
//             icon: Icon(Icons.grid_view, color: Color(0xFF0F3870), size: 30),
//             onPressed: () {},
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Hi ${userName ?? "User"}!",
//                   style: TextStyle(
//                     fontSize: 32,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 Text(
//                   "Good morning",
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 TextField(
//                   decoration: InputDecoration(
//                     hintText: "Search",
//                     prefixIcon: Icon(Icons.search, color: Colors.grey),
//                     filled: true,
//                     fillColor: Colors.grey.shade200,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       borderSide: BorderSide.none,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Container(
//                   padding: const EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Color(0xFF21324B), width: 2),
//                     borderRadius: BorderRadius.circular(12),
//                     color: Color(0xFFF7F9FC),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Welcome!",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                           const SizedBox(height: 8),
//                           Text(
//                             "Take this test to assess and \nfind out your skills.",
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.grey,
//                             ),
//                           ),
//                         ],
//                       ),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 16,
//                             vertical: 10,
//                           ),
//                           backgroundColor: Color(0xFF0F3870),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                         onPressed: () {},
//                         child: const Text(
//                           "Take Test",
//                           style: TextStyle(fontSize: 14),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 25),
//                 Text(
//                   "Featured Categories",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: categories.map((category) {
//                       return buildCategoryCard(
//                         context,
//                         category['icon']!,
//                         category['title']!,
//                       );
//                     }).toList(),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   "Recommendations",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 if (isLoading)
//                   const Center(child: CircularProgressIndicator())
//                 else if (errorMessage != null)
//                   Center(
//                     child: Text(
//                       errorMessage!,
//                       style: const TextStyle(
//                         color: Colors.red,
//                         fontSize: 16,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   )
//                 else if (recommendations.isEmpty)
//                   const Center(
//                     child: Text(
//                       "No recommendations available.",
//                     ),
//                   )
//                 else
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       children: recommendations.map((course) {
//                         return buildRecommendationCard(
//                           course["course_name"],
//                           course["course_description"],
//                           course["course_rating"],
//                         );
//                       }).toList(),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildCategoryCard(
//       BuildContext context, String imagePath, String title) {
//     return GestureDetector(
//       onTap: () {
//         print('$title card tapped!');
//       },
//       child: Column(
//         children: [
//           Container(
//             width: 100,
//             height: 100,
//             margin: const EdgeInsets.symmetric(horizontal: 8),
//             padding: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all(color: Colors.grey.shade300),
//               color: Color(0xFFF7F9FC),
//             ),
//             child: Image.asset(
//               imagePath,
//               fit: BoxFit.contain,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             title,
//             textAlign: TextAlign.center,
//             style: const TextStyle(
//               fontSize: 14,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildRecommendationCard(
//       String title, String description, dynamic rating) {
//     return Container(
//       height: 180,
//       width: 160,
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Color(0xFFF7F9FC),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const SizedBox(height: 8),
//             Text(
//               description,
//               style: TextStyle(
//                 fontSize: 12,
//                 color: Colors.grey,
//               ),
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const Spacer(),
//             Text(
//               "Rating: $rating",
//               style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.orange,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//test 8
// import 'dart:math';
// import 'package:coderaiders/frontend/pages/profile.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class HomePage extends StatefulWidget {
//   final String email;

//   const HomePage({Key? key, required this.email}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final String recommendationsApi =
//       "http://10.0.2.2:5001/generate-recommendations";
//   final String userApi = "http://10.0.2.2:5000/get-user";

//   List<dynamic> recommendations = [];
//   bool isLoading = true;
//   String? errorMessage;
//   String? userName;

//   final List<Map<String, String>> skills = [
//     {'title': 'Python', 'icon': 'assets/python (1).png'}, //
//     {'title': 'Java', 'icon': 'assets/java.png'}, //
//     {'title': 'C Programming', 'icon': 'assets/c-sharp.png'}, //
//     {'title': 'JavaScript', 'icon': 'assets/javascript.png'}, //
//     {'title': 'Flutter', 'icon': 'assets/mobile-development.png'}, //
//     {'title': 'Data Science', 'icon': 'assets/data-science.png'}, //
//     {'title': 'Machine Learning', 'icon': 'assets/machine_learning.png'}, //
//     {'title': 'Cybersecurity', 'icon': 'assets/cyber-security.png'}, //
//     {'title': 'Blockchain', 'icon': 'assets/bitcoin.png'}, //
//     {'title': 'UI/UX Design', 'icon': 'assets/ux-design.png'}, //
//     {'title': 'Cloud Computing', 'icon': 'assets/server.png'}, //
//     {'title': 'DevOps', 'icon': 'assets/devops.png'}, //
//     {'title': 'Game Development', 'icon': 'assets/game-development.png'}, //
//     {
//       'title': 'Mobile App Development',
//       'icon': 'assets/mobile-development.png'
//     }, //
//     {'title': 'Software Testing', 'icon': 'assets/testing.png'}, //
//     {'title': 'Digital Marketing', 'icon': 'assets/bullhorn.png'}, //
//     {'title': 'Artificial Intelligence', 'icon': 'assets/ai.png'}, //
//     {'title': 'Augmented Reality', 'icon': 'assets/virtual-tour.png'}, //
//     {'title': 'Web Development', 'icon': 'assets/coding.png'}, //
//     {'title': 'SQL Databases', 'icon': 'assets/sql.png'}, //
//   ];

//   List<Map<String, String>> featuredSkills = [];
//   List<Map<String, String>> remainingSkills = [];
//   String searchQuery = "";
//   List<Map<String, String>> filteredSkills = [];

//   @override
//   void initState() {
//     super.initState();
//     _fetchUserName();
//     _fetchRecommendations();
//     _randomizeSkills();
//   }

//   void _randomizeSkills() {
//     final random = Random();
//     final shuffled = List<Map<String, String>>.from(skills)..shuffle(random);
//     featuredSkills = shuffled.take(5).toList();
//     remainingSkills = shuffled.skip(5).toList();
//     filteredSkills = List.from(remainingSkills);
//   }

//   Future<void> _fetchUserName() async {
//     try {
//       final response =
//           await http.get(Uri.parse('$userApi?email=${widget.email}'));

//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         setState(() {
//           userName = data['name'];
//         });
//       } else {
//         setState(() {
//           userName = "User"; // Fallback if fetching name fails
//         });
//       }
//     } catch (e) {
//       setState(() {
//         userName = "User"; // Fallback if there is an error
//       });
//     }
//   }

//   Future<void> _fetchRecommendations() async {
//     setState(() {
//       isLoading = true;
//       errorMessage = null;
//     });

//     try {
//       final response = await http.post(
//         Uri.parse(recommendationsApi),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({'email': widget.email}),
//       );

//       if (response.statusCode == 200) {
//         setState(() {
//           recommendations = json.decode(response.body)['recommendations'];
//           isLoading = false;
//         });
//       } else {
//         setState(() {
//           errorMessage = "Failed to load recommendations: ${response.body}";
//           isLoading = false;
//         });
//       }
//     } catch (e) {
//       setState(() {
//         errorMessage = "Error connecting to recommendations service: $e";
//         isLoading = false;
//       });
//     }
//   }

//   void _updateSearch(String query) {
//     setState(() {
//       searchQuery = query;
//       filteredSkills = remainingSkills
//           .where((skill) =>
//               skill['title']!.toLowerCase().contains(query.toLowerCase()))
//           .toList();
//     });
//   }

//   void _navigateToProfilePage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ProfilePage(email: widget.email),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'Poppins', // Apply Poppins font globally
//       ),
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//           title: const Center(
//             child: Text(
//               "Home",
//               style: TextStyle(
//                 fontSize: 28,
//                 color: Colors.black,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.account_circle,
//                   color: Color(0xFF0F3870), size: 36),
//               onPressed: _navigateToProfilePage, // Navigate to ProfilePage
//             ),
//           ],
//           leading: IconButton(
//             icon: Icon(Icons.grid_view, color: Color(0xFF0F3870), size: 30),
//             onPressed: () {},
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Hi ${userName ?? "User"}!",
//                   style: TextStyle(
//                     fontSize: 32,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 Text(
//                   "Good morning",
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 CompositedTransformTarget(
//                   link: LayerLink(),
//                   child: TextField(
//                     onChanged: _updateSearch,
//                     decoration: InputDecoration(
//                       hintText: "Search",
//                       prefixIcon: Icon(Icons.search, color: Colors.grey),
//                       filled: true,
//                       fillColor: Colors.grey.shade200,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                         borderSide: BorderSide.none,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 if (filteredSkills.isNotEmpty)
//                   Material(
//                     elevation: 4.0,
//                     child: ListView.builder(
//                       shrinkWrap: true,
//                       itemCount: filteredSkills.length,
//                       itemBuilder: (context, index) {
//                         return ListTile(
//                           title: Text(filteredSkills[index]['title']!,
//                               style: TextStyle(fontFamily: 'Poppins')),
//                           onTap: () {
//                             print(
//                                 "Selected: ${filteredSkills[index]['title']}");
//                           },
//                         );
//                       },
//                     ),
//                   ),
//                 const SizedBox(height: 20),
//                 Text(
//                   "Featured Categories",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: featuredSkills.map((skill) {
//                       return buildCategoryCard(
//                         context,
//                         skill['icon']!,
//                         skill['title']!,
//                       );
//                     }).toList(),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   "Recommendations",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 if (isLoading)
//                   const Center(child: CircularProgressIndicator())
//                 else if (errorMessage != null)
//                   Center(
//                     child: Text(
//                       errorMessage!,
//                       style: const TextStyle(
//                         color: Colors.red,
//                         fontSize: 16,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   )
//                 else if (recommendations.isEmpty)
//                   const Center(
//                     child: Text(
//                       "No recommendations available.",
//                     ),
//                   )
//                 else
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       children: recommendations.map((course) {
//                         return buildRecommendationCard(
//                           course["course_name"],
//                           course["course_description"],
//                           course["course_rating"],
//                         );
//                       }).toList(),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildCategoryCard(
//       BuildContext context, String imagePath, String title) {
//     return GestureDetector(
//       onTap: () {
//         print('$title card tapped!');
//       },
//       child: Column(
//         children: [
//           Container(
//             width: 100,
//             height: 100,
//             margin: const EdgeInsets.symmetric(horizontal: 8),
//             padding: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all(color: Colors.grey.shade300),
//               color: Color(0xFFF7F9FC),
//             ),
//             child: Image.asset(
//               imagePath,
//               fit: BoxFit.contain,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             title,
//             textAlign: TextAlign.center,
//             style: const TextStyle(
//               fontSize: 14,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildRecommendationCard(
//       String title, String description, dynamic rating) {
//     return Container(
//       height: 180,
//       width: 160,
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Color(0xFFF7F9FC),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const SizedBox(height: 8),
//             Text(
//               description,
//               style: TextStyle(
//                 fontSize: 12,
//                 color: Colors.grey,
//               ),
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const Spacer(),
//             Text(
//               "Rating: $rating",
//               style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.orange,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//test 9

// import 'dart:math';
// import 'package:coderaiders/frontend/pages/profile.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class HomePage extends StatefulWidget {
//   final String email;

//   const HomePage({Key? key, required this.email}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final String recommendationsApi =
//       "http://10.0.2.2:5001/generate-recommendations";
//   final String userApi = "http://10.0.2.2:5000/get-user";

//   List<dynamic> recommendations = [];
//   bool isLoading = true;
//   String? errorMessage;
//   String? userName;

//   final List<Map<String, String>> skills = [
//     {'title': 'Python', 'icon': 'assets/python (1).png'},
//     {'title': 'Java', 'icon': 'assets/java.png'},
//     {'title': 'C Programming', 'icon': 'assets/c-sharp.png'},
//     {'title': 'JavaScript', 'icon': 'assets/javascript.png'},
//     {'title': 'Flutter', 'icon': 'assets/mobile-development.png'},
//     {'title': 'Data Science', 'icon': 'assets/data-science.png'},
//     {'title': 'Machine Learning', 'icon': 'assets/machine_learning.png'},
//     {'title': 'Cybersecurity', 'icon': 'assets/cyber-security.png'},
//     {'title': 'Blockchain', 'icon': 'assets/bitcoin.png'},
//     {'title': 'UI/UX Design', 'icon': 'assets/ux-design.png'},
//     {'title': 'Cloud Computing', 'icon': 'assets/server.png'},
//     {'title': 'DevOps', 'icon': 'assets/devops.png'},
//     {'title': 'Game Development', 'icon': 'assets/game-development.png'},
//     {
//       'title': 'Mobile App Development',
//       'icon': 'assets/mobile-development.png'
//     },
//     {'title': 'Software Testing', 'icon': 'assets/testing.png'},
//     {'title': 'Digital Marketing', 'icon': 'assets/bullhorn.png'},
//     {'title': 'Artificial Intelligence', 'icon': 'assets/ai.png'},
//     {'title': 'Augmented Reality', 'icon': 'assets/virtual-tour.png'},
//     {'title': 'Web Development', 'icon': 'assets/coding.png'},
//     {'title': 'SQL Databases', 'icon': 'assets/sql.png'},
//   ];

//   List<Map<String, String>> featuredSkills = [];
//   List<Map<String, String>> remainingSkills = [];
//   String searchQuery = "";
//   List<Map<String, String>> filteredSkills = [];
//   OverlayEntry? searchOverlay;
//   final LayerLink layerLink = LayerLink();

//   @override
//   void initState() {
//     super.initState();
//     _fetchUserName();
//     _fetchRecommendations();
//     _randomizeSkills();
//   }

//   void _randomizeSkills() {
//     final random = Random();
//     final shuffled = List<Map<String, String>>.from(skills)..shuffle(random);
//     featuredSkills = shuffled.take(5).toList();
//     remainingSkills = shuffled.skip(5).toList();
//     filteredSkills = List.from(remainingSkills);
//   }

//   Future<void> _fetchUserName() async {
//     try {
//       final response =
//           await http.get(Uri.parse('$userApi?email=${widget.email}'));

//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         setState(() {
//           userName = data['name'];
//         });
//       } else {
//         setState(() {
//           userName = "User"; // Fallback if fetching name fails
//         });
//       }
//     } catch (e) {
//       setState(() {
//         userName = "User"; // Fallback if there is an error
//       });
//     }
//   }

//   Future<void> _fetchRecommendations() async {
//     setState(() {
//       isLoading = true;
//       errorMessage = null;
//     });

//     try {
//       final response = await http.post(
//         Uri.parse(recommendationsApi),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({'email': widget.email}),
//       );

//       if (response.statusCode == 200) {
//         setState(() {
//           recommendations = json.decode(response.body)['recommendations'];
//           isLoading = false;
//         });
//       } else {
//         setState(() {
//           errorMessage = "Failed to load recommendations: ${response.body}";
//           isLoading = false;
//         });
//       }
//     } catch (e) {
//       setState(() {
//         errorMessage = "Error connecting to recommendations service: $e";
//         isLoading = false;
//       });
//     }
//   }

//   void _updateSearch(String query) {
//     setState(() {
//       searchQuery = query;
//       filteredSkills = remainingSkills
//           .where((skill) =>
//               skill['title']!.toLowerCase().contains(query.toLowerCase()))
//           .toList();
//     });
//     if (query.isNotEmpty) {
//       _showSearchDropdown();
//     } else {
//       _removeSearchDropdown();
//     }
//   }

//   void _showSearchDropdown() {
//     if (searchOverlay != null) {
//       _removeSearchDropdown();
//     }
//     searchOverlay = OverlayEntry(
//       builder: (context) {
//         return Positioned(
//           width: MediaQuery.of(context).size.width - 32,
//           child: CompositedTransformFollower(
//             link: layerLink,
//             offset: Offset(0, 60),
//             showWhenUnlinked: false,
//             child: Material(
//               elevation: 4.0,
//               borderRadius: BorderRadius.circular(8),
//               child: ListView.builder(
//                 padding: EdgeInsets.zero,
//                 shrinkWrap: true,
//                 itemCount: filteredSkills.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(
//                       filteredSkills[index]['title']!,
//                       style: TextStyle(fontFamily: 'Poppins'),
//                     ),
//                     onTap: () {
//                       print("Selected: ${filteredSkills[index]['title']}");
//                       _removeSearchDropdown();
//                     },
//                   );
//                 },
//               ),
//             ),
//           ),
//         );
//       },
//     );
//     Overlay.of(context).insert(searchOverlay!);
//   }

//   void _removeSearchDropdown() {
//     searchOverlay?.remove();
//     searchOverlay = null;
//   }

//   @override
//   void dispose() {
//     _removeSearchDropdown();
//     super.dispose();
//   }

//   void _navigateToProfilePage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ProfilePage(email: widget.email),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(fontFamily: 'Poppins'),
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//           title: const Center(
//             child: Text(
//               "Home",
//               style: TextStyle(
//                 fontSize: 28,
//                 color: Colors.black,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.account_circle,
//                   color: Color(0xFF0F3870), size: 36),
//               onPressed: _navigateToProfilePage,
//             ),
//           ],
//           leading: IconButton(
//             icon: Icon(Icons.grid_view, color: Color(0xFF0F3870), size: 30),
//             onPressed: () {},
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Hi ${userName ?? "User"}!",
//                   style: TextStyle(
//                     fontSize: 32,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 Text(
//                   "Good morning",
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 CompositedTransformTarget(
//                   link: layerLink,
//                   child: TextField(
//                     onChanged: _updateSearch,
//                     decoration: InputDecoration(
//                       hintText: "Search",
//                       prefixIcon: Icon(Icons.search, color: Colors.grey),
//                       filled: true,
//                       fillColor: Colors.grey.shade200,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                         borderSide: BorderSide.none,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Container(
//                   padding: const EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Color(0xFF21324B), width: 2),
//                     borderRadius: BorderRadius.circular(12),
//                     color: Color(0xFFF7F9FC),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Welcome!",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                           const SizedBox(height: 8),
//                           Text(
//                             "Take this test to assess and \nfind out your skills.",
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.grey,
//                             ),
//                           ),
//                         ],
//                       ),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 16,
//                             vertical: 10,
//                           ),
//                           backgroundColor: Color(0xFF0F3870),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                         onPressed: () {},
//                         child: const Text(
//                           "Take Test",
//                           style: TextStyle(fontSize: 14),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   "Featured Categories",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: featuredSkills.map((skill) {
//                       return buildCategoryCard(
//                         context,
//                         skill['icon']!,
//                         skill['title']!,
//                       );
//                     }).toList(),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   "Recommendations",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 if (isLoading)
//                   const Center(child: CircularProgressIndicator())
//                 else if (errorMessage != null)
//                   Center(
//                     child: Text(
//                       errorMessage!,
//                       style: const TextStyle(
//                         color: Colors.red,
//                         fontSize: 16,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   )
//                 else if (recommendations.isEmpty)
//                   const Center(
//                     child: Text(
//                       "No recommendations available.",
//                     ),
//                   )
//                 else
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       children: recommendations.map((course) {
//                         return buildRecommendationCard(
//                           course["course_name"],
//                           course["course_description"],
//                           course["course_rating"],
//                         );
//                       }).toList(),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildCategoryCard(
//       BuildContext context, String imagePath, String title) {
//     return GestureDetector(
//       onTap: () {
//         print('$title card tapped!');
//       },
//       child: Column(
//         children: [
//           Container(
//             width: 100,
//             height: 100,
//             margin: const EdgeInsets.symmetric(horizontal: 8),
//             padding: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all(color: Colors.grey.shade300),
//               color: Color(0xFFF7F9FC),
//             ),
//             child: Image.asset(
//               imagePath,
//               fit: BoxFit.contain,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             title,
//             textAlign: TextAlign.center,
//             style: const TextStyle(
//               fontSize: 12, // Reduced font size
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildRecommendationCard(
//       String title, String description, dynamic rating) {
//     return Container(
//       height: 180,
//       width: 160,
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Color(0xFFF7F9FC),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const SizedBox(height: 8),
//             Text(
//               description,
//               style: TextStyle(
//                 fontSize: 12,
//                 color: Colors.grey,
//               ),
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const Spacer(),
//             Text(
//               "Rating: $rating",
//               style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.orange,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//test 9 workss

// import 'dart:math';
// import 'package:coderaiders/frontend/pages/profile.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class HomePage extends StatefulWidget {
//   final String email;

//   const HomePage({Key? key, required this.email}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final String recommendationsApi =
//       "http://10.0.2.2:5001/generate-recommendations";
//   final String userApi = "http://10.0.2.2:5000/get-user";

//   List<dynamic> recommendations = [];
//   bool isLoading = true;
//   String? errorMessage;
//   String? userName;

//   final List<Map<String, String>> skills = [
//     {'title': 'Python', 'icon': 'assets/python (1).png'},
//     {'title': 'Java', 'icon': 'assets/java.png'},
//     {'title': 'C Programming', 'icon': 'assets/c-sharp.png'},
//     {'title': 'JavaScript', 'icon': 'assets/javascript.png'},
//     {'title': 'Flutter', 'icon': 'assets/mobile-development.png'},
//     {'title': 'Data Science', 'icon': 'assets/data-science.png'},
//     {'title': 'Machine Learning', 'icon': 'assets/machine_learning.png'},
//     {'title': 'Cybersecurity', 'icon': 'assets/cyber-security.png'},
//     {'title': 'Blockchain', 'icon': 'assets/bitcoin.png'},
//     {'title': 'UI/UX Design', 'icon': 'assets/ux-design.png'},
//     {'title': 'Cloud Computing', 'icon': 'assets/server.png'},
//     {'title': 'DevOps', 'icon': 'assets/devops.png'},
//     {'title': 'Game Development', 'icon': 'assets/game-development.png'},
//     {
//       'title': 'Mobile App Development',
//       'icon': 'assets/mobile-development.png'
//     },
//     {'title': 'Software Testing', 'icon': 'assets/testing.png'},
//     {'title': 'Digital Marketing', 'icon': 'assets/bullhorn.png'},
//     {'title': 'Artificial Intelligence', 'icon': 'assets/ai.png'},
//     {'title': 'Augmented Reality', 'icon': 'assets/virtual-tour.png'},
//     {'title': 'Web Development', 'icon': 'assets/coding.png'},
//     {'title': 'SQL Databases', 'icon': 'assets/sql.png'},
//   ];

//   List<Map<String, String>> featuredSkills = [];
//   List<Map<String, String>> remainingSkills = [];
//   String searchQuery = "";
//   List<Map<String, String>> filteredSkills = [];
//   OverlayEntry? searchOverlay;
//   final LayerLink layerLink = LayerLink();

//   @override
//   void initState() {
//     super.initState();
//     _fetchUserName();
//     _fetchRecommendations();
//     _randomizeSkills();
//   }

//   void _randomizeSkills() {
//     final random = Random();
//     final shuffled = List<Map<String, String>>.from(skills)..shuffle(random);
//     featuredSkills = shuffled.take(5).toList();
//     remainingSkills = shuffled.skip(5).toList();
//     filteredSkills = List.from(remainingSkills);
//   }

//   Future<void> _fetchUserName() async {
//     try {
//       final response =
//           await http.get(Uri.parse('$userApi?email=${widget.email}'));

//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         setState(() {
//           userName = data['name'];
//         });
//       } else {
//         setState(() {
//           userName = "User"; // Fallback if fetching name fails
//         });
//       }
//     } catch (e) {
//       setState(() {
//         userName = "User"; // Fallback if there is an error
//       });
//     }
//   }

//   Future<void> _fetchRecommendations() async {
//     setState(() {
//       isLoading = true;
//       errorMessage = null;
//     });

//     try {
//       final response = await http.post(
//         Uri.parse(recommendationsApi),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({'email': widget.email}),
//       );

//       if (response.statusCode == 200) {
//         setState(() {
//           recommendations = json.decode(response.body)['recommendations'];
//           isLoading = false;
//         });
//       } else {
//         setState(() {
//           errorMessage = "Failed to load recommendations: ${response.body}";
//           isLoading = false;
//         });
//       }
//     } catch (e) {
//       setState(() {
//         errorMessage = "Error connecting to recommendations service: $e";
//         isLoading = false;
//       });
//     }
//   }

//   void _updateSearch(String query) {
//     setState(() {
//       searchQuery = query;
//       filteredSkills = remainingSkills
//           .where((skill) =>
//               skill['title']!.toLowerCase().contains(query.toLowerCase()))
//           .toList();
//     });
//     if (query.isNotEmpty) {
//       _showSearchDropdown();
//     } else {
//       _removeSearchDropdown();
//     }
//   }

//   void _showSearchDropdown() {
//     if (searchOverlay != null) {
//       _removeSearchDropdown();
//     }
//     searchOverlay = OverlayEntry(
//       builder: (context) {
//         return Positioned(
//           width: MediaQuery.of(context).size.width - 32,
//           child: CompositedTransformFollower(
//             link: layerLink,
//             offset: Offset(0, 60),
//             showWhenUnlinked: false,
//             child: Material(
//               elevation: 4.0,
//               borderRadius: BorderRadius.circular(8),
//               child: ListView.builder(
//                 padding: EdgeInsets.zero,
//                 shrinkWrap: true,
//                 itemCount: filteredSkills.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(
//                       filteredSkills[index]['title']!,
//                       style: TextStyle(fontFamily: 'Poppins'),
//                     ),
//                     onTap: () {
//                       print("Selected: ${filteredSkills[index]['title']}");
//                       _removeSearchDropdown();
//                     },
//                   );
//                 },
//               ),
//             ),
//           ),
//         );
//       },
//     );
//     Overlay.of(context).insert(searchOverlay!);
//   }

//   void _removeSearchDropdown() {
//     searchOverlay?.remove();
//     searchOverlay = null;
//   }

//   @override
//   void dispose() {
//     _removeSearchDropdown();
//     super.dispose();
//   }

//   void _navigateToProfilePage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ProfilePage(email: widget.email),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(fontFamily: 'Poppins'),
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//           title: const Center(
//             child: Text(
//               "Home",
//               style: TextStyle(
//                 fontSize: 28,
//                 color: Colors.black,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.account_circle,
//                   color: Color(0xFF0F3870), size: 36),
//               onPressed: _navigateToProfilePage,
//             ),
//           ],
//           leading: IconButton(
//             icon: Icon(Icons.grid_view, color: Color(0xFF0F3870), size: 30),
//             onPressed: () {},
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Hi ${userName ?? "User"}!",
//                   style: TextStyle(
//                     fontSize: 32,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 Text(
//                   "Good morning",
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 CompositedTransformTarget(
//                   link: layerLink,
//                   child: TextField(
//                     onChanged: _updateSearch,
//                     decoration: InputDecoration(
//                       hintText: "Search",
//                       prefixIcon: Icon(Icons.search, color: Colors.grey),
//                       filled: true,
//                       fillColor: Colors.grey.shade200,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                         borderSide: BorderSide.none,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Container(
//                   padding: const EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Color(0xFF21324B), width: 2),
//                     borderRadius: BorderRadius.circular(12),
//                     color: Color(0xFFF7F9FC),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Welcome!",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                           const SizedBox(height: 8),
//                           Text(
//                             "Take this test to assess and \nfind out your skills.",
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.grey,
//                             ),
//                           ),
//                         ],
//                       ),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 16,
//                             vertical: 10,
//                           ),
//                           backgroundColor: Color(0xFF0F3870),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                         onPressed: () {},
//                         child: const Text(
//                           "Take Test",
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   "Featured Categories",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: featuredSkills.map((skill) {
//                       return buildCategoryCard(
//                         context,
//                         skill['icon']!,
//                         skill['title']!,
//                       );
//                     }).toList(),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   "Recommendations",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 if (isLoading)
//                   const Center(child: CircularProgressIndicator())
//                 else if (errorMessage != null)
//                   Center(
//                     child: Text(
//                       errorMessage!,
//                       style: const TextStyle(
//                         color: Colors.red,
//                         fontSize: 16,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   )
//                 else if (recommendations.isEmpty)
//                   const Center(
//                     child: Text(
//                       "No recommendations available.",
//                     ),
//                   )
//                 else
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       children: recommendations.map((course) {
//                         return buildRecommendationCard(
//                           course["course_name"],
//                           course["course_description"],
//                           course["course_rating"],
//                         );
//                       }).toList(),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildCategoryCard(
//       BuildContext context, String imagePath, String title) {
//     return GestureDetector(
//       onTap: () {
//         print('$title card tapped!');
//       },
//       child: Column(
//         children: [
//           Container(
//             width: 100,
//             height: 100,
//             margin: const EdgeInsets.symmetric(horizontal: 8),
//             padding: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all(color: Colors.grey.shade300),
//               color: Color(0xFFF7F9FC),
//             ),
//             child: Image.asset(
//               imagePath,
//               fit: BoxFit.contain,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             title,
//             textAlign: TextAlign.center,
//             style: const TextStyle(
//               fontSize: 12,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildRecommendationCard(
//       String title, String description, dynamic rating) {
//     return Container(
//       height: 180,
//       width: 160,
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Color(0xFFF7F9FC),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const SizedBox(height: 8),
//             Text(
//               description,
//               style: TextStyle(
//                 fontSize: 12,
//                 color: Colors.grey,
//               ),
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const Spacer(),
//             Text(
//               "Rating: $rating",
//               style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.orange,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//test 10 works

// import 'dart:math';
// import 'package:coderaiders/frontend/pages/profile.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:url_launcher/url_launcher.dart';

// class HomePage extends StatefulWidget {
//   final String email;

//   const HomePage({Key? key, required this.email}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final String recommendationsApi =
//       "http://10.0.2.2:5001/generate-recommendations";
//   final String userApi = "http://10.0.2.2:5000/get-user";

//   List<dynamic> recommendations = [];
//   bool isLoading = true;
//   String? errorMessage;
//   String? userName;

//   final List<Map<String, String>> skills = [
//     {'title': 'Python', 'icon': 'assets/python (1).png'},
//     {'title': 'Java', 'icon': 'assets/java.png'},
//     {'title': 'C Programming', 'icon': 'assets/c-sharp.png'},
//     {'title': 'JavaScript', 'icon': 'assets/javascript.png'},
//     {'title': 'Flutter', 'icon': 'assets/mobile-development.png'},
//     {'title': 'Data Science', 'icon': 'assets/data-science.png'},
//     {'title': 'Machine Learning', 'icon': 'assets/machine_learning.png'},
//     {'title': 'Cybersecurity', 'icon': 'assets/cyber-security.png'},
//     {'title': 'Blockchain', 'icon': 'assets/bitcoin.png'},
//     {'title': 'UI/UX Design', 'icon': 'assets/ux-design.png'},
//     {'title': 'Cloud Computing', 'icon': 'assets/server.png'},
//     {'title': 'DevOps', 'icon': 'assets/devops.png'},
//     {'title': 'Game Development', 'icon': 'assets/game-development.png'},
//     {
//       'title': 'Mobile App Development',
//       'icon': 'assets/mobile-development.png'
//     },
//     {'title': 'Software Testing', 'icon': 'assets/testing.png'},
//     {'title': 'Digital Marketing', 'icon': 'assets/bullhorn.png'},
//     {'title': 'Artificial Intelligence', 'icon': 'assets/ai.png'},
//     {'title': 'Augmented Reality', 'icon': 'assets/virtual-tour.png'},
//     {'title': 'Web Development', 'icon': 'assets/coding.png'},
//     {'title': 'SQL Databases', 'icon': 'assets/sql.png'},
//   ];

//   List<Map<String, String>> featuredSkills = [];
//   List<Map<String, String>> remainingSkills = [];
//   String searchQuery = "";
//   List<Map<String, String>> filteredSkills = [];
//   OverlayEntry? searchOverlay;
//   final LayerLink layerLink = LayerLink();

//   @override
//   void initState() {
//     super.initState();
//     _fetchUserName();
//     _fetchRecommendations();
//     _randomizeSkills();
//   }

//   void _randomizeSkills() {
//     final random = Random();
//     final shuffled = List<Map<String, String>>.from(skills)..shuffle(random);
//     featuredSkills = shuffled.take(5).toList();
//     remainingSkills = shuffled.skip(5).toList();
//     filteredSkills = List.from(remainingSkills);
//   }

//   Future<void> _fetchUserName() async {
//     try {
//       final response =
//           await http.get(Uri.parse('$userApi?email=${widget.email}'));

//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         setState(() {
//           userName = data['name'];
//         });
//       } else {
//         setState(() {
//           userName = "User"; // Fallback if fetching name fails
//         });
//       }
//     } catch (e) {
//       setState(() {
//         userName = "User"; // Fallback if there is an error
//       });
//     }
//   }

//   Future<void> _fetchRecommendations() async {
//     setState(() {
//       isLoading = true;
//       errorMessage = null;
//     });

//     try {
//       final response = await http.post(
//         Uri.parse(recommendationsApi),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({'email': widget.email}),
//       );

//       if (response.statusCode == 200) {
//         setState(() {
//           recommendations = json.decode(response.body)['recommendations'];
//           isLoading = false;
//         });
//       } else {
//         setState(() {
//           errorMessage = "Failed to load recommendations: ${response.body}";
//           isLoading = false;
//         });
//       }
//     } catch (e) {
//       setState(() {
//         errorMessage = "Error connecting to recommendations service: $e";
//         isLoading = false;
//       });
//     }
//   }

//   void _updateSearch(String query) {
//     setState(() {
//       searchQuery = query;
//       filteredSkills = remainingSkills
//           .where((skill) =>
//               skill['title']!.toLowerCase().contains(query.toLowerCase()))
//           .toList();
//     });
//     if (query.isNotEmpty) {
//       _showSearchDropdown();
//     } else {
//       _removeSearchDropdown();
//     }
//   }

//   void _showSearchDropdown() {
//     if (searchOverlay != null) {
//       _removeSearchDropdown();
//     }
//     searchOverlay = OverlayEntry(
//       builder: (context) {
//         return Positioned(
//           width: MediaQuery.of(context).size.width - 32,
//           child: CompositedTransformFollower(
//             link: layerLink,
//             offset: Offset(0, 60),
//             showWhenUnlinked: false,
//             child: Material(
//               elevation: 4.0,
//               borderRadius: BorderRadius.circular(8),
//               child: ListView.builder(
//                 padding: EdgeInsets.zero,
//                 shrinkWrap: true,
//                 itemCount: filteredSkills.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(
//                       filteredSkills[index]['title']!,
//                       style: TextStyle(fontFamily: 'Poppins'),
//                     ),
//                     onTap: () {
//                       print("Selected: ${filteredSkills[index]['title']}");
//                       _removeSearchDropdown();
//                     },
//                   );
//                 },
//               ),
//             ),
//           ),
//         );
//       },
//     );
//     Overlay.of(context).insert(searchOverlay!);
//   }

//   void _removeSearchDropdown() {
//     searchOverlay?.remove();
//     searchOverlay = null;
//   }

//   @override
//   void dispose() {
//     _removeSearchDropdown();
//     super.dispose();
//   }

//   void _navigateToProfilePage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ProfilePage(email: widget.email),
//       ),
//     );
//   }

//   Future<void> _openCourseUrl(String url) async {
//     final uri = Uri.parse(url);
//     if (await canLaunchUrl(uri)) {
//       await launchUrl(uri, mode: LaunchMode.externalApplication);
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Cannot open URL: $url")),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(fontFamily: 'Poppins'),
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//           title: const Center(
//             child: Text(
//               "Home",
//               style: TextStyle(
//                 fontSize: 28,
//                 color: Colors.black,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.account_circle,
//                   color: Color(0xFF0F3870), size: 36),
//               onPressed: _navigateToProfilePage,
//             ),
//           ],
//           leading: IconButton(
//             icon: Icon(Icons.grid_view, color: Color(0xFF0F3870), size: 30),
//             onPressed: () {},
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Hi ${userName ?? "User"}!",
//                   style: TextStyle(
//                     fontSize: 32,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 Text(
//                   "Good morning",
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 CompositedTransformTarget(
//                   link: layerLink,
//                   child: TextField(
//                     onChanged: _updateSearch,
//                     decoration: InputDecoration(
//                       hintText: "Search",
//                       prefixIcon: Icon(Icons.search, color: Colors.grey),
//                       filled: true,
//                       fillColor: Colors.grey.shade200,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                         borderSide: BorderSide.none,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Container(
//                   padding: const EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Color(0xFF21324B), width: 2),
//                     borderRadius: BorderRadius.circular(12),
//                     color: Color(0xFFF7F9FC),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Welcome!",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                           const SizedBox(height: 8),
//                           Text(
//                             "Take this test to assess and \nfind out your skills.",
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.grey,
//                             ),
//                           ),
//                         ],
//                       ),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 16,
//                             vertical: 10,
//                           ),
//                           backgroundColor: Color(0xFF0F3870),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                         onPressed: () {},
//                         child: const Text(
//                           "Take Test",
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   "Featured Categories",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: featuredSkills.map((skill) {
//                       return buildCategoryCard(
//                         context,
//                         skill['icon']!,
//                         skill['title']!,
//                       );
//                     }).toList(),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   "Recommendations",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 if (isLoading)
//                   const Center(child: CircularProgressIndicator())
//                 else if (errorMessage != null)
//                   Center(
//                     child: Text(
//                       errorMessage!,
//                       style: const TextStyle(
//                         color: Colors.red,
//                         fontSize: 16,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   )
//                 else if (recommendations.isEmpty)
//                   const Center(
//                     child: Text(
//                       "No recommendations available.",
//                     ),
//                   )
//                 else
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       children: recommendations.map((course) {
//                         return GestureDetector(
//                           onTap: () => _openCourseUrl(course["course_url"]),
//                           child: buildRecommendationCard(
//                             course["course_name"],
//                             course["course_description"],
//                             course["course_rating"],
//                           ),
//                         );
//                       }).toList(),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildCategoryCard(
//       BuildContext context, String imagePath, String title) {
//     return GestureDetector(
//       onTap: () {
//         print('$title card tapped!');
//       },
//       child: Column(
//         children: [
//           Container(
//             width: 100,
//             height: 100,
//             margin: const EdgeInsets.symmetric(horizontal: 8),
//             padding: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all(color: Colors.grey.shade300),
//               color: Color(0xFFF7F9FC),
//             ),
//             child: Image.asset(
//               imagePath,
//               fit: BoxFit.contain,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             title,
//             textAlign: TextAlign.center,
//             style: const TextStyle(
//               fontSize: 12,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildRecommendationCard(
//       String title, String description, dynamic rating) {
//     return Container(
//       height: 180,
//       width: 160,
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Color(0xFFF7F9FC),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const SizedBox(height: 8),
//             Text(
//               description,
//               style: TextStyle(
//                 fontSize: 12,
//                 color: Colors.grey,
//               ),
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const Spacer(),
//             Text(
//               "Rating: $rating",
//               style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.orange,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//test  11 works

// import 'dart:math';
// import 'package:coderaiders/frontend/pages/profile.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:url_launcher/url_launcher.dart'; // Import url_launcher

// class HomePage extends StatefulWidget {
//   final String email;

//   const HomePage({Key? key, required this.email}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final String recommendationsApi =
//       "http://10.0.2.2:5001/generate-recommendations";
//   final String userApi = "http://10.0.2.2:5000/get-user";

//   List<dynamic> recommendations = [];
//   bool isLoading = true;
//   String? errorMessage;
//   String? userName;

//   final List<Map<String, String>> skills = [
//     {'title': 'Python', 'icon': 'assets/python (1).png'},
//     {'title': 'Java', 'icon': 'assets/java.png'},
//     {'title': 'C Programming', 'icon': 'assets/c-sharp.png'},
//     {'title': 'JavaScript', 'icon': 'assets/javascript.png'},
//     {'title': 'Flutter', 'icon': 'assets/mobile-development.png'},
//     {'title': 'Data Science', 'icon': 'assets/data-science.png'},
//     {'title': 'Machine Learning', 'icon': 'assets/machine_learning.png'},
//     {'title': 'Cybersecurity', 'icon': 'assets/cyber-security.png'},
//     {'title': 'Blockchain', 'icon': 'assets/bitcoin.png'},
//     {'title': 'UI/UX Design', 'icon': 'assets/ux-design.png'},
//     {'title': 'Cloud Computing', 'icon': 'assets/server.png'},
//     {'title': 'DevOps', 'icon': 'assets/devops.png'},
//     {'title': 'Game Development', 'icon': 'assets/game-development.png'},
//     {
//       'title': 'Mobile App Development',
//       'icon': 'assets/mobile-development.png'
//     },
//     {'title': 'Software Testing', 'icon': 'assets/testing.png'},
//     {'title': 'Digital Marketing', 'icon': 'assets/bullhorn.png'},
//     {'title': 'Artificial Intelligence', 'icon': 'assets/ai.png'},
//     {'title': 'Augmented Reality', 'icon': 'assets/virtual-tour.png'},
//     {'title': 'Web Development', 'icon': 'assets/coding.png'},
//     {'title': 'SQL Databases', 'icon': 'assets/sql.png'},
//   ];

//   List<Map<String, String>> featuredSkills = [];
//   List<Map<String, String>> remainingSkills = [];
//   String searchQuery = "";
//   List<Map<String, String>> filteredSkills = [];
//   OverlayEntry? searchOverlay;
//   final LayerLink layerLink = LayerLink();

//   @override
//   void initState() {
//     super.initState();
//     _fetchUserName();
//     _fetchRecommendations();
//     _randomizeSkills();
//   }

//   void _randomizeSkills() {
//     final random = Random();
//     final shuffled = List<Map<String, String>>.from(skills)..shuffle(random);
//     featuredSkills = shuffled.take(5).toList();
//     remainingSkills = shuffled.skip(5).toList();
//     filteredSkills = List.from(remainingSkills);
//   }

//   Future<void> _fetchUserName() async {
//     try {
//       final response =
//           await http.get(Uri.parse('$userApi?email=${widget.email}'));

//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         setState(() {
//           userName = data['name'];
//         });
//       } else {
//         setState(() {
//           userName = "User"; // Fallback if fetching name fails
//         });
//       }
//     } catch (e) {
//       setState(() {
//         userName = "User"; // Fallback if there is an error
//       });
//     }
//   }

//   Future<void> _fetchRecommendations() async {
//     setState(() {
//       isLoading = true;
//       errorMessage = null;
//     });

//     try {
//       final response = await http.post(
//         Uri.parse(recommendationsApi),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({'email': widget.email}),
//       );

//       if (response.statusCode == 200) {
//         setState(() {
//           recommendations = json.decode(response.body)['recommendations'];
//           isLoading = false;
//         });
//       } else {
//         setState(() {
//           errorMessage = "Failed to load recommendations: ${response.body}";
//           isLoading = false;
//         });
//       }
//     } catch (e) {
//       setState(() {
//         errorMessage = "Error connecting to recommendations service: $e";
//         isLoading = false;
//       });
//     }
//   }

//   void _updateSearch(String query) {
//     setState(() {
//       searchQuery = query;
//       filteredSkills = remainingSkills
//           .where((skill) =>
//               skill['title']!.toLowerCase().contains(query.toLowerCase()))
//           .toList();
//     });
//     if (query.isNotEmpty) {
//       _showSearchDropdown();
//     } else {
//       _removeSearchDropdown();
//     }
//   }

//   void _showSearchDropdown() {
//     if (searchOverlay != null) {
//       _removeSearchDropdown();
//     }
//     searchOverlay = OverlayEntry(
//       builder: (context) {
//         return Positioned(
//           width: MediaQuery.of(context).size.width - 32,
//           child: CompositedTransformFollower(
//             link: layerLink,
//             offset: Offset(0, 60),
//             showWhenUnlinked: false,
//             child: Material(
//               elevation: 4.0,
//               borderRadius: BorderRadius.circular(8),
//               child: ListView.builder(
//                 padding: EdgeInsets.zero,
//                 shrinkWrap: true,
//                 itemCount: filteredSkills.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(
//                       filteredSkills[index]['title']!,
//                       style: TextStyle(fontFamily: 'Poppins'),
//                     ),
//                     onTap: () {
//                       print("Selected: ${filteredSkills[index]['title']}");
//                       _removeSearchDropdown();
//                     },
//                   );
//                 },
//               ),
//             ),
//           ),
//         );
//       },
//     );
//     Overlay.of(context).insert(searchOverlay!);
//   }

//   void _removeSearchDropdown() {
//     searchOverlay?.remove();
//     searchOverlay = null;
//   }

//   @override
//   void dispose() {
//     _removeSearchDropdown();
//     super.dispose();
//   }

//   void _navigateToProfilePage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ProfilePage(email: widget.email),
//       ),
//     );
//   }

//   Future<void> _openCourseUrl(String url) async {
//     final uri = Uri.parse(url);
//     if (await canLaunchUrl(uri)) {
//       await launchUrl(uri, mode: LaunchMode.externalApplication);
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Cannot open URL: $url")),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(fontFamily: 'Poppins'),
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//           title: const Center(
//             child: Text(
//               "Home",
//               style: TextStyle(
//                 fontSize: 28,
//                 color: Colors.black,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.account_circle,
//                   color: Color(0xFF0F3870), size: 36),
//               onPressed: _navigateToProfilePage,
//             ),
//           ],
//           leading: IconButton(
//             icon: Icon(Icons.grid_view, color: Color(0xFF0F3870), size: 30),
//             onPressed: () {},
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Hi ${userName ?? "User"}!",
//                   style: TextStyle(
//                     fontSize: 32,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 Text(
//                   "Good morning",
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 CompositedTransformTarget(
//                   link: layerLink,
//                   child: TextField(
//                     onChanged: _updateSearch,
//                     decoration: InputDecoration(
//                       hintText: "Search",
//                       prefixIcon: Icon(Icons.search, color: Colors.grey),
//                       filled: true,
//                       fillColor: Colors.grey.shade200,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                         borderSide: BorderSide.none,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Container(
//                   padding: const EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Color(0xFF21324B), width: 2),
//                     borderRadius: BorderRadius.circular(12),
//                     color: Color(0xFFF7F9FC),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Welcome!",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                           const SizedBox(height: 8),
//                           Text(
//                             "Take this test to assess and \nfind out your skills.",
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.grey,
//                             ),
//                           ),
//                         ],
//                       ),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 16,
//                             vertical: 10,
//                           ),
//                           backgroundColor: Color(0xFF0F3870),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                         onPressed: () {},
//                         child: const Text(
//                           "Take Test",
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   "Featured Categories",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: featuredSkills.map((skill) {
//                       return buildCategoryCard(
//                         context,
//                         skill['icon']!,
//                         skill['title']!,
//                       );
//                     }).toList(),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   "Recommendations",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 if (isLoading)
//                   const Center(child: CircularProgressIndicator())
//                 else if (errorMessage != null)
//                   Center(
//                     child: Text(
//                       errorMessage!,
//                       style: const TextStyle(
//                         color: Colors.red,
//                         fontSize: 16,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   )
//                 else if (recommendations.isEmpty)
//                   const Center(
//                     child: Text(
//                       "No recommendations available.",
//                     ),
//                   )
//                 else
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       children: recommendations.map((course) {
//                         return GestureDetector(
//                           onTap: () => _openCourseUrl(course["course_url"]),
//                           child: buildRecommendationCard(
//                             course["course_name"],
//                             course["course_description"],
//                             course["course_rating"],
//                           ),
//                         );
//                       }).toList(),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildCategoryCard(
//       BuildContext context, String imagePath, String title) {
//     return GestureDetector(
//       onTap: () {
//         print('$title card tapped!');
//       },
//       child: Column(
//         children: [
//           Container(
//             width: 100,
//             height: 100,
//             margin: const EdgeInsets.symmetric(horizontal: 8),
//             padding: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all(color: Colors.grey.shade300),
//               color: Color(0xFFF7F9FC),
//             ),
//             child: Image.asset(
//               imagePath,
//               fit: BoxFit.contain,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             title,
//             textAlign: TextAlign.center,
//             style: const TextStyle(
//               fontSize: 12,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildRecommendationCard(
//       String title, String description, dynamic rating) {
//     return Container(
//       height: 180,
//       width: 160,
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Color(0xFFF7F9FC),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const SizedBox(height: 8),
//             Text(
//               description,
//               style: TextStyle(
//                 fontSize: 12,
//                 color: Colors.grey,
//               ),
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const Spacer(),
//             Text(
//               "Rating: $rating",
//               style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.orange,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// test 12 pass works

import 'dart:math';
import 'package:coderaiders/frontend/pages/leaderboard.dart';
import 'package:coderaiders/frontend/pages/loginpg.dart';
import 'package:coderaiders/frontend/pages/profile.dart';
import 'package:coderaiders/frontend/pages/reminders.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher

void main() {
  runApp(MaterialApp(
    home: HomePage(email: "john@gmail.com"),
  ));
}

class HomePage extends StatefulWidget {
  final String email;

  const HomePage({Key? key, required this.email}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String recommendationsApi =
      "http://10.0.2.2:5001/generate-recommendations";
  final String userApi = "http://10.0.2.2:5000/get-user";
  void _showSidebar(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Stack(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),

                    // Replace Jason and email with user details
                    Text(
                      userName ?? "User", // Replace with current user's name
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.email, // Replace with current user's email
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Divider(color: Colors.grey),
                    const SizedBox(height: 16),

                    // Sidebar Items
                    _buildSidebarItem(context, Icons.analytics, "Analytics"),
                    _buildSidebarItem(context, Icons.feedback, "Feedbacks"),
                    _buildSidebarItem(context, Icons.alarm, "Remainders"),
                    _buildSidebarItem(
                        context, Icons.leaderboard, "LeaderBoard"),
                    _buildSidebarItem(context, Icons.settings, "Settings"),
                    _buildSidebarItem(
                        context, Icons.category, "Exam Categories"),
                    _buildSidebarItem(context, Icons.smart_toy, "AI Assistant"),

                    const Spacer(),

                    // Premium Card Positioned Centrally
                    SizedBox(
                      width: double
                          .infinity, // Makes the card take the full width of the parent
                      child: Card(
                        color: const Color(0xFF0A0C90), // Background color
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Try premium features",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white, // Text color
                                ),
                              ),
                              SizedBox(height: 6),
                              Text(
                                "just for ₹399",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                "• Quality AI-Assessments",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                              Text(
                                "• Feedbacks",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                              Text(
                                "• Chatbot",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Logout Button
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        ); // Handle logout logic here
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xFF0A0C90), // Dark blue color
                        ),
                        child: const Center(
                          child: Text(
                            "Logout",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

// Method to build clickable sidebar items
  Widget _buildSidebarItem(BuildContext context, IconData icon, String title) {
    return GestureDetector(
      onTap: () {
        print('$title tapped!'); // Add your navigation or action logic here
        Navigator.of(context).pop(); // Close sidebar after action
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.black, size: 24),
            const SizedBox(width: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<dynamic> recommendations = [];
  bool isLoading = true;
  String? errorMessage;
  String? userName;
  int _currentIndex = 1; // Default selected tab is Home.

  void _onNavigationTap(int index) {
    if (_currentIndex == index) {
      // If already on the current tab, do nothing.
      return;
    }

    setState(() {
      _currentIndex = index;
    });

    // Navigate to the selected page
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                CalendarApp(email: widget.email), // Pass email
          ),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(email: widget.email),
          ),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LeaderboardPage(), // Pass email
          ),
        );
        break;
    }
  }

  final List<Map<String, String>> skills = [
    {'title': 'Python', 'icon': 'assets/python (1).png'},
    {'title': 'Java', 'icon': 'assets/java.png'},
    {'title': 'C Programming', 'icon': 'assets/c-sharp.png'},
    {'title': 'JavaScript', 'icon': 'assets/javascript.png'},
    {'title': 'Flutter', 'icon': 'assets/mobile-development.png'},
    {'title': 'Data Science', 'icon': 'assets/data-science.png'},
    {'title': 'Machine Learning', 'icon': 'assets/machine_learning.png'},
    {'title': 'Cybersecurity', 'icon': 'assets/cyber-security.png'},
    {'title': 'Blockchain', 'icon': 'assets/bitcoin.png'},
    {'title': 'UI/UX Design', 'icon': 'assets/ux-design.png'},
    {'title': 'Cloud Computing', 'icon': 'assets/server.png'},
    {'title': 'DevOps', 'icon': 'assets/devops.png'},
    {'title': 'Game Development', 'icon': 'assets/game-development.png'},
    {
      'title': 'Mobile App Development',
      'icon': 'assets/mobile-development.png'
    },
    {'title': 'Software Testing', 'icon': 'assets/testing.png'},
    {'title': 'Digital Marketing', 'icon': 'assets/bullhorn.png'},
    {'title': 'Artificial Intelligence', 'icon': 'assets/ai.png'},
    {'title': 'Augmented Reality', 'icon': 'assets/virtual-tour.png'},
    {'title': 'Web Development', 'icon': 'assets/coding.png'},
    {'title': 'SQL Databases', 'icon': 'assets/sql.png'},
  ];

  List<Map<String, String>> featuredSkills = [];
  List<Map<String, String>> remainingSkills = [];
  String searchQuery = "";
  List<Map<String, String>> filteredSkills = [];
  OverlayEntry? searchOverlay;
  final LayerLink layerLink = LayerLink();

  @override
  void initState() {
    super.initState();
    _fetchUserName();
    _fetchRecommendations();
    _randomizeSkills();
  }

  void _randomizeSkills() {
    final random = Random();
    final shuffled = List<Map<String, String>>.from(skills)..shuffle(random);
    featuredSkills = shuffled.take(5).toList();
    remainingSkills = shuffled.skip(5).toList();
    filteredSkills = List.from(remainingSkills);
  }

  Future<void> _fetchUserName() async {
    try {
      final response =
          await http.get(Uri.parse('$userApi?email=${widget.email}'));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          userName = data['name'];
        });
      } else {
        setState(() {
          userName = "User"; // Fallback if fetching name fails
        });
      }
    } catch (e) {
      setState(() {
        userName = "User"; // Fallback if there is an error
      });
    }
  }

  Future<void> _fetchRecommendations() async {
    setState(() {
      isLoading = true;
      errorMessage = null;
    });

    try {
      final response = await http.post(
        Uri.parse(recommendationsApi),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': widget.email}),
      );

      if (response.statusCode == 200) {
        setState(() {
          recommendations = json.decode(response.body)['recommendations'];
          isLoading = false;
        });
      } else {
        setState(() {
          errorMessage = "Failed to load recommendations: ${response.body}";
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = "Error connecting to recommendations service: $e";
        isLoading = false;
      });
    }
  }

  void _updateSearch(String query) {
    setState(() {
      searchQuery = query;
      filteredSkills = remainingSkills
          .where((skill) =>
              skill['title']!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
    if (query.isNotEmpty) {
      _showSearchDropdown();
    } else {
      _removeSearchDropdown();
    }
  }

  void _showSearchDropdown() {
    if (searchOverlay != null) {
      _removeSearchDropdown();
    }
    searchOverlay = OverlayEntry(
      builder: (context) {
        return Positioned(
          width: MediaQuery.of(context).size.width - 32,
          child: CompositedTransformFollower(
            link: layerLink,
            offset: const Offset(0, 60),
            showWhenUnlinked: false,
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(8),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: filteredSkills.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      filteredSkills[index]['title']!,
                      style: const TextStyle(fontFamily: 'Poppins'),
                    ),
                    onTap: () {
                      print("Selected: ${filteredSkills[index]['title']}");
                      _removeSearchDropdown();
                    },
                  );
                },
              ),
            ),
          ),
        );
      },
    );
    Overlay.of(context).insert(searchOverlay!);
  }

  void _removeSearchDropdown() {
    searchOverlay?.remove();
    searchOverlay = null;
  }

  @override
  void dispose() {
    _removeSearchDropdown();
    super.dispose();
  }

  void _navigateToProfilePage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProfilePage(email: widget.email),
      ),
    );
  }

  Future<void> _openCourseUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Cannot open URL: $url")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Center(
            child: Text(
              "Home",
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.account_circle,
                  color: Color(0xFF0F3870), size: 36),
              onPressed: _navigateToProfilePage,
            ),
          ],
          leading: IconButton(
            icon:
                const Icon(Icons.grid_view, color: Color(0xFF0F3870), size: 32),
            onPressed: () {
              _showSidebar(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi ${userName ?? "User"}!",
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "Good morning",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),
                CompositedTransformTarget(
                  link: layerLink,
                  child: TextField(
                    onChanged: _updateSearch,
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xFF21324B), width: 2),
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFFF7F9FC),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Welcome!",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Take this test to assess and \nfind out your skills.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ),
                          backgroundColor: const Color(0xFF0F3870),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Take Test",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Featured Categories",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: featuredSkills.map((skill) {
                      return buildCategoryCard(
                        context,
                        skill['icon']!,
                        skill['title']!,
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Recommendations",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                if (isLoading)
                  const Center(child: CircularProgressIndicator())
                else if (errorMessage != null)
                  Center(
                    child: Text(
                      errorMessage!,
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                else if (recommendations.isEmpty)
                  const Center(
                    child: Text(
                      "No recommendations available.",
                    ),
                  )
                else
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: recommendations.map((course) {
                        return GestureDetector(
                          onTap: () => _openCourseUrl(course["course_url"]),
                          child: buildRecommendationCard(
                            course["course_name"],
                            course["course_description"],
                            course["course_rating"],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF0A368D), // Dark blue background
          currentIndex: _currentIndex, // Highlights the selected tab
          selectedItemColor: Colors.white, // Highlighted item color
          unselectedItemColor: Colors.grey, // Unselected item color
          onTap: _onNavigationTap, // Handle tab taps
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm), // Reminder icon
              label: "Reminders",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home), // Home icon
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard), // Leaderboard icon
              label: "Leaderboard",
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCategoryCard(
      BuildContext context, String imagePath, String title) {
    return GestureDetector(
      onTap: () {
        print('$title card tapped!');
      },
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300),
              color: const Color.fromARGB(255, 240, 246, 255),
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRecommendationCard(
      String title, String description, dynamic rating) {
    return Container(
      height: 180,
      width: 160,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 240, 246, 255),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            Text(
              "Rating: $rating",
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
