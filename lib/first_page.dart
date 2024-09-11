import 'package:flutter/material.dart';
import 'package:liveasy/MobileNum.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.image_outlined,
              size: 60,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Please select your Language',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'You can change the language',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'at any time',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 55,
              width: 230,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'English',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_drop_down_sharp,
                          color: Colors.grey,
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MobileNumberScreen(),
                    ));
              },
              child: Container(
                height: 50,
                width: 230,
                decoration: BoxDecoration(color: Color(0xff2E3B62)),
                child: Center(
                    child: Text(
                  'NEXT',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Vector.png'), fit: BoxFit.cover)),
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image: AssetImage('assets/black.png'),
                  fit: BoxFit.cover,
                )),
          ),
        ],
      ),
    );
  }
}
