import 'package:flutter/material.dart';
import 'package:my_application_2/models/app_color.dart';

class ProfileSc extends StatelessWidget {
  const ProfileSc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        leading: Container(
          decoration: BoxDecoration(
              color: AppColors.surface,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.dividerAndBorder),
          ),
          child: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios),color: AppColors.primaryText,iconSize: 18,),
        ),
        title: Text("Profile" , style: TextStyle(color: AppColors.primaryText ,
        fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          Container( 
            decoration: BoxDecoration(
              color: AppColors.surface,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.dividerAndBorder)
          ),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.edit),color: AppColors.primaryText, iconSize: 18,)
             ,)
        ],
        ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 90,
              height: 130,
              child: CircleAvatar(
                backgroundColor: AppColors.avatarbgcolor,
                child: Text("FM",style: TextStyle(color: AppColors.surface,fontSize: 28),),
              ),
            ),
            Text("Farkhunda Memon",style: TextStyle(color: AppColors.primaryText, fontWeight: FontWeight.bold, fontSize: 18),),
            Text("Grade 8 . Section B",style: TextStyle(color: AppColors.secondaryText,)),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(padding: EdgeInsetsGeometry.all(20)),
                Container(
                  width: 90,
                  height: 80,
                  color: AppColors.surface,
                  child: Column(
                    children: [
                      Text("12",style: TextStyle(fontWeight: FontWeight.bold ,
                      fontSize: 20 , color: AppColors.primaryText),),
                      Text("Quizes",
                        style: TextStyle(fontSize: 16 , color: AppColors.secondaryText),),
                    ],
                  ),
                ),
               SizedBox(
                 width: 15,
               ),
                Container(
                  width: 90,
                  height: 80,
                  color: AppColors.surface,
                  child: Column(
                    children: [
                      Text("82%",style: TextStyle(fontWeight: FontWeight.bold ,
                          fontSize: 20 , color: AppColors.primaryText),),
                      Text("Avg Score",
                        style: TextStyle(fontSize: 16 , color: AppColors.secondaryText),),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 90,
                  height: 80,
                  color: AppColors.surface,
                  child: Column(
                    children: [
                      Text("#5",style: TextStyle(fontWeight: FontWeight.bold ,
                          fontSize: 20 , color: AppColors.primaryText),),
                      Text("Class rank",
                        style: TextStyle(fontSize: 16 , color: AppColors.secondaryText),),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
           Row(
             children: [
               Container(
                 height: 150,
                 width: 480,
                 color: AppColors.surface,
                 child: Column(
                   children: [
                     Row(
                       children: [
                         Icon(Icons.email,size: 18,),
                         Column(
                           children: [
                             Text("Email", style: TextStyle(color: AppColors.secondaryText,),),
                             Text("farkhunda@gmail.com",style: TextStyle(color: AppColors.primaryText),),
                           ],
                         ),
                       ],
                     ),
                     Row(
                       children: [
                         Icon(Icons.school,size: 18,),
                         Column(
                           children: [
                             Text("School", style: TextStyle(color: AppColors.secondaryText,),),
                             Text("City Public School",style: TextStyle(color: AppColors.primaryText),),
                           ],
                         ),
                       ],
                     ),
                     Row(
                       children: [
                         Icon(Icons.date_range,size: 18,),
                         Column(
                           children: [
                             Text("joined", style: TextStyle(color: AppColors.secondaryText,),),
                             Text("March 2026",style: TextStyle(color: AppColors.primaryText),),
                           ],
                         ),
                       ],
                     ),

                   ],
                 ),

               ),

             ],
           ),
        SizedBox(height: 50,),
        Row(
          children: [
            Container( height: 70,
              width: 480,
              color: AppColors.surface,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.notifications),
                      Text("Notifications"),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_sharp, size: 18,)
                    ],
                  ),
                  Row(children: [
                    Icon(Icons.logout,size: 18,color: AppColors.logoutDanger,),
                    Text("Log out" , style: TextStyle(color: AppColors.logoutDanger),),
                  ],
                  ),
                ],
              ),
            ),
          ],
        )
          ],
        ),
      ),
    );
  }
}
