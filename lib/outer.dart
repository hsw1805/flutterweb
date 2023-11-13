import 'package:flutter/material.dart';

class Outer extends StatefulWidget {
  const Outer({super.key});

  @override
  State<Outer> createState() => _OuterState();
}

class _OuterState extends State<Outer> {

  //수정할 부분 너무 멍청하게 짠 거 같음
  bool iconClicked1 = false;
  bool iconClicked2 = false;
  bool iconClicked3 = false;
  bool iconClicked4 = false;
  bool iconClicked5 = false;
  bool iconClicked6 = false;
  bool iconClicked7 = false;
  bool iconClicked8 = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(           //스크롤 되는 것
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Wrap(                        //이것도 나중에 수정해보자 --> 화면 줄어들면 이미지도 줄어드는 형식으로
          spacing: 10,
          runSpacing: 30,
          children: [
            Stack(                          //stack을 써서 하트가 그림 위에 올라가도록
              children: [
                const Column(
                  children: [
                    Image(
                      image: AssetImage(
                          'assets/90S_PATAGONIA_BOMBER_105_339000.jpg'),
                      height: 463,        //이것도 나중에 그냥 화면 꽉차게 자동으로 채우게 하도록
                      width: 463,
                      fit: BoxFit.contain,
                    ),
                    Text("90S PATAGONIA BOMBER BLUE (105)",
                        style: TextStyle(fontSize: 18)),
                    Text(
                      "339,000원",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ],
                ),
                Positioned(
                  top: 10,
                  right: 20,
                  child: IconButton(
                    icon: Icon(
                        iconClicked1 ? Icons.favorite : Icons.favorite_border),
                    iconSize: 30,
                    color: Colors.red,
                    onPressed: () {
                      iconClicked1 = !iconClicked1;
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
            // Text('90S Patagonia Bomber (105)'
            // ),

            //이것도 나중에 함수로 빼자!!!
            Stack(
              children: [
                const Column(
                  children: [
                    Image(
                      image: AssetImage(
                          'assets/90S_PATAGONIA_BOMBER_105_gray_339000.jpg'),
                      height: 463,
                      width: 463,
                      fit: BoxFit.contain,
                    ),
                    Text("90S PATAGONIA BOMBER GRAY (105)",
                        style: TextStyle(fontSize: 18)),
                    Text(
                      "339,000원",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    )
                  ],
                ),
                Positioned(
                  top: 10,
                  right: 20,
                  child: IconButton(
                    icon: Icon(
                        iconClicked2 ? Icons.favorite : Icons.favorite_border),
                    iconSize: 30,
                    color: Colors.red,
                    onPressed: () {
                      iconClicked2 = !iconClicked2;
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
            Stack(children: [
              const Column(
                children: [
                  Image(
                    image: AssetImage(
                        'assets/90S_PATAGONIA_BOMBER_105_Navy319000.jpg'),
                    height: 463,
                    width: 463,
                    fit: BoxFit.contain,
                  ),
                  Text("90S PATAGONIA BOMBER NAVY (105)",
                      style: TextStyle(fontSize: 18)),
                  Text(
                    "319,000원",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  )
                ],
              ),
              Positioned(
                top: 10,
                right: 20,
                child: IconButton(
                  icon: Icon(
                      iconClicked3 ? Icons.favorite : Icons.favorite_border),
                  iconSize: 30,
                  color: Colors.red,
                  onPressed: () {
                    iconClicked3 = !iconClicked3;
                    setState(() {});
                  },
                ),
              ),
            ]),
            Stack(
              children: [
                const Column(
                  children: [
                    Image(
                      image: AssetImage(
                          'assets/BROOKS_BROTHERS_BROOKSWEED_SACK_JACKET_(105)589000.jpg'),
                      height: 463,
                      width: 463,
                      fit: BoxFit.contain,
                    ),
                    Text("BROOKS BROTHERS BROOKSWEED SACK JACKET",
                        maxLines: 2, style: TextStyle(fontSize: 18)),
                    Text(
                      "589,000원",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    )
                  ],
                ),
                Positioned(
                  top:10,
                  right: 20,
                  child: IconButton(
                    icon: Icon(iconClicked4?Icons.favorite:Icons.favorite_border),
                    iconSize: 30,
                    color: Colors.red,
                    onPressed: (){
                      iconClicked4=!iconClicked4;
                      setState(() {
                      });
                    },
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                const Column(
                  children: [
                    Image(
                      image:
                          AssetImage('assets/LL_BEAN_DENIM_JACKET_285000.jpg'),
                      height: 463,
                      width: 463,
                      fit: BoxFit.contain,
                    ),
                    Text("LL.BEAN DENIM JARCKET",
                        style: TextStyle(fontSize: 18)),
                    Text(
                      "285,000원",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    )
                  ],
                ),
                Positioned(
                  top:10,
                  right: 20,
                  child: IconButton(
                    icon: Icon(iconClicked5?Icons.favorite:Icons.favorite_border),
                    iconSize: 30,
                    color: Colors.red,
                    onPressed: (){
                      iconClicked5=!iconClicked5;
                      setState(() {
                      });
                    },
                  ),
                ),
              ],
            ),
            // Text('90S Patagonia Bomber (105)'
            // ),
            Stack(
              children: [
                const Column(
                  children: [
                    Image(
                      image: AssetImage(
                          'assets/cardigan.jpg'),
                      height: 463,
                      width: 463,
                      fit: BoxFit.contain,
                    ),
                    Text("BROOKS BROTHERS LAMBSWOOL CARDIGAN ",
                        style: TextStyle(fontSize: 18)),
                    Text(
                      "239,000원",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    )
                  ],
                ),
                Positioned(
                  top:10,
                  right: 20,
                  child: IconButton(
                    icon: Icon(iconClicked6?Icons.favorite:Icons.favorite_border),
                    iconSize: 30,
                    color: Colors.red,
                    onPressed: (){
                      iconClicked6=!iconClicked6;
                      setState(() {
                      });
                    },
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                const Column(
                  children: [
                    Image(
                      image: AssetImage(
                          'assets/polojacket.jpg'),
                      height: 463,
                      width: 463,
                      fit: BoxFit.contain,
                    ),
                    Text("POLO SWING TOP JACKET NAVY",
                        style: TextStyle(fontSize: 18)),
                    Text(
                      "289,000원",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    )
                  ],
                ),
                Positioned(
                  top:10,
                  right: 20,
                  child: IconButton(
                    icon: Icon(iconClicked7?Icons.favorite:Icons.favorite_border),
                    iconSize: 30,
                    color: Colors.red,
                    onPressed: (){
                      iconClicked7=!iconClicked7;
                      setState(() {
                      });
                    },
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                const Column(
                  children: [
                    Image(
                      image: AssetImage(
                          'assets/US_ARMY_M_51_FISHTAIL500000.jpg'),
                      height: 463,
                      width: 463,
                      fit: BoxFit.contain,
                    ),
                    Text("assets/U.S.ARMY M-51 FISHTAIL",
                        maxLines: 2, style: TextStyle(fontSize: 18)),
                    Text(
                      "500,000원",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    )
                  ],
                ),
                Positioned(
                  top:10,
                  right: 20,
                  child: IconButton(
                    icon: Icon(iconClicked8?Icons.favorite:Icons.favorite_border),
                    iconSize: 30,
                    color: Colors.red,
                    onPressed: (){
                      iconClicked8=!iconClicked8;
                      setState(() {
                      });
                    },
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
