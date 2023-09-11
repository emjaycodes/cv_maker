import 'package:cv_maker/models/cv_model.dart';
import 'package:cv_maker/widgets/button.dart';
import 'package:flutter/material.dart';

import '../widgets/constants.dart';
import 'edit_cv.dart';

class CVViewPage extends StatefulWidget {
  @override
  CVViewPageState createState() => CVViewPageState();
}

class CVViewPageState extends State<CVViewPage> {
  CvDetails cvDetails = CvDetails(
      fullName: "Justice Nwogu",
      slackUsername: "Jaythedev",
      githubHandle: "emjaycodes",
      personalBio:
          "I'm a passionate Flutter developer and technical writer with a knack for crafting beautiful and performant mobile apps. I thrive on turning ideas into intuitive user experiences and love to explore the latest widgets and animations. ");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My CV'),
        backgroundColor: kprimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.50,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            cvDetails.fullName,
                            style: const TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 40,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'SlackName: ${cvDetails.slackUsername}',
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'GitHub Name: ${cvDetails.githubHandle}',
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            cvDetails.personalBio,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ))),
            const SizedBox(height: 16),
            CustomButton(
              text: 'EDIT CV',
              onTap: () async {
                // Navigate to the editing page and pass data
                final updateDetails = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditCVPage(
                      cvDetails: cvDetails,
                    ),
                  ),
                );
                if (updateDetails != null) {
                  setState(() {
                    cvDetails.updateCvDetails(updateDetails);
                  });
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
