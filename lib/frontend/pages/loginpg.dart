// import 'package:coderaiders/frontend/pages/profile.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'signinpage.dart';

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   bool _isPasswordVisible = false;

//   final String apiUrl = "http://10.0.2.2:5000/login"; // Ensure this is correct

//   Future<void> _handleLogin() async {
//     String email = _emailController.text.trim();
//     String password = _passwordController.text.trim();

//     if (email.isEmpty || password.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please fill in all fields')),
//       );
//       return;
//     }

//     try {
//       final response = await http.post(
//         Uri.parse(apiUrl),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({'email': email, 'password': password}),
//       );

//       if (response.statusCode == 200) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Login Successful!')),
//         );

//         // Navigate to Profile Page, passing the email to fetch user data
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ProfilePage(email: email),
//           ),
//         );
//       } else if (response.statusCode == 401) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Invalid credentials!')),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Error: ${response.body}')),
//         );
//       }
//     } catch (e) {
//       print('Error: $e');
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error connecting to backend')),
//       );
//     }
//   }

//   void _navigateToSignUp() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => SignInPage()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       body: Container(
//         height: screenHeight,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFF003399), Color(0xFF99CCFF)],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: SafeArea(
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Evalora",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 38,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Poppins', // Added font
//                     ),
//                   ),
//                   SizedBox(height: screenHeight * 0.03),
//                   Center(
//                     child: Column(
//                       children: [
//                         Image.asset('assets/loginpg.png',
//                             height: screenHeight * 0.3),
//                         SizedBox(height: screenHeight * 0.02),
//                         Text(
//                           "Log in to continue\nAnd upskill your journey",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             fontFamily: 'Poppins', // Added font
//                           ),
//                         ),
//                         SizedBox(height: screenHeight * 0.04),
//                         _buildTextField(
//                           controller: _emailController,
//                           hintText: "Enter Your Email",
//                           obscureText: false,
//                         ),
//                         SizedBox(height: screenHeight * 0.02),
//                         _buildTextField(
//                           controller: _passwordController,
//                           hintText: "Password",
//                           obscureText: !_isPasswordVisible,
//                           suffixIcon: IconButton(
//                             icon: Icon(
//                               _isPasswordVisible
//                                   ? Icons.visibility
//                                   : Icons.visibility_off,
//                             ),
//                             onPressed: () {
//                               setState(() {
//                                 _isPasswordVisible = !_isPasswordVisible;
//                               });
//                             },
//                           ),
//                         ),
//                         SizedBox(height: screenHeight * 0.03),
//                         ElevatedButton(
//                           onPressed: _handleLogin,
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             foregroundColor: Color(0xFF4A90E2),
//                             minimumSize: Size(double.infinity, 50),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(22),
//                             ),
//                           ),
//                           child: Text(
//                             "Login",
//                             style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                                 fontFamily: 'Poppins'), // Added font
//                           ),
//                         ),
//                         SizedBox(height: screenHeight * 0.02),
//                         GestureDetector(
//                           onTap: _navigateToSignUp,
//                           child: Text(
//                             "Don’t have an account? Sign in",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                               decoration: TextDecoration.underline,
//                               fontFamily: 'Poppins', // Added font
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: screenHeight * 0.02),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField({
//     required TextEditingController controller,
//     required String hintText,
//     bool obscureText = false,
//     Widget? suffixIcon,
//   }) {
//     return TextField(
//       controller: controller,
//       obscureText: obscureText,
//       decoration: InputDecoration(
//         filled: true,
//         fillColor: Colors.white,
//         hintText: hintText,
//         hintStyle: TextStyle(fontFamily: 'Poppins'), // Added font
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(22),
//           borderSide: BorderSide.none,
//         ),
//         suffixIcon: suffixIcon,
//       ),
//       style: TextStyle(fontFamily: 'Poppins'), // Added font
//     );
//   }
// }

// test

// import 'package:coderaiders/frontend/pages/profile.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'signinpage.dart';

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   bool _isPasswordVisible = false;

//   final String apiUrl = "http://10.0.2.2:5000/login"; // Ensure this is correct

//   Future<void> _handleLogin() async {
//     String email = _emailController.text.trim();
//     String password = _passwordController.text.trim();

//     if (email.isEmpty || password.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please fill in all fields')),
//       );
//       return;
//     }

//     try {
//       final response = await http.post(
//         Uri.parse(apiUrl),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({'email': email, 'password': password}),
//       );

//       if (response.statusCode == 200) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Login Successful!')),
//         );

//         // Navigate to Profile Page, passing the email to fetch user data
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ProfilePage(email: email),
//           ),
//         );
//       } else if (response.statusCode == 401) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Invalid credentials!')),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Error: ${response.body}')),
//         );
//       }
//     } catch (e) {
//       print('Error: $e');
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error connecting to backend')),
//       );
//     }
//   }

//   void _navigateToSignUp() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => SignInPage()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       body: Container(
//         height: screenHeight,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFF003399), Color(0xFF99CCFF)],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: SafeArea(
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Evalora",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 38,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Poppins', // Added font
//                     ),
//                   ),
//                   SizedBox(height: screenHeight * 0.03),
//                   Center(
//                     child: Column(
//                       children: [
//                         Image.asset('assets/loginpg.png',
//                             height: screenHeight * 0.3),
//                         SizedBox(height: screenHeight * 0.02),
//                         Text(
//                           "Log in to continue\nAnd upskill your journey",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             fontFamily: 'Poppins', // Added font
//                           ),
//                         ),
//                         SizedBox(height: screenHeight * 0.04),
//                         _buildTextField(
//                           controller: _emailController,
//                           hintText: "Enter Your Email",
//                           obscureText: false,
//                         ),
//                         SizedBox(height: screenHeight * 0.02),
//                         _buildTextField(
//                           controller: _passwordController,
//                           hintText: "Password",
//                           obscureText: !_isPasswordVisible,
//                           suffixIcon: IconButton(
//                             icon: Icon(
//                               _isPasswordVisible
//                                   ? Icons.visibility
//                                   : Icons.visibility_off,
//                             ),
//                             onPressed: () {
//                               setState(() {
//                                 _isPasswordVisible = !_isPasswordVisible;
//                               });
//                             },
//                           ),
//                         ),
//                         SizedBox(height: screenHeight * 0.03),
//                         ElevatedButton(
//                           onPressed: _handleLogin,
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             foregroundColor: Color(0xFF4A90E2),
//                             minimumSize: Size(double.infinity, 50),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(22),
//                             ),
//                           ),
//                           child: Text(
//                             "Login",
//                             style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                                 fontFamily: 'Poppins'), // Added font
//                           ),
//                         ),
//                         SizedBox(height: screenHeight * 0.02),
//                         GestureDetector(
//                           onTap: _navigateToSignUp,
//                           child: Text(
//                             "Don’t have an account? Sign in",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                               decoration: TextDecoration.underline,
//                               fontFamily: 'Poppins', // Added font
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: screenHeight * 0.02),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField({
//     required TextEditingController controller,
//     required String hintText,
//     bool obscureText = false,
//     Widget? suffixIcon,
//   }) {
//     return TextField(
//       controller: controller,
//       obscureText: obscureText,
//       decoration: InputDecoration(
//         filled: true,
//         fillColor: Colors.white,
//         hintText: hintText,
//         hintStyle: TextStyle(fontFamily: 'Poppins'), // Added font
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(22),
//           borderSide: BorderSide.none,
//         ),
//         suffixIcon: suffixIcon,
//       ),
//       style: TextStyle(fontFamily: 'Poppins'), // Added font
//     );
//   }
// }

//test 3 pass works
import 'package:coderaiders/frontend/pages/signinpage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'homepage.dart'; // Import the HomePage

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  final String apiUrl = "http://10.0.2.2:5000/login"; // Ensure this is correct

  Future<void> _handleLogin() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill in all fields')),
      );
      return;
    }

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password}),
      );

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login Successful!')),
        );

        // Navigate to HomePage, passing the email
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(email: email),
          ),
        );
      } else if (response.statusCode == 401) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Invalid credentials!')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${response.body}')),
        );
      }
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error connecting to backend')),
      );
    }
  }

  void _navigateToSignUp() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignInPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: screenHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF003399), Color(0xFF99CCFF)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Evalora",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/loginpg.png',
                            height: screenHeight * 0.3),
                        SizedBox(height: screenHeight * 0.02),
                        Text(
                          "Log in to continue\nAnd upskill your journey",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.04),
                        _buildTextField(
                          controller: _emailController,
                          hintText: "Enter Your Email",
                          obscureText: false,
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        _buildTextField(
                          controller: _passwordController,
                          hintText: "Password",
                          obscureText: !_isPasswordVisible,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        ElevatedButton(
                          onPressed: _handleLogin,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Color(0xFF4A90E2),
                            minimumSize: Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        GestureDetector(
                          onTap: _navigateToSignUp,
                          child: Text(
                            "Don’t have an account? Sign in",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              decoration: TextDecoration.underline,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    bool obscureText = false,
    Widget? suffixIcon,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: TextStyle(fontFamily: 'Poppins'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: BorderSide.none,
        ),
        suffixIcon: suffixIcon,
      ),
      style: TextStyle(fontFamily: 'Poppins'),
    );
  }
}
