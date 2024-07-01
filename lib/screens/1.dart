import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intern_planner/constants/app_color.dart';
import 'package:intern_planner/data/dummy%20data/dummy_data.dart';
import 'package:intern_planner/data/models/user_model.dart';
import 'package:url_launcher/url_launcher.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  List<UserModel> userModel = generateData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBackground,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10.0),
          child: Container(
            height: 1.0,
            color: Colors.grey[300],
          ),
        ),
        title: const Center(
          child: Text(
            "Flutter Intern Planner",
            style: TextStyle(fontSize: 28.0),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'User Profile',
                style: TextStyle(fontSize: 40),
              ),
              Container(
                height: 400,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: AppColor.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.boxShadow,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            'https://media.istockphoto.com/id/685132245/photo/mature-businessman-smiling-over-white-background.jpg?s=612x612&w=0&k=20&c=OJk6U-oCZ31F3TGmarAAg2jVli8ZWTagAcF4P-kNIqA='),
                      ),
                      Text(
                        "Saurav Bhattarai",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Computer Engineer",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Start Date",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: AppColor.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.boxShadow,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Table(
                  columnWidths: const <int, TableColumnWidth>{
                    0: FlexColumnWidth(0.2),
                    1: FlexColumnWidth(0.2),
                    2: FlexColumnWidth(0.2),
                    3: IntrinsicColumnWidth(),
                    4: FlexColumnWidth(1),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  border: const TableBorder(
                    horizontalInside: BorderSide(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                    // verticalInside: BorderSide(
                    //   color: Colors.grey,
                    //   style: BorderStyle.solid,
                    //   width: 1.0,
                    // ),
                  ),
                  children: [
                    const TableRow(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12)),
                        color: Colors.redAccent,
                      ),
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text("SN"),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text("Type"),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text("Name"),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text("Github"),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text("Demo"),
                          ),
                        ),
                      ],
                    ),
                    ...userModel.map((userModel) {
                      return TableRow(
                        children: [
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(userModel.sn.toString()),
                            ),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(userModel.type),
                            ),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(userModel.name),
                            ),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: IconButton(
                                  onPressed: () {
                                    launchUrl(Uri.parse(userModel.github));
                                  },
                                  icon: const Icon(FontAwesomeIcons.github)),
                            ),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(userModel.demoLink),
                            ),
                          ),
                        ],
                      );
                    }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
