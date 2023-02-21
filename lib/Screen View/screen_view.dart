import 'package:flutter/material.dart';

class Screen_View extends StatefulWidget {
  const Screen_View({Key? key}) : super(key: key);

  @override
  State<Screen_View> createState() => _Screen_ViewState();
}
double loan_amount = 5000;
double emi = 0;
double rate = 1 ;
double tenure = 1 ;

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
                            Text("\$ ${emi.toInt()}",style: TextStyle(fontSize: 20,color: Colors.white),),
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
                                Text("\$ ${loan_amount.toInt()}",style: TextStyle(fontSize: 20,color: Colors.black),),
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Interest Rate",style: TextStyle(fontSize: 20,color: Colors.black),),
                                Text("${rate.toInt()} %",style: TextStyle(fontSize: 20,color:Colors.black),),
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Tenure",style: TextStyle(fontSize: 20,color: Colors.black),),
                                Text("${tenure.toInt()} Yr",style: TextStyle(fontSize: 20,color: Colors.black),),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Enter Loan Amount",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          Text(
                            "\$  ${loan_amount.toInt()}",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                ),
                          )
                        ],
                      ),
                    ),
                    Slider(
                        value: loan_amount,
                        divisions: 10,
                        min: 5000,
                        max: 10000,
                        onChanged: (value) {
                          setState(() {
                            loan_amount = value;
                            emi = loan_amount * rate * tenure /100;
                          });
                        }),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Enter Interest Rate p.a",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          Text(
                            "${rate.toInt()} %",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    Slider(
                        value: rate,
                        divisions: 30,
                        max: 30,
                        min: 1,
                        onChanged: (value) {
                          setState(() {
                            rate = value;
                            emi = loan_amount * rate * tenure /100;
                          });
                        }),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Enter Tenure",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          Text(
                            "${tenure.toInt()} Yr",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    Slider(
                        value: tenure,
                        divisions: 20,
                        max: 20,
                        min: 1,
                        onChanged: (value) {
                          setState(() {
                            tenure = value;
                            emi = loan_amount * rate * tenure /100;
                          });
                        }),
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