import 'package:flutter/material.dart';
import 'userDataModel.dart';
import 'userDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  static List<String>UserName=['Afsana Akter','Rony Hossain','Afzal Bari','Raisul Islam','Nasima Begum'];
  static List ImgUrl =['https://cdn1.vectorstock.com/i/1000x1000/87/40/woman-female-girl-head-person-icon-graphic-vector-10248740.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgBhcplevwUKGRs1P-Ps8Mwf2wOwnW_R_JIA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgBhcplevwUKGRs1P-Ps8Mwf2wOwnW_R_JIA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgBhcplevwUKGRs1P-Ps8Mwf2wOwnW_R_JIA&usqp=CAU',
    'https://cdn1.vectorstock.com/i/1000x1000/87/40/woman-female-girl-head-person-icon-graphic-vector-10248740.jpg'];
  static List<String>UserEmail =['afsanaakter567@gmail.com','ronyhossain000@gmail.com','afzalbari777@gmail.com','raisulislam2020@gmail.com',
  'nasimabegum778@gmail.com'];
  static List<String>UserContact = ['10929203012','09993773622','982365367299','9823724763232','09349832498632'];
  List<UserDataModel> UserData=List.generate(
      UserName.length,
          (index) =>UserDataModel('${UserName[index]}','${UserEmail[index]}', '${UserContact[index]}', '${ImgUrl[index]}')
  );

  MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users info'),
      ),
      body: ListView.builder(
        itemCount: UserData.length,
          itemBuilder: (context,index){
          return Card(
            child: ListTile(
              title: Text(UserData[index].name,style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600
              ),),
              leading: SizedBox(
                width: 120,
                height: 70,
                child: Image.network(UserData[index].image,  fit: BoxFit.contain,),
              ),
              subtitle: Text(UserData[index].email),
              onTap: (){
                Navigator.push( context, MaterialPageRoute(builder: (context)=>UserDetails(userDataModel: UserData[index],)));
              },
            ),
          );
          }),
    );
  }

}
