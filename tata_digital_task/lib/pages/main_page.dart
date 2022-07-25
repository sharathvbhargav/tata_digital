import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tata_digital_task/helper/controllers/api_controller.dart';
import 'package:tata_digital_task/utils/dimensions.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //Application Title
      appBar:AppBar(
        title: const Text("News"),
      ),

      //Application Body
      body: GetBuilder<ApiController>(builder: (news){
        return Container(
          margin: EdgeInsets.only(top: Dimensions.height10),
          child: ListView.builder(
            itemCount: news.newsList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10, bottom: Dimensions.height10 ),
                child: Row(children: [
                  //Network Image Section : Image Url from API shown
                  Container(
                    width:Dimensions.listImgSize,
                    height: Dimensions.listImgSize,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white38,
                        image: DecorationImage(
                            fit: BoxFit.cover ,
                            image: NetworkImage(
                                news.newsList[index].imageUrl!
                            )
                        )
                    ),
                  ),
                  //Text Section : Author, Content and Date is printed
                  Expanded(
                    child: Container(
                      height: Dimensions.listViewTextContainer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(Dimensions.radius20), bottomRight: Radius.circular(Dimensions.radius20)),
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //Author name text box
                            Text(
                              news.newsList[index].author!,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20
                              )
                            ),
                            SizedBox(height: Dimensions.height10),
                            //Content description text box
                            Text(
                              news.newsList[index].content!,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: const TextStyle(fontSize: 13, color: Colors.grey)
                            ),
                            SizedBox(height: Dimensions.height10),
                            //Date text box
                            Text(
                              news.newsList[index].date!,
                              style: const TextStyle(fontSize: 10, color: Colors.grey)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
              );
            }
          ),
        );
      }),
    );
  }
}
