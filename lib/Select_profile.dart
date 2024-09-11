import 'package:flutter/material.dart';
import 'package:liveasy/Welcome.dart';

class ProfileSelectionScreen extends StatefulWidget {
  @override
  _ProfileSelectionScreenState createState() => _ProfileSelectionScreenState();
}

class _ProfileSelectionScreenState extends State<ProfileSelectionScreen> {
  String? _selectedProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Please select your profile",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 32),
            _buildProfileOption(
              icon: Icons.warehouse,
              title: "Shipper",
              description:
                  "Lorem ipsum dolor sit amet,\nconsectetur adipiscing",
              value: "shipper",
            ),
            SizedBox(height: 16),
            _buildProfileOption(
              icon: Icons.local_shipping,
              title: "Transporter",
              description:
                  "Lorem ipsum dolor sit amet,\nconsectetur adipiscing",
              value: "transporter",
            ),
            SizedBox(height: 32),
            InkWell(
              onTap: () {
                if (_selectedProfile != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Welcome(),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Please select a profile")),
                  );
                }
              },
              child: Container(
                height: 50,
                width: 370,
                decoration: BoxDecoration(
                  color: Color(0xff2E3B62),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    "CONTINUE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileOption({
    required IconData icon,
    required String title,
    required String description,
    required String value,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedProfile = value;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(
            color:
                _selectedProfile == value ? Colors.black : Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Radio<String>(
              value: value,
              groupValue: _selectedProfile,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedProfile = newValue;
                });
              },
              activeColor: Colors.black,
            ),
            SizedBox(width: 16),
            Icon(
              icon,
              size: 45,
              color: Colors.black54,
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
