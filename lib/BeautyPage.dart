import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
Future<DateTime?>_pickDateTime(BuildContext context) async{
    DateTime? date = await showDatePicker(context: context,initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime(2100));
    if(date!=null)
    {
      TimeOfDay? time = await showTimePicker(context: context, initialTime: TimeOfDay.now());
      if(time!=null)
      {
        return DateTime(date.year,date.month,date.day,date.hour,date.minute);
      }
    }
    return null;
  }
  

class BeautyPage extends StatelessWidget{
  
  final List<Map<String,dynamic>>item=[
    {'service':'Hair Styling','image':'images/hairstyle.jpg','class':()=>HairStyle()},
    {'service':'Makeup','image':'images/makeup.jpg','class':()=>MakeUp()},
    //{'service':'Nails','image':'images/nails.jpg','class':()=>Nails()},
    {'service':'Facial','image':'images/facial.jpg','class':()=>Facial()},
    {'service':'Hair cut','image':'images/haircut.jpg','class':()=>HairCut()},
    //{'service':'Products','image':'images/products.jpg','class':()=>Product()},

  ];
  /*final List<Map<String,dynamic>>item1=[
    //{'service':'Hair Styling','image':'images/hairstyle.jpg','class':()=>HairStyle()},
    {'service':'Hair Color','image':'images/haircolormen.jpg','class':()=>HairColor()},
    {'service':'Shave','image':'images/shaving.jpg','class':()=>Shave()},
    {'service':'Facial','image':'images/menfacial.jpg','class':()=>Facial()},
    {'service':'Hair cut','image':'images/hair cut.jpg','class':()=>HairCut()},
    //{'service':'Products','image':'images/products.jpg','class':()=>Product()},

  ];*/
  
  
  
  Widget build(BuildContext context)
  {
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        title: Text("Beauty Salon"),
        bottom: TabBar(tabs: [
          Tab(text:'Women'),
          //Tab(text: 'Men'),
        ],
        indicatorColor: Colors.white,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.blueGrey,),
      ),
      body: TabBarView(children: [
        Column(
          children: [
            Padding(padding: EdgeInsets.all(8.0),
            child: 
            Align(
            alignment: Alignment.centerLeft,
            child: Text("Welcome User,",style: TextStyle(fontSize: 25,color: Color.fromARGB(197, 14, 13, 13),fontWeight: FontWeight.bold),),
          )
            ),
          Expanded(child: 
          SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: 
           Column(
            children: 
            List.generate(item.length, (index)
            {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>item[index]['class']()));
                },
              
              
              child: Container(
                width: 360,
                height: 200,
          
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Color.fromARGB(50, 255, 255, 255),
                  borderRadius: BorderRadius.circular(8),
                
                ),
                
                  child:   Padding(padding: EdgeInsets.all(8.0),
                    child:Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(item[index]['image']!,height: 170,width: 330,fit: BoxFit.cover,),
                        Text(item[index]['service']!,style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                      ],
                    ) 
                    ),
                    
                   //Text(item[index]['service']!,style: TextStyle(color: Colors.white,fontSize: 18),),
                  
                
              
              ),
              );
            }
          ),
          
          ),
        ),
          ),
            
          ],
        ),
        Column(
          children: [
            Padding(padding: EdgeInsets.all(8.0),
            child: 
            Align(
            alignment: Alignment.centerLeft,
            child: Text("Welcome User,",style: TextStyle(fontSize: 25,color: Color.fromARGB(197, 14, 13, 13),fontWeight: FontWeight.bold),),
          )
            ),
          //Expanded(child: 
          /*SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: 
           Column(
            children: 
            List.generate(item1.length, (index)
            {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>item1[index]['class']()));
                },
              
              
              child: Container(
                width: 360,
                height: 200,
          
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Color.fromARGB(50, 255, 255, 255),
                  borderRadius: BorderRadius.circular(8),
                
                ),
                
                  child:   Padding(padding: EdgeInsets.all(8.0),
                    child:Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(item1[index]['image']!,height: 170,width: 330,fit: BoxFit.cover,),
                        Text(item1[index]['service']!,style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                      ],
                    ) 
                    ),
                    
                   //Text(item[index]['service']!,style: TextStyle(color: Colors.white,fontSize: 18),),
                  
                
              
              ),
              );
            }
          ),
          
          ),
        ),*/
          //),
            
          ],
        ),

      ]),
    )

    );
     
  }
}
class HairStyle extends StatefulWidget{
  @override
  HairStyleState createState() => HairStyleState();
}
class HairColor{
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Make Up"),
      ),
      body: SingleChildScrollView(
        child: 
         Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/2,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/haircolormen.jpg'),
              fit: BoxFit.cover)
              )
            ),
            Container(
              height: MediaQuery.of(context).size.height/2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin:Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.white,
                  ]
                  )
              ),
            ),
        ],
        ),
      ),
    );
  }
}
class Shave{
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shave"),
      ),
      body: SingleChildScrollView(
        child: 
         Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/2,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/shaving.jpg'),
              fit: BoxFit.cover)
              )
            ),
            Container(
              height: MediaQuery.of(context).size.height/2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin:Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.white,
                  ]
                  )
              ),
            ),
        ],
        ),
      ),
    );
  }
}
class HairStyleState extends State<HairStyle>
{
  DateTime? selectedDateTime;
  void selectDateTime() async {
    DateTime? dateTime = await _pickDateTime(context);
    if(dateTime!=null)
    {
      setState(() {
        selectedDateTime = dateTime;
      },);
    }
  }
  
 Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hair Styling"),
      


      ),
      body: SingleChildScrollView(
        child:SafeArea(
          child:Column(

          children: [
         Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/2,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/hairstyle.jpg'),
              fit: BoxFit.cover)
              )
            ),
            Container(
              height: MediaQuery.of(context).size.height/2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin:Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.white,
                  ]
                  )
              ),
            ),
        ],
        ),
        
            Positioned(
              top: MediaQuery.of(context).size.height / 2 + 50,
              left: 0,
              right: 0,
              child: 
            Padding(padding: const EdgeInsets.all(16.0),
            child: 
            SizedBox(
              height: 100,
              child: 
            ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildIconsWithText(Icons.person_2_outlined,'Stylist 1'),
                _buildIconsWithText(Icons.person_2_outlined,'Stylist 2'),
                _buildIconsWithText(Icons.person_2_outlined,'Stylist 3'),
                _buildIconsWithText(Icons.person_2_outlined,'Stylist 4'),
                _buildIconsWithText(Icons.person_2_outlined,'Stylist 5'),
              ],
            ),
            ),

            )
            ),
            SizedBox(height: 10),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                
                ElevatedButton(onPressed: selectDateTime, child: Text("Book your appointment"),style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black, // Background color
    foregroundColor: Colors.white, // Text color
  ),             ) ],
            ),
             
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              if(selectedDateTime!=null)
              Text('Appointment booked'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                ElevatedButton(onPressed: ()
                {
                  showDialog(context: context, builder: (BuildContext context){
                    return AlertDialog(
                      title: Text("Details"),
                      content: Text("$selectedDateTime"),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, child: Text("OK"),)
                      ],
                    );
                  });
                }, child: Text("View Details"),style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black, // Background color
    foregroundColor: Colors.white, ))
              ],
            )
        ]
          
        ),
      )
    
      )  
      );
    
  }
  Widget _buildIconsWithText(IconData icons,String label)
  {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 12.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.black,
          child: Icon(icons,color: Colors.white,size: 30,),
          
        ),
        SizedBox(height: 8,),
        Text(label,style: TextStyle(fontSize: 14),),
      ],
    ),
    );
  }
}
class MakeUp extends StatefulWidget{
  @override
  MakeUpState createState() => MakeUpState();
}class MakeUpState extends State<MakeUp>{
  DateTime? selectedDateTime;
  void selectDateTime() async {
    DateTime? dateTime = await _pickDateTime(context);
    if(dateTime!=null)
    {
      setState(() {
        selectedDateTime = dateTime;
      },);
    }
  }
  
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Make Up"),
      ),
      body: SingleChildScrollView(
        child: 
        Column(
          children: [
         Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/2,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/makeup.jpg'),
              fit: BoxFit.cover)
              )
            ),
            Container(
              height: MediaQuery.of(context).size.height/2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin:Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.white,
                  ]
                  )
              ),
            ),
            
        ],
        ),
        
        Align(
          alignment: Alignment.topLeft,
          
          child: 
          Column(children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Image.asset("images/ma1.jpeg",width: 100,height: 100,),
                  SizedBox(width: 16,),
                   Expanded(child:Align(alignment:Alignment.center,child:   Column(
                    children: [
                      Text("Stylist 1"),
                      RatingBarIndicator(
                        rating:4.3 ,
                        itemBuilder: (context, index) => Icon(Icons.star,
                        color: Colors.amber,),
                        itemSize: 20.0,),
                        ElevatedButton(onPressed: selectDateTime, child: Text("Book your appointment"),style: ElevatedButton.styleFrom(
    backgroundColor: Colors.pink, // Background color
    foregroundColor: Colors.white, // Text color
  ),             ) ,
  if(selectedDateTime!=null)
              Text('Appointment booked'),
                    ],
                  )))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Image.asset("images/ma2.jpeg",width: 100,height: 100,),
                  SizedBox(width: 16,),
                   Expanded(child:Align(alignment:Alignment.center,child:   Column(
                    children: [
                      Text("Stylist 2"),
                      RatingBarIndicator(
                        rating:4.5,
                        itemBuilder: (context, index) => Icon(Icons.star,
                        color: Colors.amber,),
                        itemSize: 20.0,),
                        ElevatedButton(onPressed: selectDateTime, child: Text("Book your appointment"),style: ElevatedButton.styleFrom(
    backgroundColor: Colors.pink, // Background color
    foregroundColor: Colors.white, // Text color
  ),             ) ,
  if(selectedDateTime!=null)
              Text('Appointment booked'),
                    ],
                  )))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Image.asset("images/ma3.jpeg",width: 100,height: 100,),
                  SizedBox(width: 16,),
                   Expanded(child:Align(alignment:Alignment.center,child:   Column(
                    children: [
                      Text("Stylist 3"),
                      RatingBarIndicator(
                        rating:4.2 ,
                        itemBuilder: (context, index) => Icon(Icons.star,
                        color: Colors.amber,),
                        itemSize: 20.0,),
                        ElevatedButton(onPressed: selectDateTime, child: Text("Book your appointment"),style: ElevatedButton.styleFrom(
    backgroundColor: Colors.pink, // Background color
    foregroundColor: Colors.white, // Text color
  ),             ) ,
  if(selectedDateTime!=null)
              Text('Appointment booked'),
                    ],
                  )))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Image.asset("images/ma4.jpeg",width: 100,height: 100,),
                  SizedBox(width: 16,),
                   Expanded(child:Align(alignment:Alignment.center,child:   Column(
                    children: [
                      Text("Stylist 4"),
                      RatingBarIndicator(
                        rating:3.9 ,
                        itemBuilder: (context, index) => Icon(Icons.star,
                        color: Colors.amber,),
                        itemSize: 20.0,),
                        ElevatedButton(onPressed: selectDateTime, child: Text("Book your appointment"),style: ElevatedButton.styleFrom(
    backgroundColor: Colors.pink, // Background color
    foregroundColor: Colors.white, // Text color
  ),             ) ,
  if(selectedDateTime!=null)
              Text('Appointment booked'),
                    ],
                  )))
                ],
              ),
            )
            ])
        ),

          ]
        )
      ),
    );
  }
}
class Nails extends StatelessWidget{
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nail Art"),
      ),
      body:
      Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: 
          Container(
            color: Colors.black,
            child: SizedBox(
              width: 300,
              height:250,
              child:Center( child: Text("Manicure",style: TextStyle(color: Colors.white),),)
            ),
          )
          )
        ],
      )
      /*PageView(
        children: [
          Container(
            color: const Color.fromARGB(255, 196, 96, 129),
            child: Column(
              children: [
                Align(alignment: Alignment.topLeft,child: Padding(padding: EdgeInsets.only(top: 10,left: 10),child:
                Text("Manicure",style: TextStyle(color: Colors.black,fontSize: 30),),))
              ],
            ),
          ),
          Container(color: Colors.yellow,child: 
          Center(child: Text("Page 2"),),),
          Container(color: Colors.blue,child: Center(
            child: Text("Nail Art"),
          ),)
        ],
      )*/
       /*SingleChildScrollView(
        child: 
         Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/2,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/nails.jpg'),
              fit: BoxFit.cover)
              )
            ),
            Container(
              height: MediaQuery.of(context).size.height/2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin:Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.white,
                  ]
                  )
              ),
            ),
        ],
        ),
      ),*/
    );
  }
}
class Facial extends StatelessWidget{
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facial"),
      ),
        body: 
        
           
        Column(
          children: [
            Row(
              children: [
                
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/clean facial.jpg'),
              fit: BoxFit.cover)
              ),
                  child: InkWell(
                    onTap: () {
                      print("Clicked the container");
                    },
                    child: Center(child: Text("Clean Up",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),)
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/facial.jpg'),
              fit: BoxFit.cover)
              ),

                  child: InkWell(
                    onTap: () {
                      print("Clicked the container");
                    },
                    child: Center(child:Text("Facials",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),)
                  ),
                )
              ],
            )
          ],
        )
      
    );
  }
}
class HairCut extends StatefulWidget{
  @override
  HairCutState createState()=>HairCutState();
}
class HairCutState extends State<HairCut>

{


  final List<String> imagePaths=[
    "images/bob.jpeg",
    "images/wolfcut.jpeg",
    "images/bangs.jpeg",
    //"images/coloring.jpeg",
    //"images/extensions.jpeg"
  ];
  final List<String> imageText=[
    "Bob Cut",
    "Wolf Cut",
    "Bangs",
  ];
  final Map<String,List<String>> hairoptions={
    'Bob Cut':['Classic','Textured','Inverted','Long'],
    'Wolf Cut':['Classic','Wavy','With Bangs','Long'],
    'Bangs':['Blunt','Curtain','Curly','Layered']
  };
  late List<bool> isBangsSwitched;
  late List<bool> isLengthKept ;
  late List<bool> isBluntEnds ;
  late List<bool> isColoring ;
  late List<bool> isStylingTutorial ;
  Map <String,String> selectedOptions={};
  @override
  void initState()
  {
    super.initState();
    for(var cut in imageText)
    {
      selectedOptions[cut]=hairoptions[cut]![0];
    }
    isBangsSwitched = List.generate(imagePaths.length, (index) => false);
    isLengthKept = List.generate(imagePaths.length, (index) => false);
    isBluntEnds = List.generate(imagePaths.length, (index) => false);
    isColoring = List.generate(imagePaths.length, (index) => false);
    isStylingTutorial = List.generate(imagePaths.length, (index) => false);
  }
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hair cut"),
      ),
      body:
      PageView.builder(
        itemCount: imagePaths.length,
        itemBuilder: (context,index){
          String currHairCut=imageText[index];
          List<String> options=hairoptions[currHairCut]!;
          return  Stack(
            children: [
              Image.asset(imagePaths[index],fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,),
              Positioned(
                top: 20,
                left: 20,
                child: Text(imageText[index],style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),)),
                
              Center(
  child: Container(
    width: 350,
    height: 420,
    color: Colors.black.withOpacity(0.5),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Style",
            style: TextStyle(fontFamily: 'cursive', fontSize: 30, color: Colors.white),
          ),
          SizedBox(height: 10),
          DropdownButton<String>(
            dropdownColor: Colors.black.withOpacity(0.5),
            value: selectedOptions[currHairCut],
            items: options.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value, style: TextStyle(color: Colors.white)),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                selectedOptions[currHairCut] = newValue!;
              });
            },
          ),
          SizedBox(height: 10),
          buildSwitch("Bangs",isBangsSwitched[index],(bool value){
            setState(() {
              isBangsSwitched[index]=value;
            });
          }),
          buildSwitch("Keep current length",isLengthKept[index],(bool value){
            setState(() {
              isLengthKept[index]=value;
            });
          }),
          buildSwitch("Blunt ends",isBluntEnds[index],(bool value){
            setState(() {
              isBluntEnds[index]=value;
            });
          }),
          buildSwitch("Coloring",isColoring[index],(bool value){
            setState(() {
              isColoring[index]=value;
            });
          }),
          buildSwitch("Styling tutorial",isStylingTutorial[index],(bool value){
            setState(() {
              isStylingTutorial[index]=value;
            });
          }),
          Padding(padding: const EdgeInsets.all(0.0),
          child: Align(alignment:Alignment.center,child: ElevatedButton(
            style:ElevatedButton.styleFrom(
              backgroundColor: Colors.black.withOpacity(0.6),
              padding: EdgeInsets.symmetric(vertical: 0,horizontal: 75)
            ),
            onPressed: collectInfo, child: Text("Book Now",style: TextStyle(fontSize: 20.0,color: Colors.white),)),))
          
          // Bangs Switch
          
        ],
      ),
    ),
  ),
)

            ]
          );
          
        } // Convert the iterable to a list here
    ),

  );
  
}
 

       Widget buildSwitch(String label,bool switchValue,Function(bool) onChanged){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,style: TextStyle(color: Colors.white),),
        Switch(value: switchValue
        , onChanged: onChanged,
        activeColor: Colors.brown,
        inactiveThumbColor: Colors.white,
        inactiveTrackColor: Colors.grey,)
      ],
    );
  }
  void collectInfo(){
  String bookingSummary='';
  for(int i=0;i<imageText.length;i++){
    String haircut=imageText[i];
    String style=selectedOptions[haircut]!;
    bookingSummary+='Haircut:$haircut\n';
    bookingSummary+='Style:$style\n';
    bookingSummary += 'Bangs: ${isBangsSwitched[i] ? "Yes" : "No"}\n';
    bookingSummary += 'Keep Length: ${isLengthKept[i] ? "Yes" : "No"}\n';
    bookingSummary += 'Blunt ends: ${isBluntEnds[i] ? "Yes" : "No"}\n';
    bookingSummary += 'Coloring: ${isColoring[i] ? "Yes" : "No"}\n';
    bookingSummary += 'Styling tutorial: ${isColoring[i] ? "Yes" : "No"}\n';
  }
  showDialog(context: context, builder: (_)=>AlertDialog(
    title: Text("Booking Summary"),
    content: SingleChildScrollView(child: Text(bookingSummary),),
    actions: [
      TextButton(onPressed:()=>Navigator.pop(context), child: Text('Close'))
    ],
  )
  );
}
  
}
class Product extends StatelessWidget{
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
    );
  }
}
class DropDown extends StatefulWidget{
  @override
  _DropDownState createState()=> _DropDownState();
}
class _DropDownState extends State<DropDown>{
  String? selectedValue;
  @override
  Widget build(BuildContext context)
  {
    return DropdownButton<String>(
      value: selectedValue,
      hint: Text("Select your makeup",style: TextStyle(color: Colors.grey),),
      items:<String> ['Bridal','Matte','Airbrush','No Makeup Look'].map((String value)
      {
        return DropdownMenuItem<String>(value:value,child:Text(value) );
      }).toList(),
      onChanged: (String? newValue){
        setState(() {
          selectedValue=newValue;
        });
      },
      dropdownColor: Colors.grey,
    );
  }


}
class DetailPage extends StatelessWidget{
  final String imagePath;
  final String text;
  DetailPage({required this.imagePath,required this.text});
  Widget build(BuildContext context){
    return Scaffold(
      body: 
      Text('hey')
      
      
                  
                
      
        
    );
  }
  
}
  