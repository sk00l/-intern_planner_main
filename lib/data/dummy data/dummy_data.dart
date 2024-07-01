import 'package:intern_planner/data/models/user_model.dart';

List<UserModel> generateData() {
  return [
    UserModel(
      sn: 1,
      type: 'Project',
      name: 'Project Alpha',
      github: 'https://example.com/project-alpha',
      demoLink: 'https://example.com/demo-alpha',
    ),
    UserModel(
      sn: 2,
      type: 'Blog',
      name: 'Blog on Flutter',
      github: 'https://example.com/blog-flutter',
      demoLink: 'https://example.com/demo-flutter',
    ),
    UserModel(
      sn: 3,
      type: 'Project',
      name: 'Project Beta',
      github: 'https://example.com/project-beta',
      demoLink: 'https://example.com/demo-beta',
    ),
  ];
}
