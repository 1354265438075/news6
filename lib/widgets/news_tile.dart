import 'package:flutter/material.dart';
import 'package:newsapp/models/Article_models.dart';
class NewsTile extends StatelessWidget {

  const NewsTile({super.key,required this.arc});
  final ArticleModels arc;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius:BorderRadius.circular(6),
          child:arc.image!=null? Image.network(
            arc.image!
            ,
            height:200,
            width: double.infinity,
            fit:BoxFit.cover,

          ):Image.asset("assets/images/onboarding_image1.png"),
        ),
           const SizedBox(
            height: 12,
          ),
        Text("${arc.title!=null?arc.title!:"empty..."}",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(
          color: Colors.black87,
          fontSize: 20,
          fontWeight: FontWeight.w500,

        ),
        ),

        Text("${arc.subtitle!=null?arc.subtitle!:"Error"}",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
          fontWeight: FontWeight.bold,

        ),
        ),



      ],
    );
  }
}
