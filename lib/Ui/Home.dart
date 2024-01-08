import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/BloC/netflix_bloc.dart';

import '../Repository/Model_Class/NetflixModel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

late NetflixModel data;
TextEditingController controller = TextEditingController();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 45,
                width: 370,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red[50]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 40,
                      width: 250,
                      child: TextFormField(
                        controller: controller,
                        decoration: InputDecoration(
                            hintText: 'Search', border: InputBorder.none),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print(controller.text);
                        BlocProvider.of<NetflixBloc>(context)
                            .add(FetchNetflix(name: controller.text));
                      },
                      child: Container(
                        height: 40,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BlocBuilder<NetflixBloc, NetflixState>(
              builder: (context, state) {
                if (state is NetflixBlocLoading) {
                  print("loading");
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is NetflixBlocError) {
                  return Center(
                    child: Text('something else !!'),
                  );
                }
                if (state is NetflixBlocLoaded) {
                  data = BlocProvider.of<NetflixBloc>(context).netflixModel;
                  return Expanded(
                    child: ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              data.titles![index].jawSummary!.backgroundImage!
                                          .url ==
                                      ''
                                  ? Image.asset(
                                      "assets/img.png",
                                      height: 100,
                                    )
                                  : Image.network(
                                      data.titles![index].jawSummary!
                                          .backgroundImage!.url
                                          .toString(),
                                      height: 100,
                                      width: 200,
                                    ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                data.titles![index].jawSummary!.title
                                    .toString(),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            Divider(),
                        itemCount: data.titles!.length),
                  );
                } else {
                  return SizedBox(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: Column(
                              children: [
                                Container(
                                  height: 170,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[300]),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 30,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[400]),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Center(
                            child: Column(
                              children: [
                                Container(
                                  height: 170,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[300]),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 30,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[400]),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Center(
                            child: Column(
                              children: [
                                Container(
                                  height: 170,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[300]),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 30,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[400]),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Center(
                            child: Column(
                              children: [
                                Container(
                                  height: 170,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[300]),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 30,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[400]),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
