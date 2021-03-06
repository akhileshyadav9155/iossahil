import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:krash_company/checkout/check_out.dart';

class ServiceSelection extends StatefulWidget{
  _ServiceSelection createState() => _ServiceSelection();
}

class _ServiceSelection extends State<ServiceSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 243, 243, 1),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  getBannerTitle(),
                  getCarWashingList()
                ],
              ),
            ),
            getContainerForPrice()
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Color.fromRGBO(0,0,102, 1)
        ),
        backgroundColor: Colors.white,

        title: Text(
          "car service at home",
          style: TextStyle(
              color: Color.fromRGBO(0,0,102, 1),
              fontSize: 20
          ),
        ),
      ),
    );
  }

  Widget getBannerTitle() {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),


      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hatchback",
            style: TextStyle(
                color: Color.fromRGBO(102,0,0, 102),
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 130,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

            decoration: BoxDecoration(
                color: Color.fromRGBO(70, 89, 108, 1)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Icon(
                    Icons.directions_car_sharp,
                    size: 40,
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.fromLTRB(0, 0, 5, 5),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 5, 0, 10),
                      width: MediaQuery
                          .of(context)
                          .size
                          .width - 90,
                      child: Text("At-home convenience with trusted experts",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(5, 5, 0, 10),
                      width: MediaQuery
                          .of(context)
                          .size
                          .width - 90,
                      child: Text(
                        "Make car look brand new with best car washing and servicing team",
                        style: TextStyle(
                            color: Colors.red[200],
                            fontSize: 15
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),

          )
        ],
      ),

    );
  }

  Widget getCarWashingList() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: Column(
        children: [
          getCarWashingWidget(),
          getCarWashingWidget(),
          getCarWashingWidget(),
          getCarWashingWidget(),
        ],
      ),
    );
  }

  Widget getCarWashingWidget()
  {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: 300,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10))
            ),
            child: Center(
              child: Text("Best Seller",
                style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  getImages("https://thumbs.dreamstime.com/b/foaming-red-auto-car-wash-cleaning-service-foaming-red-auto-car-wash-130560890.jpg"),
                  getImages("https://img.indianauto.com/2020/05/29/l2AZQYjw/car-washing-876a.jpg"),
                  getImages("https://images.theconversation.com/files/76578/original/image-20150331-1231-1ttwii6.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip"),
                  getImages("https://thumbs.dreamstime.com/b/foaming-red-auto-car-wash-cleaning-service-foaming-red-auto-car-wash-130560890.jpg"),
                  getImages("https://img.indianauto.com/2020/05/29/l2AZQYjw/car-washing-876a.jpg"),
                  getImages("https://images.theconversation.com/files/76578/original/image-20150331-1231-1ttwii6.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip"),
                ],
              ),
            ),
          ),

          Row(
            children: [
              Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        alignment: Alignment.centerLeft,
                        color: Colors.white,
                        child: Text("Car Washing",style: TextStyle(
                          color: Color.fromRGBO(0,0,102, 1),
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),),
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        alignment: Alignment.centerLeft,

                        color: Colors.white,
                        child: Text("4.7 ratting",style: TextStyle(
                            color: Color.fromRGBO(122,150,240, 1),
                            fontSize: 18,
                        ),),
                      ),
                    ],
                  )
              ),
              Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 50,
                    width: 20,
                    alignment: Alignment.centerRight,
                    child: MaterialButton(
                      onPressed: (){},
                      child: Text(
                          "ADD+",
                        style: TextStyle(
                          color: Color.fromRGBO(122, 150, 240, 1)
                        ),
                      ),
                      color: Colors.white,
                      elevation: 5,
                    )
                  )
              ),
            ],
          ),

          Container(
            height: 20,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(5, 5, 5, 5),

            alignment: Alignment.centerRight,
            child: Text(
              "Rs. 99/-",
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          Container(
            height: 80,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),

                    child: Text(
                      "Details",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    child: Text(
                      "Detail about services and what your serving to us placed hereDetail about services and what your serving to us placed here,Detail about services and what your serving to us placed here,Detail about services and what your serving to us placed here",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }

  Widget getImages(var imageurl)
  {
    return Container(
      margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
      height: 60,
      width: 120,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            imageurl
          ),
          fit: BoxFit.cover,
        )
      ),
    );
  }


  Widget getContainerForPrice()
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          height: 65,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0,0,102, 1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                height: 45,
                width: 45,
                margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 2.0)
                ),
                child: Text(
                  "1",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
              ),

              Text(
                "Rs. 198/-",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      height: 50,
                      width: 20,
                      alignment: Alignment.centerRight,

                      child: MaterialButton(
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CheckOut()),
                          );
                        },
                        child: Text(
                          "CHECK",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        color: Color.fromRGBO(0,0,102, 1),
                        elevation: 5,
                      )
                  )
              ),
            ],
          ),
        ),
      ],
    );
  }
}