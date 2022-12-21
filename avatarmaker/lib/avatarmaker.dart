library avatarmaker;
import 'package:flutter/material.dart';
/// A Calculator.

class BitEmoji extends StatefulWidget {
  const BitEmoji({Key? key}) : super(key: key);

  @override
  State<BitEmoji> createState() => _BitEmojiState();
}

class _BitEmojiState extends State<BitEmoji> {
  var Listnose = [
    '.pub-cache/git/avatarmaker-a5a9e93c55532e6de558e5680dc272a37a4090a0/avatarmaker/bitmoji/mouth_one.png',
    '.pub-cache/git/avatarmaker-a5a9e93c55532e6de558e5680dc272a37a4090a0/avatarmaker/bitmoji/mouth_three.png',
    '.pub-cache/git/avatarmaker-a5a9e93c55532e6de558e5680dc272a37a4090a0/avatarmaker/bitmojimouth_two.png',
  ];
  var Listeyes = [
    '.pub-cache/git/avatarmaker-a5a9e93c55532e6de558e5680dc272a37a4090a0/avatarmaker/bitmojieyes.png',
    '.pub-cache/git/avatarmaker-a5a9e93c55532e6de558e5680dc272a37a4090a0/avatarmaker/bitmoji/eyes_one.png',
    '.pub-cache/git/avatarmaker-a5a9e93c55532e6de558e5680dc272a37a4090a0/avatarmaker/bitmoji/eyes_two.png',



  ];
  var ListHair = [
    '.pub-cache/git/avatarmaker-a5a9e93c55532e6de558e5680dc272a37a4090a0/avatarmaker/bitmoji/hairs.png',
    '.pub-cache/git/avatarmaker-a5a9e93c55532e6de558e5680dc272a37a4090a0/avatarmaker/bitmoji/hair_two.png',
    '.pub-cache/git/avatarmaker-a5a9e93c55532e6de558e5680dc272a37a4090a0/avatarmaker/bitmoji/hair_three.png',
    '.pub-cache/git/avatarmaker-a5a9e93c55532e6de558e5680dc272a37a4090a0/avatarmaker/bitmoji/hair_one.png',
    '.pub-cache/git/avatarmaker-a5a9e93c55532e6de558e5680dc272a37a4090a0/avatarmaker/bitmoji/hair_four.png',
    '.pub-cache/git/avatarmaker-a5a9e93c55532e6de558e5680dc272a37a4090a0/avatarmaker/bitmoji/hair_five.png',
  ];
  var index = 0;
  var eyesIndex = 0;
  var hairIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: 300,
              width: 350,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset('.pub-cache/git/avatarmaker-a5a9e93c55532e6de558e5680dc272a37a4090a0/avatarmaker/bitmoji/bald.png'),
                    ),
                  ),
                  Positioned(
                      left:hairIndex==1? 110:100,
                      top: 20,
                      child: Image.asset(ListHair[hairIndex],width: (hairIndex ==4) ? 180 : (hairIndex ==5)?150 : 130,)),
                  Positioned(
                      left: 135,
                      top:110,
                      child: Image.asset(Listeyes[eyesIndex],width: 80,)),
                  Positioned(
                      left: 170,
                      top: 130,
                      child: Image.asset('.pub-cache/git/avatarmaker-a5a9e93c55532e6de558e5680dc272a37a4090a0/avatarmaker/bitmoji/nose.png',height: 30,)),

                  Positioned(
                      left: 140,
                      top: 160,
                      child: Image.asset(Listnose[index],height: 40,)),
                ],
              ),
            ),
            ElevatedButton(onPressed: (){
              showModalBottomSheet(
                  barrierColor: Colors.transparent,
                  context: context, builder: (context){
                return Container(child: DefaultTabController(
                  length: 3,
                  child: Scaffold(
                    appBar: AppBar(
                      toolbarHeight: 0,
                      automaticallyImplyLeading:false,
                      bottom: TabBar(
                        tabs: [
                          Tab(child: Image.asset('bitmoji/eyes.png',width: 50,),),
                          Tab(child: Image.asset('bitmoji/mouth_one.png',width: 50,height: 30,),),
                          Tab(child: Image.asset('bitmoji/hairs.png',width: 50,),),
                        ],
                      ),
                    ),
                    body: TabBarView(
                      children: [
                        Container(
                          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                              itemCount: Listeyes.length,
                              itemBuilder: (context, int indexc){
                                return GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        eyesIndex= indexc;
                                      });
                                    },

                                    child: Image.asset(Listeyes[indexc],width: 10,height: 30,));
                              }),
                        ),
                        Container(
                          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                              itemCount: Listnose.length,
                              itemBuilder: (context, int indexc){
                                return GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        index= indexc;
                                      });
                                    },

                                    child: Image.asset(Listnose[indexc],width: 10,height: 30,));
                              }),
                        ),
                        Container(
                          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                              itemCount: ListHair.length,
                              itemBuilder: (context, int indexc){
                                return GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        hairIndex= indexc;
                                      });
                                    },

                                    child: Image.asset(ListHair[indexc],width: 10,height: 30,));
                              }),
                        ),
                      ],
                    ),
                  ),
                ),);
              });
            }, child: Text('Heya'))
          ],
        ),
      ),
    );
  }
}
