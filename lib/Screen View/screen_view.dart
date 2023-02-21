import 'package:flutter/material.dart';

class Screen_View extends StatefulWidget {
  const Screen_View({Key? key}) : super(key: key);

  @override
  State<Screen_View> createState() => _Screen_ViewState();
}

double emi = 0;

class _Screen_ViewState extends State<Screen_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        title: Text(
          "EMI CALCULATOR",
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 200,
                width: double.infinity,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),color: Colors.lightBlueAccent,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 50,
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("EMI",style: TextStyle(fontSize: 20,color: Colors.white),),
                            Text("\$ ${emi}",style: TextStyle(fontSize: 20,color: Colors.white),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Loan Amount",style: TextStyle(fontSize: 20,color: Colors.black),),
                                Text("\$ ${emi}",style: TextStyle(fontSize: 20,color: Colors.black),),
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Interest Rate",style: TextStyle(fontSize: 20,color: Colors.black),),
                                Text("${emi} %",style: TextStyle(fontSize: 20,color:Colors.black),),
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Tenure",style: TextStyle(fontSize: 20,color: Colors.black),),
                                Text("${emi} Yr",style: TextStyle(fontSize: 20,color: Colors.black),),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ),

                  ],
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 300,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),color: Colors.black12),
                child: Column(
                  children: [

                  ],
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
/*
*
Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 20,
                    color: Colors.red.shade50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("EMI",style: TextStyle(fontSize: 20,color: Colors.white),),
                        Text("\$ ${emi}",style: TextStyle(fontSize: 20,color: Colors.white),),
                      ],

                    ),
                  ),
                  Container(height: ,
                  width: double.infinity,
                    color: Colors.red,
                  )

                ],
              ),
              *
              *
              Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),color: Colors.red,
                  ),

                ),
              *
* */