import 'package:flutter/material.dart';
import 'package:shopping/weidget/app_aapbar.dart';
import 'package:shopping/weidget/category_container.dart';
import '../models/controller.dart';
import '../models/item_controller.dart';
import '../weidget/item_container.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {

  Controller controller=Controller();
  ItemController itemController=ItemController();

  @override
  void initState() {
    controller.selectedCategory=controller.categories.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppAppBar(
          upperTitle: 'Make Home',
            title: 'Beautiful',
          leading: Image.asset('assets/images/search.png'),
          trailing:  Image.asset('assets/images/shopping_bag.png'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children:[
            SizedBox(
              height: 68,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
               itemCount: controller.categories.length,
                itemBuilder: (context,index){
                  return CategoryContainer(
                    isSelected: controller.selectedCategory==controller.categories[index],
                    categoryName: controller.categories[index].title,
                    nameImage: controller.categories[index].image,
                    onTap: (){
                      controller.selectedCategory=controller.categories[index];
                      setState(() {

                      });
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 20,),
            Expanded(
                child:GridView.builder(
                  itemCount: itemController.items.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    childAspectRatio: 157/253,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return ItemContainer(
                        nameImage: itemController.items[index].image,
                        itemName: itemController.items[index].title,
                        itemPrice: itemController.items[index].price);
                  },

                ),
            ),
            ]
            ),
        ),
    );
  }
}
