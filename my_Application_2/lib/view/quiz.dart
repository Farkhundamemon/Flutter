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
          padding: EdgeInsets.all(13),
          decoration: BoxDecoration(
              color: AppColors.surface,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.dividerAndBorder),
          ),
          child: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new),color: AppColors.primaryText,iconSize: 18,),
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
            child: IconButton(onPressed: () {}, icon: Icon(Icons.edit_outlined),color: AppColors.primaryText, iconSize: 18,)
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(18)
                  ),
                  child: Column(
                    children: [
                      Text("12",style: TextStyle(fontWeight: FontWeight.bold ,
                      fontSize: 20 , color: AppColors.primaryText),),
                      Text("Quizes",
                        style: TextStyle(fontSize: 12 , color: AppColors.secondaryText),),
                    ],
                  ),
                ),
               SizedBox(
                 width: 15,
               ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 15),
                  decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(18)
                  ),
                  child: Column(
                    children: [
                      Text("82%",style: TextStyle(fontWeight: FontWeight.bold ,
                          fontSize: 20 , color: AppColors.primaryText),),
                      Text("Avg Score",
                        style: TextStyle(fontSize: 12 , color: AppColors.secondaryText),),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 15),
                  decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(18)
                  ),
                  child: Column(
                    children: [
                      Text("#5",style: TextStyle(fontWeight: FontWeight.bold ,
                          fontSize: 20 , color: AppColors.primaryText),),
                      Text("Class rank",
                        style: TextStyle(fontSize: 12 , color: AppColors.secondaryText),),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 23,vertical:16 ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.surface,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.email_outlined,size: 18,),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email", style: TextStyle(color: AppColors.secondaryText,),),
                          Text("farkhunda@gmail.com",style: TextStyle(color: AppColors.primaryText),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Divider(color: AppColors.dividerAndBorder,),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Icon(Icons.school_outlined,size: 18,),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("School", style: TextStyle(color: AppColors.secondaryText,),),
                          Text("City Public School",style: TextStyle(color: AppColors.primaryText),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Divider(color: AppColors.dividerAndBorder,),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Icon(Icons.date_range_outlined,size: 18,),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 23,vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.surface,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.notifications_outlined),
                      SizedBox(width: 8,),

                      Text("Notifications"),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded, size: 13,)
                    ],
                  ),
                  SizedBox(height: 15,),
                  Divider(color: AppColors.dividerAndBorder,),
                  SizedBox(height: 15,),
                  Row(children: [
                    Icon(Icons.logout_outlined,size: 18,color: AppColors.logoutDanger,),
                    SizedBox(width: 8,),
                    Text("Log out" , style: TextStyle(color: AppColors.logoutDanger),),
                  ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
