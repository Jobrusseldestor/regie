import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Regie's Application"),
          backgroundColor: Colors.deepOrangeAccent,

        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Container(
                padding: EdgeInsets.all(16.0), alignment: Alignment.center, 
                child: Row (
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('assets/img/regie.jpg'),
                    ),
                    SizedBox(width: 16.0),
                    Text(
                      'Regie Gallena',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.orange,),
              SizedBox(height: 16.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSection('Email', 'Regiegallena@gmail.com', Icons.email),
                    _buildSection('Contact', '09123536312', Icons.contact_mail),
                    _buildSection('Hobbies', 'Basketball, Soccer', Icons.favorite),
                    _buildSection('Skills', 'Programming, Front-end developing',Icons.bookmark),
                    _buildSection('Course', 'BS Computer Science',Icons.school),
                  ],
                ),
                
              ),
              Divider(color: Colors.orange,),
              SizedBox(height: 16.0),
              Container(
                margin: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'My Biography',  textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      """My name is Regie Gallena, a third year BSCS student in West Visayas University.
                       In my free time, I enjoy coding which help me relax and recharge. believe that maintaining a healthy work-life balance is crucial for overall well-being. 
                       Looking ahead, I am excited about the opportunities and challenges that lie ahead in my academic journey. 
                       I am determined to continue working hard, setting goals, and pursuing my dreams. """,
                      style: TextStyle(fontSize: 16.0), textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String label, String data, IconData icon) {
    return Container(
      
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(Icons.info,),
          SizedBox(width: 8.0),
          Text(
            label,
            style: TextStyle(fontSize: 16.0),
          ),
          Spacer(),
          Text(
            data,
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
  }
