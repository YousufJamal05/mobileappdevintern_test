import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 20,right: 20),
        child: ListView(
          children: [
            SizedBox(height: screenHeight * 0.04,),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color.fromRGBO(1, 59, 83, 1.0), width: 2),
                  ),
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.check, color: Color.fromRGBO(1, 59, 83, 1.0), size: 16),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 5,
                    color: Color.fromRGBO(1, 59, 83, 1.0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color.fromRGBO(1, 59, 83, 1.0), width: 2),
                  ),
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.check, color: Color.fromRGBO(1, 59, 83, 1.0), size: 16,),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 5,
                    color: Color.fromRGBO(1, 59, 83, 1.0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.blue,
                    child: Center(
                      child: Text(
                        '3',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 12),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 5,
                    color: Color.fromRGBO(1, 59, 83, 1.0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color.fromRGBO(1, 59, 83, 1.0), width: 2),
                  ),
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                    child: Text(
                      '4',
                      style: TextStyle(color: Color.fromRGBO(1, 59, 83, 1.0), fontWeight: FontWeight.bold,fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.06,),
            Text(
              'Perfect Store Scorecard',
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: screenHeight * 0.02,),
            TextField(
                style: TextStyle(color: Colors.white,fontSize:15,fontFamily: 'Poppins',),
                controller: null,
                decoration: InputDecoration(
                    labelText: 'Planogram Compliance',
                    labelStyle: TextStyle(color: Colors.grey,fontSize: 14,fontFamily: 'Poppins',),
                    suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: '90% Complaint',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    // contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.grey,)
                    )
                )
            ),
            Padding(
              padding: EdgeInsets.only(top: 16,),
              child: TextField(
                 style: TextStyle(color: Colors.white,fontSize:15,fontFamily: 'Poppins',),
                 controller: null,
                  decoration: InputDecoration(
                 labelText: 'Planogram Feedback',
                 floatingLabelBehavior: FloatingLabelBehavior.always,
                 labelStyle: TextStyle(color: Colors.grey,fontSize: 20,fontFamily: 'Poppins',),
                 focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.grey),
                 ),
                 contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 35),
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.grey,)
                  )
              )
             ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:16.0),
              child: DottedBorder(
                color: Colors.grey.shade400,
                borderType: BorderType.RRect,
                radius: Radius.circular(8),
                dashPattern: [6, 3],
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.image, size: 32, color: Colors.grey),
                      SizedBox(height: 8),
                      Text(
                        'Select Image',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16,left: 8),
              child: Center(
                child: Text(
                  'If you selected less than 100%, please share feedback of what you saw in the form of text or a photo',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Poppins',
                    fontSize: 12,
                  ),
                ),
              ),
            )
         ],
        ),
      ),
    );
  }
}
