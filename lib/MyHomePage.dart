import 'package:flutter/material.dart';
import 'BeautyPage.dart';
import 'AppliancePage.dart';
import 'BabyPage.dart';
import 'CarePage.dart';
import 'CookPage.dart';
import 'package:carousel_slider/carousel_slider.dart';
//import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//import 'GardenPage.dart';
class MyHomePage extends StatefulWidget{
  MyHomePage({Key? key}):super(key: key);
  @override
  State<MyHomePage> createState()=>MyHomePageState();}
class MyHomePageState extends State<MyHomePage>{
  int activeIndex=0;
  final Images=[
    'images/dw.jpg',
    'images/hs.jpg',
    'images/tv.jpg',
    'images/wm.jpg',
    'images/oven.jpg'
  ];
  final List<Map<String,dynamic>>items=[
    {'image':'images/beauty.jpg','text':'Beauty Services','page':()=>BeautyPage()},
    {'image':'images/appliances.jpg','text':'Home Appliances','page':()=>AppliancePage()},
    {'image':'images/babysitting.jpg','text':'Baby Sitting','page':()=>BabyPage()},
    {'image':'images/care takers.jpg','text':'Care Takers','page':()=>CarePage()},
    {'image':'images/cooking.jpg','text':'Cooks','page':()=>CookPage()},
    //{'image':'images/garden.jpg','text':'Gardeners','page':()=>GardenPage()},
    //{'image':'images/house.jpg','text':'House Cleaning','page':HousePage()},
    //{'image':'images/pest.jpg','text':'Pest Control','page':PestPage()},
    //{'image':'images/pet.jpg','text':'Pet Grooming','page':PetPage()},
    //{'image':'images/renovation.jpg','text':'Renovation','page':RenovatePage()},
    //{'image':'images/tutors.jpg','text':'Tutors','page':TutorPage()},
    //{'image':'images/vehicle.jpg','text':'Vecihle Wash','page':VehiclePage()},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Dwella",style:TextStyle(fontFamily: 'cursive',fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black)),
          actions: [
            PopupMenuButton<String>(onSelected:(value){
              print("Selected:$value");

            },
            itemBuilder: (BuildContext context){
              return[
                PopupMenuItem(value:'Option1',child: Text('Settings')),
                PopupMenuItem(value:'Option2',child: Text('Help')),
                PopupMenuItem(value:'Option3',child: Text('Profile')),
              ];
              
            },
            icon:Icon(Icons.more_vert),
            )
          ],
        ),
        body: SingleChildScrollView(scrollDirection: Axis.vertical,child:Padding(padding: const EdgeInsets.all(16.0),
        child:Column(children: [Align(alignment: Alignment.centerLeft,
        child: Padding(padding: EdgeInsets.only(bottom: 16.0),
        child: Text("Services",style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          
          child: Column(
            children: [
            Row(
            children: 
            List.generate(items.length, (index)
            {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>items[index]['page']()));
                },
                child: Stack(
  children: [
    Container(
      width: 200,
      height: 350,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            items[index]['image']!,
            height: 350,
            width: 200,
            fit: BoxFit.cover,
          ),
          
        ],
      ),
    ),
    Positioned(
      bottom: 10, // Partially outside the container
      left: 0,
      right: 0,
      child:Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => items[index]['page']()),
          );
        },
        style: ElevatedButton.styleFrom(
          elevation: 10, // 3D effect
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.white.withOpacity(0.7),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Text(
            items[index]['text']!,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ),
        
      ), 
    ),
  ],
),

              
              
              );
            }
          ),
          
          ),
            ],
        ),
        ),
        SizedBox(height:5),
        Row(
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 4),child: 
            Text("Popular Services",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black))),]),
            Row(
              children: [
            Expanded(child: 
            Padding(padding: EdgeInsets.all(5),
            child: 
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                  _buildServiceCard(context,'Hair Style','images/hairstyle.jpg',HairStyle()),
                  _buildServiceCard(context,'Make Up','images/makeup.jpg',MakeUp()),
                  _buildServiceCard(context,'Cook','images/hairstyle.jpg',CookPage()),
                  _buildServiceCard(context,'Baby Sitting','images/babysitting.jpg',BabyPage()),
                  _buildServiceCard(context,'Care Takers','images/care takers.jpg',CarePage()),
                    ]
                  )
                ],
              ),
            )
            )
            )
          ]
          
        ),
        SizedBox(height: 5,),
        Align(
          alignment: Alignment.topLeft,
          child: 
        Text("  Our Products",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),),
        CarouselSlider.builder(itemCount: Images.length, 
        itemBuilder:(context,index,realIndex) {
          final sliImage=Images[index];
          return buildImage(sliImage,index);
        },
         options: CarouselOptions(height: 250,
         autoPlay: true,
         autoPlayInterval: Duration(seconds: 3),
         autoPlayAnimationDuration: Duration(milliseconds: 800),
         autoPlayCurve: Curves.fastOutSlowIn,
         enlargeCenterPage: true,
         //onPageChanged: (index, reason) => setState(() =>activeIndex=index),
         
         
         
         )
        ),
        SizedBox(height: 12,),
         //buildIndicator()
        ],
        ),
        ),
        )
      );
  
    
  }
  Widget _buildServiceCard(
    BuildContext context,
    String title,String imagePath,
    Widget destinationPage
  ){
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 4.0),
    child:
    GestureDetector(
      onTap: ()
      {
        Navigator.push(context, MaterialPageRoute(builder:(context)=>destinationPage));
      },
      child: ClipRRect(
        borderRadius:BorderRadius.circular(4),
        child: Stack(
          children: [
            Image.asset(imagePath,width: 200,height: 120,fit: BoxFit.cover,),
            Container(
              width: 200,
              height: 120,
              alignment: Alignment.center,
              child: Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),textAlign: TextAlign.center,),
            )
          ],
        ),
      ),
    )
    
    );
    
  }
  Widget buildImage(String sliImage,int index)=>Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    child: Image.asset(sliImage,fit: BoxFit.cover,),
  );
  //Widget buildIndicator()=>AnimatedSmoothIndicator(effect:ExpandingDotsEffect(dotWidth: 15,activeDotColor: Colors.blue) ,activeIndex:activeIndex, count: Images.length);
}