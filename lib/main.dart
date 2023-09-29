import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'App UI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      children: [
        Stack(
          children: [
            Positioned(
                child: Container(
              height: 450,
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                      child: Container(
                    color: Colors.deepPurple,
                    height: 400,
                        child: Image.asset('assets/images/manali_image.jpg'),
                  )),
                  const Positioned(
                    bottom: 0,
                    right: 25,
                    child: SizedBox(
                      height: 78,
                      width: 78,
                      child: CircleAvatar(
                        backgroundColor: Colors.black38,
                        child: SizedBox(
                          height: 75,
                          width: 75,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text('ITS', style: TextStyle(fontSize: 35, color: Colors.indigo),),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
          ],
        ),
        Container(
          color: Colors.white,
          child: const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Trip to Manali by ITS',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Business park, Indore, MP',
                  style: TextStyle(fontStyle: FontStyle.italic , color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text('20', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),),
                        SizedBox(width: 5,),
                        Icon(Icons.favorite_border)
                      ],
                    ),
                    Row(
                      children: [
                        Text('34', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),),
                        SizedBox(width: 5,),
                        Icon(Icons.ios_share_sharp),
                      ],
                    ),
                    Row(
                      children: [
                        Text('87', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),),
                        SizedBox(width: 5,),
                        Icon(Icons.messenger_outline)
                      ],
                    ),
                    Row(
                      children: [
                        Text('295', style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 17),),
                        SizedBox(width: 5,),
                        Icon(Icons.emoji_emotions_outlined)
                      ],
                    )
                  ],
                ),

                SizedBox(height: 30,),

                Text('“A journey is best measured in friends, not in miles,” by Tim Cahill reminds us that experiences and connections matter more than distances traveled.Another stirring quote is “Life is short and the world is wide,” attributed to Simon Raven, emphasizing our limited time to explore a vast world.  “The world is a book, and those who do not travel read only one page,” , “The world is a book, and those who do not travel read only one page,”'
                    , style: TextStyle(fontSize: 16 ),
                )

              ],
            ),
          ),
        ),
      ],
    )));
  }

}

