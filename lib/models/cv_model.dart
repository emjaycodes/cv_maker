class CvDetails {
  // Initialize your CV data
  String fullName;
  String slackUsername;
  String githubHandle;
  String personalBio;

  CvDetails(
      {required this.fullName,
      required this.slackUsername,
      required this.githubHandle,
      required this.personalBio});

    void updateCvDetails(Map<String, String> updatedDetails) {
  fullName = updatedDetails['fullName'] ?? fullName;
  slackUsername = updatedDetails['username'] ?? slackUsername;
  githubHandle = updatedDetails['githubHandle'] ?? githubHandle;
  personalBio = updatedDetails['personalBio'] ?? personalBio;
}
}
