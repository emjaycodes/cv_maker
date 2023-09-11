import 'package:cv_maker/widgets/constants.dart';
import 'package:cv_maker/widgets/button.dart';
import 'package:flutter/material.dart';

import '../models/cv_model.dart';
import '../widgets/textfield.dart';

class EditCVPage extends StatefulWidget {
  
  final CvDetails cvDetails;

   const EditCVPage({super.key, required this.cvDetails });

  @override
  EditCVPageState createState() => EditCVPageState();
}

class EditCVPageState extends State<EditCVPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController slackUsernameController = TextEditingController();
  TextEditingController githubHandleController = TextEditingController();
  TextEditingController personalBioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize text controllers with the current data
    fullNameController.text = widget.cvDetails.fullName;
    slackUsernameController.text = widget.cvDetails.githubHandle;
    githubHandleController.text = widget.cvDetails.githubHandle;
    personalBioController.text = widget.cvDetails.personalBio;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit CV'),
        backgroundColor: kprimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CvTexfield(labelText: 'Full Name', fullNameController: fullNameController,),
            const SizedBox(height: 16),
            CvTexfield(labelText: 'slackUsername', fullNameController: slackUsernameController),
            const SizedBox(height: 16),
            CvTexfield(labelText: 'githubHandle', fullNameController: githubHandleController),
            const SizedBox(height: 16),
            CvTexfield(labelText: 'personalBio', fullNameController: personalBioController),
            const SizedBox(height: 16),
            CustomButton(text: 'EDIT', onTap: () {
                // Save the edited CV data and return to the CV view page
                final editedData = {
                  'fullName': fullNameController.text,
                  'slackUsername': slackUsernameController.text,
                  'githubHandle': githubHandleController.text,
                  'personalBio': personalBioController.text,
                };
                Navigator.pop(context, editedData);
              },)
          ],
        ),
      ),
    );
  }
}

