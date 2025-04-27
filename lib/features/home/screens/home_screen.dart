// import 'package:flutter/material.dart';
// import '../model/cart_model.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   // List of places
//   List<Place> places = [
//     Place(
//       title: 'Home',
//       status: 'Good',
//       value: '652',
//       percentage: '13%',
//       peopleCount: '+2',
//     ),
//     Place(
//       title: 'Office',
//       status: 'Healthy',
//       value: '447',
//       percentage: '37%',
//       peopleCount: '+47',
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         backgroundColor: Colors.green,
//         child: const Icon(Icons.add),
//       ),
//       backgroundColor: const Color(0xFFF3FDF7),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _buildTopSection(),
//           const SizedBox(height: 22),
//           Padding(
//             padding: const EdgeInsets.all(24.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 _buildTitle('My Places'),
//                 const SizedBox(height: 16),
//                 // Dynamically generate place cards from the list of places
//                 ...places
//                     .map(
//                       (place) => Padding(
//                     padding: const EdgeInsets.only(bottom: 20),
//                     child: _buildPlaceCard(
//                       title: place.title,
//                       status: place.status,
//                       value: place.value,
//                       percentage: place.percentage,
//                       peopleCount: place.peopleCount,
//                     ),
//                   ),
//                 )
//
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // Top section widget
//   Widget _buildTopSection() {
//     return Container(
//       height: 220,
//       margin: const EdgeInsets.only(top: 5),
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       decoration: BoxDecoration(
//         borderRadius: const BorderRadius.vertical(bottom: Radius.circular(50)),
//         color: Colors.grey.shade200,
//       ),
//       child: SafeArea(
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Expanded(child: _buildUserInfo()),
//             const SizedBox(width: 20),
//             const CircleAvatar(
//               radius: 45,
//               backgroundImage: AssetImage('assets/images/image.png'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // User info widget
//   Widget _buildUserInfo() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const Text(
//           'Good Morning',
//           style: TextStyle(
//             color: Colors.grey,
//             fontSize: 16,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//         const SizedBox(height: 6),
//         const Text(
//           'Kamrul Hasan',
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: 20),
//         Text.rich(
//           TextSpan(
//             text: 'You are in a ',
//             style: const TextStyle(color: Colors.grey, fontSize: 16),
//             children: [
//               TextSpan(
//                 text: 'healthy',
//                 style: TextStyle(
//                   color: Colors.green.shade800,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const TextSpan(
//                 text: ' environment',
//                 style: TextStyle(color: Colors.grey, fontSize: 16),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
//   // Title widget
//   Widget _buildTitle(String title) {
//     return Text(
//       title,
//       style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
//     );
//   }
//
//   // Place card widget
//   Widget _buildPlaceCard({
//     required String title,
//     required String status,
//     required String value,
//     required String percentage,
//     required String peopleCount,
//   }) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 5,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const Spacer(),
//                 Container(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 12,
//                     vertical: 4,
//                   ),
//                   decoration: BoxDecoration(
//                     color: Colors.green,
//                     borderRadius: BorderRadius.circular(14),
//                   ),
//                   child: Text(
//                     status,
//                     style: const TextStyle(color: Colors.white, fontSize: 18),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             Row(
//               children: [
//                 Column(
//                   children: [
//                     Text(
//                       value,
//                       style: const TextStyle(color: Colors.green, fontSize: 48),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 8),
//                 Column(
//                   children: [
//                     Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 12,
//                         vertical: 4,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.green,
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Row(
//                         children: [
//                           Icon(Icons.arrow_drop_down, color: Colors.white),
//                           Text(
//                             percentage,
//                             // Not dynamic for simplicity, you can modify.
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const Text(
//                       'ppm',
//                       style: TextStyle(color: Colors.green, fontSize: 16),
//                     ),
//                   ],
//                 ),
//                 const Spacer(),
//                 Column(
//                   children: [
//                     Row(
//                       children: [
//                         CircleAvatar(
//                           radius: 16,
//                           backgroundImage: AssetImage(
//                             'assets/images/image.png',
//                           ),
//                         ),
//                         CircleAvatar(
//                           radius: 16,
//                           backgroundImage: AssetImage(
//                             'assets/images/image.png',
//                           ),
//                         ),
//                         CircleAvatar(
//                           radius: 16,
//                           child: Text(
//                             peopleCount,
//                           ), // Not dynamic for simplicity
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 8),
//                     Row(
//                       children: [
//                         _buildTextButton(),
//                         Icon(Icons.arrow_right, color: Colors.green),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTextButton() {
//     return TextButton(
//       onPressed: () {
//
//
//
//
//       },
//       child: Text(
//         "View Details",
//         style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../../details/ui/screens/details_screen.dart';
import '../model/cart_model.dart';

class HomeScreen extends StatelessWidget {
  final List<Place> places = [
    Place(
      title: 'Home',
      status: 'Good',
      value: '652',
      percentage: '13%',
      peopleCount: '+2',
    ),
    Place(
      title: 'Office',
      status: 'Healthy',
      value: '447',
      percentage: '37%',
      peopleCount: '+47',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),

      backgroundColor: const Color(0xFFF3FDF7),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTopSection(),
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Dynamically generate the cards
                _buildTitle('My Places'),
                const SizedBox(height: 16),
                ...places
                    .map(
                      (place) => Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: GestureDetector(
                          onTap: () {
                            // Navigate to the Details screen with the selected Place
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) => DetailsScreen(place: place),
                              ),
                            );
                          },
                          child: _buildPlaceCard(
                            title: place.title,
                            status: place.status,
                            value: place.value,
                            percentage: place.percentage,
                            peopleCount: place.peopleCount,
                          ),
                        ),
                      ),
                    )
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Place card widget
  Widget _buildPlaceCard({
    required String title,
    required String status,
    required String value,
    required String percentage,
    required String peopleCount,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Text(
                    status,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      value,
                      style: const TextStyle(color: Colors.green, fontSize: 48),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_drop_down, color: Colors.white),
                          Text(
                            percentage,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'ppm',
                      style: TextStyle(color: Colors.green, fontSize: 16),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundImage: AssetImage(
                            'assets/images/image.png',
                          ),
                        ),
                        CircleAvatar(
                          radius: 16,
                          backgroundImage: AssetImage(
                            'assets/images/image.png',
                          ),
                        ),
                        CircleAvatar(radius: 16, child: Text(peopleCount)),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: const [
                        Text(
                          "View Details",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(Icons.arrow_right, color: Colors.green),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopSection() {
    return Container(
      height: 220,
      margin: const EdgeInsets.only(top: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(50)),
        color: Colors.grey.shade200,
      ),
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: _buildUserInfo()),
            const SizedBox(width: 20),
            const CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage('assets/images/image.png'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Good Morning',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 6),
        const Text(
          'Kamrul Hasan',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Text.rich(
          TextSpan(
            text: 'You are in a ',
            style: const TextStyle(color: Colors.grey, fontSize: 16),
            children: [
              TextSpan(
                text: 'healthy',
                style: TextStyle(
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const TextSpan(
                text: ' environment',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Title widget
  Widget _buildTitle(String title) {
    return Text(
      title,
      style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
    );
  }
}
