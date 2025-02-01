// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:flutter/material.dart';

// class ProfilePage extends StatefulWidget {
//   final String email;

//   const ProfilePage({required this.email, Key? key}) : super(key: key);

//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   String name = "Loading...";
//   String phone = "";
//   String studentAt = "You are currently at"; // Default placeholder
//   bool isEditingWorkingAt = false;
//   TextEditingController workingAtController = TextEditingController();
//   List<String> interests = [];

//   final String apiUrl = "http://10.0.2.2:5000/get-user";
//   final String updateUrl = "http://10.0.2.2:5000/update-user";

//   @override
//   void initState() {
//     super.initState();
//     fetchUserData();
//   }

//   Future<void> fetchUserData() async {
//     try {
//       final response =
//           await http.get(Uri.parse('$apiUrl?email=${widget.email}'));

//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         setState(() {
//           name = data['name'];
//           phone = data['phone'];
//           studentAt = data['workingAt'] ??
//               "You are currently at"; // Check if workingAt exists in the database
//           interests = List<String>.from(data['selectedItems']);
//         });
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Failed to fetch user data')),
//         );
//       }
//     } catch (e) {
//       print("Error: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Error connecting to the backend')),
//       );
//     }
//   }

//   Future<void> saveWorkingAt() async {
//     if (workingAtController.text.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Location cannot be empty')),
//       );
//       return;
//     }

//     try {
//       final response = await http.post(
//         Uri.parse(updateUrl),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode(
//             {'email': widget.email, 'workingAt': workingAtController.text}),
//       );

//       if (response.statusCode == 200) {
//         setState(() {
//           studentAt = workingAtController.text; // Update the local variable
//           isEditingWorkingAt = false; // Exit editing mode
//         });
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Location saved successfully')),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Error: ${response.body}')),
//         );
//       }
//     } catch (e) {
//       print("Error: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Failed to save location')),
//       );
//     }
//   }

//   void navigateToDummyPage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => const DummyPage()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'Poppins', // Globally set Poppins font
//       ),
//       home: Scaffold(
//         body: Column(
//           children: [
//             // Top Profile Section
//             Container(
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Color(0xFF003399), Color(0xFF99CCFF)],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(40.0),
//                   bottomRight: Radius.circular(40.0),
//                 ),
//               ),
//               padding:
//                   const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       IconButton(
//                         icon: const Icon(Icons.grid_view,
//                             color: Colors.white, size: 28),
//                         onPressed: () {},
//                       ),
//                       GestureDetector(
//                         onTap: navigateToDummyPage,
//                         child: Container(
//                           width: 40,
//                           height: 40,
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                             shape: BoxShape.circle,
//                           ),
//                           child: const Icon(Icons.edit,
//                               color: Colors.black, size: 28),
//                         ),
//                       ),
//                     ],
//                   ),
//                   CircleAvatar(
//                     radius: 50,
//                     backgroundColor: Colors.white,
//                     child:
//                         const Icon(Icons.person, color: Colors.black, size: 50),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     name,
//                     style: const TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   Text(
//                     studentAt,
//                     style: const TextStyle(color: Colors.white70, fontSize: 14),
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                 child: ListView(
//                   children: [
//                     ProfileCard(
//                       label: "Email",
//                       value: widget.email,
//                       cardColor: const Color(0xFFEBF1FD),
//                     ),
//                     const SizedBox(height: 16),
//                     ProfileCard(
//                       label: "Phone Number",
//                       value: phone,
//                       cardColor: const Color(0xFFEBF1FD),
//                     ),
//                     const SizedBox(height: 16),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: isEditingWorkingAt
//                               ? TextField(
//                                   controller: workingAtController,
//                                   decoration: InputDecoration(
//                                     hintText: "Enter your current location",
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10.0),
//                                     ),
//                                     filled: true,
//                                     fillColor: Colors.white,
//                                   ),
//                                 )
//                               : ProfileCard(
//                                   label: "You are currently at",
//                                   value: studentAt,
//                                   cardColor: const Color(0xFFEBF1FD),
//                                 ),
//                         ),
//                         const SizedBox(width: 10),
//                         ElevatedButton(
//                           onPressed: () {
//                             if (isEditingWorkingAt) {
//                               saveWorkingAt();
//                             } else {
//                               setState(() {
//                                 isEditingWorkingAt = true;
//                                 workingAtController.text = studentAt;
//                               });
//                             }
//                           },
//                           child: Text(isEditingWorkingAt ? "Save" : "Edit"),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 16),
//                     Card(
//                       color: const Color(0xFFEBF1FD),
//                       elevation: 2,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(16.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text(
//                               "Interests",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             Wrap(
//                               spacing: 10,
//                               runSpacing: 10,
//                               children: interests.map((interest) {
//                                 return Card(
//                                   color: Colors.white,
//                                   elevation: 2,
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         vertical: 8.0, horizontal: 12.0),
//                                     child: Text(
//                                       interest,
//                                       style: const TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.w500,
//                                         color: Colors.black87,
//                                       ),
//                                     ),
//                                   ),
//                                 );
//                               }).toList(),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProfileCard extends StatelessWidget {
//   final String label;
//   final String value;
//   final Color cardColor;

//   const ProfileCard(
//       {required this.label,
//       required this.value,
//       required this.cardColor,
//       Key? key})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       color: cardColor,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               label,
//               style: const TextStyle(fontSize: 14, color: Colors.black54),
//             ),
//             const SizedBox(height: 4),
//             Text(
//               value,
//               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DummyPage extends StatelessWidget {
//   const DummyPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Dummy Page"),
//       ),
//       body: const Center(
//         child: Text("This is a dummy page"),
//       ),
//     );
//   }
// }

// test 2

// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:flutter/material.dart';

// class ProfilePage extends StatefulWidget {
//   final String email;

//   const ProfilePage({required this.email, Key? key}) : super(key: key);

//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   String name = "Loading...";
//   String phone = "";
//   String studentAt = "You are currently at"; // Default placeholder
//   bool isEditingWorkingAt = false;
//   TextEditingController workingAtController = TextEditingController();
//   List<String> interests = [];

//   final String apiUrl = "http://10.0.2.2:5000/get-user";
//   final String updateUrl = "http://10.0.2.2:5000/update-user";

//   @override
//   void initState() {
//     super.initState();
//     fetchUserData();
//   }

//   Future<void> fetchUserData() async {
//     try {
//       final response =
//           await http.get(Uri.parse('$apiUrl?email=${widget.email}'));

//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         setState(() {
//           name = data['name'];
//           phone = data['phone'];
//           studentAt = data['workingAt'] ??
//               "You are currently at"; // Check if workingAt exists in the database
//           interests = List<String>.from(data['selectedItems']);
//         });
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Failed to fetch user data')),
//         );
//       }
//     } catch (e) {
//       print("Error: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Error connecting to the backend')),
//       );
//     }
//   }

//   Future<void> saveWorkingAt() async {
//     if (workingAtController.text.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Location cannot be empty')),
//       );
//       return;
//     }

//     try {
//       final response = await http.post(
//         Uri.parse(updateUrl),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode(
//             {'email': widget.email, 'currentlyAt': workingAtController.text}),
//       );

//       if (response.statusCode == 200) {
//         setState(() {
//           studentAt = workingAtController.text; // Update the local variable
//           isEditingWorkingAt = false; // Change button back to "Edit"
//         });
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Location saved successfully')),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Error: ${response.body}')),
//         );
//       }
//     } catch (e) {
//       print("Error: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Failed to save location')),
//       );
//     }
//   }

//   void navigateToDummyPage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => const DummyPage()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'Poppins', // Globally set Poppins font
//       ),
//       home: Scaffold(
//         body: Column(
//           children: [
//             // Top Profile Section
//             Container(
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Color(0xFF003399), Color(0xFF99CCFF)],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(40.0),
//                   bottomRight: Radius.circular(40.0),
//                 ),
//               ),
//               padding:
//                   const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       IconButton(
//                         icon: const Icon(Icons.grid_view,
//                             color: Colors.white, size: 28),
//                         onPressed: () {},
//                       ),
//                       GestureDetector(
//                         onTap: navigateToDummyPage,
//                         child: Container(
//                           width: 40,
//                           height: 40,
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                             shape: BoxShape.circle,
//                           ),
//                           child: const Icon(Icons.edit,
//                               color: Colors.black, size: 28),
//                         ),
//                       ),
//                     ],
//                   ),
//                   CircleAvatar(
//                     radius: 50,
//                     backgroundColor: Colors.white,
//                     child:
//                         const Icon(Icons.person, color: Colors.black, size: 50),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     name,
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   Text(
//                     studentAt,
//                     style: const TextStyle(color: Colors.white70, fontSize: 14),
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                 child: ListView(
//                   children: [
//                     ProfileCard(
//                       label: "Email",
//                       value: widget.email,
//                       cardColor: const Color(0xFFEBF1FD),
//                     ),
//                     const SizedBox(height: 16),
//                     ProfileCard(
//                       label: "Phone Number",
//                       value: phone,
//                       cardColor: const Color(0xFFEBF1FD),
//                     ),
//                     const SizedBox(height: 16),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: isEditingWorkingAt
//                               ? TextField(
//                                   controller: workingAtController,
//                                   decoration: InputDecoration(
//                                     hintText: "Enter your current location",
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10.0),
//                                     ),
//                                     filled: true,
//                                     fillColor: Colors.white,
//                                   ),
//                                 )
//                               : ProfileCard(
//                                   label: "You are currently at",
//                                   value: studentAt,
//                                   cardColor: const Color(0xFFEBF1FD),
//                                 ),
//                         ),
//                         const SizedBox(width: 10),
//                         ElevatedButton(
//                           onPressed: () {
//                             if (isEditingWorkingAt) {
//                               saveWorkingAt();
//                             } else {
//                               setState(() {
//                                 isEditingWorkingAt = true;
//                                 workingAtController.text = studentAt;
//                               });
//                             }
//                           },
//                           child: Text(isEditingWorkingAt ? "Save" : "Edit"),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 16),
//                     Card(
//                       color: const Color(0xFFEBF1FD),
//                       elevation: 2,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(16.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text(
//                               "Interests",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             Wrap(
//                               spacing: 10,
//                               runSpacing: 10,
//                               children: interests.map((interest) {
//                                 return Card(
//                                   color: Colors.white,
//                                   elevation: 2,
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         vertical: 8.0, horizontal: 12.0),
//                                     child: Text(
//                                       interest,
//                                       style: const TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.w500,
//                                         color: Colors.black87,
//                                       ),
//                                     ),
//                                   ),
//                                 );
//                               }).toList(),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProfileCard extends StatelessWidget {
//   final String label;
//   final String value;
//   final Color cardColor;

//   const ProfileCard(
//       {required this.label,
//       required this.value,
//       required this.cardColor,
//       Key? key})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       color: cardColor,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               label,
//               style: const TextStyle(fontSize: 14, color: Colors.black54),
//             ),
//             const SizedBox(height: 4),
//             Text(
//               value,
//               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DummyPage extends StatelessWidget {
//   const DummyPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Dummy Page"),
//       ),
//       body: const Center(
//         child: Text("This is a dummy page"),
//       ),
//     );
//   }
// }

//test 3 pass

// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:flutter/material.dart';

// class ProfilePage extends StatefulWidget {
//   final String email;

//   const ProfilePage({required this.email, Key? key}) : super(key: key);

//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   String name = "Loading...";
//   String phone = "";
//   String currentlyAt = "Unknown"; // Default placeholder
//   bool isEditingCurrentlyAt = false;
//   TextEditingController currentlyAtController = TextEditingController();
//   List<String> interests = [];

//   final String apiUrl = "http://10.0.2.2:5000/get-user";
//   final String updateUrl = "http://10.0.2.2:5000/update-user";

//   @override
//   void initState() {
//     super.initState();
//     fetchUserData();
//   }

//   Future<void> fetchUserData() async {
//     try {
//       final response =
//           await http.get(Uri.parse('$apiUrl?email=${widget.email}'));

//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         setState(() {
//           name = data['name'];
//           phone = data['phone'];
//           currentlyAt =
//               data['currentlyAt'] ?? "Unknown"; // Check if currentlyAt exists
//           interests = List<String>.from(data['selectedItems']);
//         });
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Failed to fetch user data')),
//         );
//       }
//     } catch (e) {
//       print("Error: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Error connecting to the backend')),
//       );
//     }
//   }

//   Future<void> saveCurrentlyAt() async {
//     if (currentlyAtController.text.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Location cannot be empty')),
//       );
//       return;
//     }

//     try {
//       final response = await http.post(
//         Uri.parse(updateUrl),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode(
//             {'email': widget.email, 'currentlyAt': currentlyAtController.text}),
//       );

//       if (response.statusCode == 200) {
//         setState(() {
//           currentlyAt = currentlyAtController.text; // Update the local variable
//           isEditingCurrentlyAt = false; // Change button back to "Edit"
//         });
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Location saved successfully')),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Error: ${response.body}')),
//         );
//       }
//     } catch (e) {
//       print("Error: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Failed to save location')),
//       );
//     }
//   }

//   void navigateToDummyPage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => const DummyPage()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'Poppins', // Globally set Poppins font
//       ),
//       home: Scaffold(
//         body: Column(
//           children: [
//             // Top Profile Section
//             Container(
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Color(0xFF003399), Color(0xFF99CCFF)],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(40.0),
//                   bottomRight: Radius.circular(40.0),
//                 ),
//               ),
//               padding:
//                   const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       IconButton(
//                         icon: const Icon(Icons.grid_view,
//                             color: Colors.white, size: 28),
//                         onPressed: () {},
//                       ),
//                       GestureDetector(
//                         onTap: navigateToDummyPage,
//                         child: Container(
//                           width: 40,
//                           height: 40,
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                             shape: BoxShape.circle,
//                           ),
//                           child: const Icon(Icons.edit,
//                               color: Colors.black, size: 28),
//                         ),
//                       ),
//                     ],
//                   ),
//                   CircleAvatar(
//                     radius: 50,
//                     backgroundColor: Colors.white,
//                     child:
//                         const Icon(Icons.person, color: Colors.black, size: 50),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     name,
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   Text(
//                     currentlyAt,
//                     style: const TextStyle(color: Colors.white70, fontSize: 14),
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                 child: ListView(
//                   children: [
//                     ProfileCard(
//                       label: "Email",
//                       value: widget.email,
//                       cardColor: const Color(0xFFEBF1FD),
//                     ),
//                     const SizedBox(height: 16),
//                     ProfileCard(
//                       label: "Phone Number",
//                       value: phone,
//                       cardColor: const Color(0xFFEBF1FD),
//                     ),
//                     const SizedBox(height: 16),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: isEditingCurrentlyAt
//                               ? TextField(
//                                   controller: currentlyAtController,
//                                   decoration: InputDecoration(
//                                     hintText: "Enter your current location",
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10.0),
//                                     ),
//                                     filled: true,
//                                     fillColor: Colors.white,
//                                   ),
//                                 )
//                               : ProfileCard(
//                                   label: "You are currently at",
//                                   value: currentlyAt,
//                                   cardColor: const Color(0xFFEBF1FD),
//                                 ),
//                         ),
//                         const SizedBox(width: 10),
//                         ElevatedButton(
//                           onPressed: () {
//                             if (isEditingCurrentlyAt) {
//                               saveCurrentlyAt();
//                             } else {
//                               setState(() {
//                                 isEditingCurrentlyAt = true;
//                                 currentlyAtController.text = currentlyAt;
//                               });
//                             }
//                           },
//                           child: Text(isEditingCurrentlyAt ? "Save" : "Edit"),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 16),
//                     Card(
//                       color: const Color(0xFFEBF1FD),
//                       elevation: 2,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(16.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text(
//                               "Interests",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             Wrap(
//                               spacing: 10,
//                               runSpacing: 10,
//                               children: interests.map((interest) {
//                                 return Card(
//                                   color: Colors.white,
//                                   elevation: 2,
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         vertical: 8.0, horizontal: 12.0),
//                                     child: Text(
//                                       interest,
//                                       style: const TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.w500,
//                                         color: Colors.black87,
//                                       ),
//                                     ),
//                                   ),
//                                 );
//                               }).toList(),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProfileCard extends StatelessWidget {
//   final String label;
//   final String value;
//   final Color cardColor;

//   const ProfileCard(
//       {required this.label,
//       required this.value,
//       required this.cardColor,
//       Key? key})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       color: cardColor,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               label,
//               style: const TextStyle(fontSize: 14, color: Colors.black54),
//             ),
//             const SizedBox(height: 4),
//             Text(
//               value,
//               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DummyPage extends StatelessWidget {
//   const DummyPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Dummy Page"),
//       ),
//       body: const Center(
//         child: Text("This is a dummy page"),
//       ),
//     );
//   }
// }

//test 4
// import 'package:coderaiders/frontend/pages/homepage.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// import 'leaderboard.dart'; // Dummy leaderboard page
// import 'reminders.dart'; // CalendarApp (Reminders page)

// class ProfilePage extends StatefulWidget {
//   final String email;

//   const ProfilePage({required this.email, Key? key}) : super(key: key);

//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   String name = "Loading...";
//   String phone = "";
//   String currentlyAt = "Unknown";
//   bool isEditingCurrentlyAt = false;
//   TextEditingController currentlyAtController = TextEditingController();
//   List<String> interests = [];

//   final String apiUrl = "http://10.0.2.2:5000/get-user";
//   final String updateUrl = "http://10.0.2.2:5000/update-user";

//   int _currentIndex = 1; // Default selected tab is Profile.

//   @override
//   void initState() {
//     super.initState();
//     fetchUserData();
//   }

//   Future<void> fetchUserData() async {
//     try {
//       final response =
//           await http.get(Uri.parse('$apiUrl?email=${widget.email}'));

//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         setState(() {
//           name = data['name'];
//           phone = data['phone'];
//           currentlyAt = data['currentlyAt'] ?? "Unknown";
//           interests = List<String>.from(data['selectedItems']);
//         });
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Failed to fetch user data')),
//         );
//       }
//     } catch (e) {
//       print("Error: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Error connecting to the backend')),
//       );
//     }
//   }

//   Future<void> saveCurrentlyAt() async {
//     if (currentlyAtController.text.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Location cannot be empty')),
//       );
//       return;
//     }

//     try {
//       final response = await http.post(
//         Uri.parse(updateUrl),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode(
//             {'email': widget.email, 'currentlyAt': currentlyAtController.text}),
//       );

//       if (response.statusCode == 200) {
//         setState(() {
//           currentlyAt = currentlyAtController.text;
//           isEditingCurrentlyAt = false;
//         });
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Location saved successfully')),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Error: ${response.body}')),
//         );
//       }
//     } catch (e) {
//       print("Error: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Failed to save location')),
//       );
//     }
//   }

//   void _onNavigationTap(int index) {
//     if (_currentIndex == index) return; // Prevent unnecessary navigation

//     setState(() {
//       _currentIndex = index;
//     });

//     switch (index) {
//       case 0: // Reminders page
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => CalendarApp(email: widget.email),
//           ),
//         );
//         break;

//       case 1: // Home page
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => HomePage(email: widget.email), // Pass email
//           ),
//         );
//         break;

//       case 2: // Leaderboard page
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => const LeaderboardPage(),
//           ),
//         );
//         break;

//       default:
//         break;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'Poppins',
//       ),
//       home: Scaffold(
// appBar: AppBar(
//   backgroundColor: const Color(0xFF0A368D),
//   elevation: 0,
//   title: Padding(
//     padding: const EdgeInsets.only(
//         right: 40.0), // Adjust this value as needed
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: const [
//         Text(
//           "Profile",
//           style: TextStyle(
//             fontSize: 28,
//             color: Colors.white,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//       ],
//     ),
//   ),
//   leading: IconButton(
//     icon: const Icon(Icons.grid_view, color: Colors.white, size: 32),
//     onPressed: () {},
//   ),
//   actions: const [
//     SizedBox(
//       width: 32, // Adds padding for perfect alignment
//     ),
//   ],
// ),
//         body: Column(
//           children: [
//             Container(
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Color(0xFF003399), Color(0xFF99CCFF)],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(40.0),
//                   bottomRight: Radius.circular(40.0),
//                 ),
//               ),
//               padding:
//                   const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
//               child: Column(
//                 children: [
//                   CircleAvatar(
//                     radius: 50,
//                     backgroundColor: Colors.white,
//                     child:
//                         const Icon(Icons.person, color: Colors.black, size: 50),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     name,
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   Text(
//                     currentlyAt,
//                     style: const TextStyle(color: Colors.white70, fontSize: 14),
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                 child: ListView(
//                   children: [
//                     ProfileCard(
//                       label: "Email",
//                       value: widget.email,
//                       cardColor: const Color(0xFFEBF1FD),
//                     ),
//                     const SizedBox(height: 16),
//                     ProfileCard(
//                       label: "Phone Number",
//                       value: phone,
//                       cardColor: const Color(0xFFEBF1FD),
//                     ),
//                     const SizedBox(height: 16),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: isEditingCurrentlyAt
//                               ? TextField(
//                                   controller: currentlyAtController,
//                                   decoration: InputDecoration(
//                                     hintText: "Enter your current location",
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10.0),
//                                     ),
//                                     filled: true,
//                                     fillColor: Colors.white,
//                                   ),
//                                 )
//                               : ProfileCard(
//                                   label: "You are currently at",
//                                   value: currentlyAt,
//                                   cardColor: const Color(0xFFEBF1FD),
//                                 ),
//                         ),
//                         const SizedBox(width: 10),
//                         ElevatedButton(
//                           onPressed: () {
//                             if (isEditingCurrentlyAt) {
//                               saveCurrentlyAt();
//                             } else {
//                               setState(() {
//                                 isEditingCurrentlyAt = true;
//                                 currentlyAtController.text = currentlyAt;
//                               });
//                             }
//                           },
//                           child: Text(isEditingCurrentlyAt ? "Save" : "Edit"),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 16),
//                     Card(
//                       color: const Color(0xFFEBF1FD),
//                       elevation: 2,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(16.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text(
//                               "Interests",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             Wrap(
//                               spacing: 10,
//                               runSpacing: 10,
//                               children: interests.map((interest) {
//                                 return Card(
//                                   color: Colors.white,
//                                   elevation: 2,
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         vertical: 8.0, horizontal: 12.0),
//                                     child: Text(
//                                       interest,
//                                       style: const TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.w500,
//                                         color: Colors.black87,
//                                       ),
//                                     ),
//                                   ),
//                                 );
//                               }).toList(),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: const Color(0xFF0A368D), // Dark blue background
//           currentIndex: _currentIndex,
//           selectedItemColor: Colors.white, // White selected icon
//           unselectedItemColor: Colors.grey, // Grey unselected icon
//           onTap: _onNavigationTap,
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.alarm),
//               label: "Reminders",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home), // Home icon
//               label: "Home",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.leaderboard),
//               label: "Leaderboard",
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProfileCard extends StatelessWidget {
//   final String label;
//   final String value;
//   final Color cardColor;

//   const ProfileCard({
//     required this.label,
//     required this.value,
//     required this.cardColor,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       color: cardColor,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               label,
//               style: const TextStyle(fontSize: 14, color: Colors.black54),
//             ),
//             const SizedBox(height: 4),
//             Text(
//               value,
//               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//test 6
import 'package:coderaiders/frontend/pages/homepage.dart';
import 'package:coderaiders/frontend/pages/loginpg.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'leaderboard.dart'; // Dummy leaderboard page
import 'reminders.dart'; // CalendarApp (Reminders page)

class ProfilePage extends StatefulWidget {
  final String email;

  const ProfilePage({required this.email, Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? userName; // Holds the current user's name
  String phone = "";
  String currentlyAt = "Unknown";
  bool isEditingCurrentlyAt = false;
  TextEditingController currentlyAtController = TextEditingController();
  List<String> interests = [];

  final String apiUrl = "http://10.0.2.2:5000/get-user";
  final String updateUrl = "http://10.0.2.2:5000/update-user";

  int? _currentIndex; // Default: no tab selected.

  @override
  void initState() {
    super.initState();
    fetchUserData(); // Fetch user data on initialization
  }

  Future<void> fetchUserData() async {
    try {
      final response =
          await http.get(Uri.parse('$apiUrl?email=${widget.email}'));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          userName = data['name'];
          phone = data['phone'];
          currentlyAt = data['currentlyAt'] ?? "Unknown";
          interests = List<String>.from(data['selectedItems']);
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to fetch user data')),
        );
      }
    } catch (e) {
      print("Error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Error connecting to the backend')),
      );
    }
  }

  Future<void> saveCurrentlyAt() async {
    if (currentlyAtController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Location cannot be empty')),
      );
      return;
    }

    try {
      final response = await http.post(
        Uri.parse(updateUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(
            {'email': widget.email, 'currentlyAt': currentlyAtController.text}),
      );

      if (response.statusCode == 200) {
        setState(() {
          currentlyAt = currentlyAtController.text;
          isEditingCurrentlyAt = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Location saved successfully')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${response.body}')),
        );
      }
    } catch (e) {
      print("Error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to save location')),
      );
    }
  }

  void _onNavigationTap(int index) {
    setState(() {
      _currentIndex = index; // Update selected index
    });

    switch (index) {
      case 0: // Reminders page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => CalendarApp(email: widget.email),
          ),
        );
        break;

      case 1: // Home page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(email: widget.email), // Pass email
          ),
        );
        break;

      case 2: // Leaderboard page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LeaderboardPage(),
          ),
        );
        break;

      default:
        break;
    }
  }

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

                    // User details
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
                      width: double.infinity,
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
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                          (route) => false, // Remove all previous routes
                        );
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF0A368D),
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(
                right: 40.0), // Adjust this value as needed
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.grid_view, color: Colors.white, size: 32),
            onPressed: () {
              _showSidebar(context);
            },
          ),
          actions: const [
            SizedBox(
              width: 32, // Adds padding for perfect alignment
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF003399), Color(0xFF99CCFF)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
              padding:
                  const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child:
                        const Icon(Icons.person, color: Colors.black, size: 50),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    userName ?? "Loading...",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    currentlyAt,
                    style: const TextStyle(color: Colors.white70, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  children: [
                    ProfileCard(
                      label: "Email",
                      value: widget.email,
                      cardColor: const Color(0xFFEBF1FD),
                    ),
                    const SizedBox(height: 16),
                    ProfileCard(
                      label: "Phone Number",
                      value: phone,
                      cardColor: const Color(0xFFEBF1FD),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: isEditingCurrentlyAt
                              ? TextField(
                                  controller: currentlyAtController,
                                  decoration: InputDecoration(
                                    hintText: "Enter your current location",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                )
                              : ProfileCard(
                                  label: "You are currently at",
                                  value: currentlyAt,
                                  cardColor: const Color(0xFFEBF1FD),
                                ),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            if (isEditingCurrentlyAt) {
                              saveCurrentlyAt();
                            } else {
                              setState(() {
                                isEditingCurrentlyAt = true;
                                currentlyAtController.text = currentlyAt;
                              });
                            }
                          },
                          child: Text(isEditingCurrentlyAt ? "Save" : "Edit"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Card(
                      color: const Color(0xFFEBF1FD),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Interests",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: interests.map((interest) {
                                return Card(
                                  color: Colors.white,
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 12.0),
                                    child: Text(
                                      interest,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF0A368D), // Dark blue background
          currentIndex:
              _currentIndex ?? 1, // Default to 0 if _currentIndex is null
          selectedItemColor: Colors.white, // White selected icon
          unselectedItemColor: Colors.grey, // Grey unselected icon
          onTap: (index) {
            setState(() {
              _currentIndex = index; // Update the selected tab
            });
            _onNavigationTap(index); // Navigate to the corresponding page
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
              label: "Reminders",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home), // Home icon
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard),
              label: "Leaderboard",
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String label;
  final String value;
  final Color cardColor;

  const ProfileCard({
    required this.label,
    required this.value,
    required this.cardColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
