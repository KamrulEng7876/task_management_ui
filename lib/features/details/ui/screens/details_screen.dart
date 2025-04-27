import 'package:flutter/material.dart';
import '../../../home/model/cart_model.dart';

class DetailsScreen extends StatelessWidget {
  final Place place;

  const DetailsScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3FDF7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF3FDF7),
        // leading: IconButton(
        //   onPressed: () => Navigator.pop(context),
        //   icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        // ),
        title: Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: Row(
            children: [
              // IconButton(
              //   onPressed: () => Navigator.pop(context),
              //   icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
              // ),
              const Icon(Icons.home, color: Colors.green, size: 30),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  place.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0, top: 10),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(
                child: Text(
                  place.status,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
          ),
        ],
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPlaceCard(
              title: place.title,
              status: place.status,
              value: place.value,
              percentage: place.percentage,
              peopleCount: place.peopleCount,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'History',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Spacer(),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text('See all', style: TextStyle(color: Colors.grey)),
                          Icon(Icons.arrow_right, color: Colors.grey),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            _buildRowContainer(),
            SizedBox(height: 16),

            _buildPlantCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildPlantCard() {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              _buildplantImage(),

              Spacer(),
              Column(
                children: [
                  SizedBox(
                    height: 120,
                    width: 164,
                    child: Container(
                      // padding: const EdgeInsets.symmetric(
                      //   horizontal: 40,
                      //   vertical: 28,
                      // ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          '43',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 74,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildplantImage() {
    return Column(
      children: [
        SizedBox(height: 16),
        Text(
          'Plants',
          style: const TextStyle(
            color: Colors.green,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 12),
        Image(
          image: AssetImage('assets/images/logo_icon.png'),
          width: 46,
          height: 46,
        ),
      ],
    );
  }

  Widget _buildRowContainer() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 120,
            width: 80,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildPersonCard(),
              ),
            ),
          ),
        ),
        SizedBox(width: 26),
        Expanded(
          child: SizedBox(
            height: 120,
            width: 80,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.lightGreenAccent.withOpacity(0.05),
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildRoomCard(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRoomCard() {
    return Column(
      children: [
        Text(
          'Rooms',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          '5',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                '2 of them requires action',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPersonCard() {
    return Column(
      children: [
        Text(
          'Person',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 18),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage('assets/images/image.png'),
            ),
            const CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage('assets/images/image.png'),
            ),
            CircleAvatar(
              radius: 16,
              child: Text(
                place.peopleCount,
                style: const TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPlaceCard({
    required String title,
    required String status,
    required String value,
    required String percentage,
    required String peopleCount,
  }) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(0.05),
        //     blurRadius: 5,
        //     offset: const Offset(0, 3),
        //   ),
        // ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 28),
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
                          const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                          Text(
                            percentage,
                            style: const TextStyle(
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
                _imageCircleAvatar(peopleCount),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _imageCircleAvatar(String peopleCount) {
    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage('assets/images/image.png'),
            ),
            const CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage('assets/images/image.png'),
            ),
            CircleAvatar(
              radius: 16,
              child: Text(peopleCount, style: const TextStyle(fontSize: 10)),
            ),
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
    );
  }
}
