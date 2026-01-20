class CategoryInfo {
  final String name;
  final String title;
  final String definition;

  CategoryInfo({
    required this.name,
    required this.title,
    required this.definition,
  });
}

final List<CategoryInfo> allCategories = [
  CategoryInfo(
    name: 'logical',
    title: 'Logical Reasoning',
    definition: 'Helps you spot patterns and solve problems using logic.',
  ),
  CategoryInfo(
    name: 'verbal',
    title: 'Verbal Reasoning',
    definition: 'Improves your vocabulary, reading, and understanding of words.',
  ),
  CategoryInfo(
    name: 'numerical',
    title: 'Numerical Reasoning',
    definition: 'Teaches you to work with numbers, calculations, and data.',
  ),
  CategoryInfo(
    name: 'spatial',
    title: 'Spatial Reasoning',
    definition: 'Helps you visualize shapes, space, and how things fit together.',
  ),
  CategoryInfo(
    name: 'technical',
    title: 'Technical/Mechanical',
    definition: 'Shows how tools, machines, and simple physics work.',
  ),
  CategoryInfo(
    name: 'interpersonal',
    title: 'Interpersonal/Situational',
    definition: 'Teaches skills for dealing with people and workplace situations.',
  ),
  CategoryInfo(
    name: 'creative',
    title: 'Creative',
    definition: 'Encourages imagination and coming up with new ideas.',
  ),
  CategoryInfo(
    name: 'physical',
    title: 'Physical/Active',
    definition: 'Focuses on hands-on tasks and staying physically active.',
  ),
];
