import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_training_1/pages/Home/home_app_cubit.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  List<Color> colorsLis = [
    Colors.white,
    Colors.pink,
    Colors.black,
    Colors.black12,
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.greenAccent,
  ];

  var colorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: BlocBuilder<HomeAppCubit, HomeAppState>(
            builder: (context, state) {
              if (state is ColorIndexHomeApp) {
                colorIndex = state.colorIndex;
              }
              return Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Card(
                            margin: EdgeInsets.zero,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Card(
                            margin: EdgeInsets.zero,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Card(
                            margin: EdgeInsets.zero,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: InkWell(
                            onTap: () {
                              print('Amm click');
                              context
                                  .read<HomeAppCubit>()
                                  .changeCardColor(colorIndex);
                            },
                            child: Card(
                              child: const Center(
                                child: Text(
                                  'Change Color',
                                  style: TextStyle(
                                      fontFamily: 'Heebo', fontSize: 12),
                                ),
                              ),
                              margin: EdgeInsets.zero,
                              color: colorsLis[colorIndex],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                        width: 100,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Card(
                            margin: EdgeInsets.zero,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                        width: 100,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Card(
                            margin: EdgeInsets.zero,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: GestureDetector(
                        onTap: () {
                          context.read<HomeAppCubit>().toUserPage(context);
                        },
                        child: Card(
                          child: Center(child: Text('User Page')),
                          margin: EdgeInsets.zero,
                          color: Colors.amberAccent,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: GestureDetector(
                        onTap: () {
                          context.read<HomeAppCubit>().toRewardPage(context);
                        },
                        child: Card(
                          child: Center(child: Text('Reward Page')),
                          margin: EdgeInsets.zero,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: GestureDetector(
                        onTap: () {
                          context.read<HomeAppCubit>().toTransferPage(context);
                        },
                        child: Card(
                          child: Center(child: Text('Transfer Page')),
                          margin: EdgeInsets.zero,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Card(
                        margin: EdgeInsets.zero,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Card(
                        margin: EdgeInsets.zero,
                        color: Colors.amberAccent,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Card(
                        margin: EdgeInsets.zero,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Card(
                        margin: EdgeInsets.zero,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Card(
                        margin: EdgeInsets.zero,
                        color: Colors.blueAccent,
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      )),
    );
  }
}
