import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/controller/home_get_controller.dart';
import 'package:untitled/model/api_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeGetController homeGetController =Get.put(HomeGetController());
    return Scaffold(
      body: FutureBuilder(future: homeGetController.apiFetch(), builder: (context, snapshot) {
        if(snapshot.hasData)
          {
            ApiMusicModel apiMusicModel = snapshot.data!;
            return Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.red,
            ).paddingAll(20);
          }else if(snapshot.hasError)
            {
            snapshot.data;
              return Center(child: Text(snapshot.error.toString()));
            }
        else{
          return const Center(child: CircularProgressIndicator());
        }
      },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // Get.snackbar("snakeBar", "Avesh nooob hai",backgroundColor: Colors.blue.withOpacity(0.3),snackStyle: SnackStyle.FLOATING);
      },),
    );
  }
}

