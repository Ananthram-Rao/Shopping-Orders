
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(brightness: Brightness.light, fontFamily: "MontSerrat"

      ),

      home: CustomBarWidget()

    );
  }
}

class CustomBarWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(color: Colors.blue,
            height: 160.0,
            child: Stack(
              children: <Widget>[
                Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  height: 100.0,
                  child: Center(
                    child: Text(
                      "My Orders",
                      style: TextStyle(color: Colors.black, fontSize: 28.0),
                    ),
                  ),
                ),
                Positioned(
                  top: 80.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.0),
                          border: Border.all(
                              color: Colors.grey.withOpacity(0.5), width: 1.0),
                          color: Colors.white),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              print("your menu action here");
                            },
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search",
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              print("your menu action here");
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.notifications,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              print("your menu action here");
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ), Expanded(child: BodyLayout()),
        ],
      ),
    );
  }
}


class BodyLayout extends StatefulWidget {

  @override
  _BodyLayoutState createState() {
    return _BodyLayoutState();
  }
}

class _BodyLayoutState extends State<BodyLayout>
{
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }

final orderNo = ['1000AA', '1000AB', '1000AC', '1000AD',];
final trackingNo = ['2000AA', '2000AB', '2000AC', '2000AD'];
final dateVal = ['10-01-2019','10-02-2019','10-03-2019','10-04-2019'];
final quantVal = ['1','2','3','4'];
final amountTotal = ['1000','2000','3000','4000'];
final orderStatus = ['Delivered','Processing','Cancelled','Returned'];
List<Color> _colors = [
  Colors.green,
  Colors.blue,
  Colors.red,
  Colors.orange,
];
// replace this function with the code in the examples
Widget _myListView(BuildContext context) {

  return ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: orderNo.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), ), child: Column(//                           <-- Card widget
            children: <Widget>[
    ListTile(       title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RichText(
                                    text: TextSpan(
                                      text: 'Order No: ',
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.black),
                                      children: <TextSpan>[
                                        TextSpan(text: orderNo[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.black)),
                                      ],
                                    ),
                                  ),
        RichText(
        text: TextSpan(
        text: dateVal[index],
        style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16.0, color: Colors.black),),),
        ],
    ),

                subtitle: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 2.0, top: 12.0, bottom: 2.0, end: 2.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Tracking No: ',
                      style: TextStyle(fontSize: 16.0, color: Colors.black54),
                      children: <TextSpan>[
                        TextSpan(text: trackingNo[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.black )),
                      ],
                    ),
                  ),
                ),

              ), Padding(
                padding: const EdgeInsetsDirectional.only(start: 6.0, top: 0.0, bottom: 0.0, end: 6.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 6.0, top: 0.0, bottom: 0.0, end: 6.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 6.0, top: 0.0, bottom: 0.0, end: 6.0),
                        child: RichText(
                          text: TextSpan(
                            text: 'Quantity: ', style: TextStyle(fontSize: 16.0, color: Colors.black54),
                            children: <TextSpan>[
                              TextSpan(text: quantVal[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.black)),
                            ],
                          ),
                        )
                      ), Padding(
                          padding: const EdgeInsetsDirectional.only(start: 6.0, top: 0.0, bottom: 0.0, end: 6.0),
                          child: RichText(
                            text: TextSpan(
                              text: 'Total Amount: ',
                              style: TextStyle(fontSize: 16.0, color: Colors.black54),
                              children: <TextSpan>[
                                TextSpan(text: amountTotal[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.black)),
                                TextSpan(text: ' ₹', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.black)),
                              ],
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 6.0, top: 0.0, bottom: 0.0, end: 6.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new ButtonTheme.bar(
          // make buttons use the appropriate styles for cards
          child: ButtonBar(
          children: <Widget>[
          OutlineButton(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 17.0, top: 6.0, bottom: 6.0, end: 17.0),
            child: RichText(
                    text: TextSpan(
                      text: 'Details ', style: TextStyle( fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black87)
                    ),
            ),
          ),
        borderSide: BorderSide(width: 1.2, color: Colors.black), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0), ) ,
          onPressed: () { _sendDataToSecondScreen(context);},
          ),
          ],
          ),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                          text: orderStatus[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0, color: _colors[index]),

                        ),
                      ),
                    ),
                  ],
                ),
              ),],
          ),
        ),
      );
    },
  );

}
void _sendDataToSecondScreen(BuildContext context) {
  String textToSend1 = orderNo[0];
  String textToSend2 = orderStatus[0];
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SecondScreen(text1: textToSend1, text2: textToSend2),
      ));
}
}

class SecondScreen extends StatelessWidget {
  final String text1;
  final String text2;

  // receive data from the FirstScreen as a parameter
  SecondScreen({Key key,  @required this.text1, @required this.text2, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order Summary')),
      body: Column(
        children: <Widget>[Text(
          text1,
          style: TextStyle(fontSize: 24),
        ), Text(
          text2,
          style: TextStyle(fontSize: 24),
        ) ]

      ),
    );
  }
}