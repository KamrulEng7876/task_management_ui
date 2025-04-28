import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/card_model.dart';
import '../../widgets/office_item_list.dart';

class OfficeListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cardModel = Provider.of<CardModel>(context);

    return Scaffold(
      appBar: AppBar(
        // actions: [
        //   IconButton(
        //     onPressed: () => Navigator.pop(context),
        //     icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        //   ),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset('assets/images/icon.png'),
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Office',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          height: 2,
                          width: 80,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Expanded(child: ItemList(cardModel: cardModel)),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: _buildTextButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextButton() {
    return ElevatedButton(
      onPressed: () {
        // Get.to(() => HomeScreen());
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: const Text(
        "Calculate Carbon Emission",
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
