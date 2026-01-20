import 'package:hive/hive.dart';
import '../models/aptitudeQuestions.dart';

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


/// Returns 12 questions per category
List<Question> getQuestionsForCategory(String category) {
  switch (category.toLowerCase()) {

  // ----------------- Category 1: Logical -----------------
    case 'logical':
      return [
        // Easy
        Question(
            id: 'lr_e1',
            category: 'logical',
            questionText: 'Find the next number in the series: 2, 4, 8, 16, ?',
            options: ['24', '32', '30', '48'],
            correctOptionIndex: 1,
            difficulty: 'easy',
            explanation: 'Each number is double the previous one: 2×2=4, 4×2=8, 8×2=16, 16×2=32.'
        ),
        Question(
            id: 'lr_e2',
            category: 'logical',
            questionText: 'If CAT is coded as 3120, what is DOG?',
            options: ['4157', '4146', '5157', '4158'],
            correctOptionIndex: 0,
            difficulty: 'easy',
            explanation: 'Each letter gets its position in the alphabet: C=3, A=1, T=20 → 3120. So D=4, O=15, G=7 → 4157.'
        ),
        Question(
            id: 'lr_e3',
            category: 'logical',
            questionText: 'Which word does NOT belong? Apple, Banana, Carrot, Grape.',
            options: ['Apple', 'Banana', 'Carrot', 'Grape'],
            correctOptionIndex: 2,
            difficulty: 'easy',
            explanation: 'Apple, Banana and Grape are fruits. Carrot is a vegetable.'
        ),
        Question(
            id: 'lr_e4',
            category: 'logical',
            questionText: 'If all Bloops are Razzies and all Razzies are Lurgs, are all Bloops Lurgs?',
            options: ['Yes', 'No', 'Cannot tell'],
            correctOptionIndex: 0,
            difficulty: 'easy',
            explanation: 'Yes — if every Bloop is a Razzie, and every Razzie is a Lurg, then every Bloop must also be a Lurg.'
        ),

        // Medium
        Question(
            id: 'lr_m1',
            category: 'logical',
            questionText: 'Find the missing number: 7, 10, 14, 19, ?, 32.',
            options: ['24', '25', '26', '27'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'The gaps get bigger by 1 each time: +3, +4, +5, +6, +7. So 19 + 6 = 25.'
        ),
        Question(
            id: 'lr_m2',
            category: 'logical',
            questionText: 'Look at the sequence: (1, 1), (2, 4), (3, 9), (4, ?).',
            options: ['12', '16', '20', '25'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'The second number is the first number squared: 1²=1, 2²=4, 3²=9, 4²=16.'
        ),
        Question(
            id: 'lr_m3',
            category: 'logical',
            questionText: 'If "Red" means "Blue", "Blue" means "Green", and "Green" means "Yellow", what is the color of the sky?',
            options: ['Blue', 'Red', 'Green', 'Yellow'],
            correctOptionIndex: 2,
            difficulty: 'medium',
            explanation: 'The sky is normally blue. But here blue really means green. So the sky color in this code is green.'
        ),
        Question(
            id: 'lr_m4',
            category: 'logical',
            questionText: 'Pointing to a photograph, a man says, "I have no brother or sister, but that man’s father is my father’s son." Who is in the photo?',
            options: ['His Father', 'His Son', 'Himself', 'His Grandfather'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'The speaker has no siblings, so "my father’s son" is the speaker himself. That man’s father is the speaker → the photo shows his son.'
        ),

        // Hard
        Question(
            id: 'lr_h1',
            category: 'logical',
            questionText: 'Find the missing number: 3, 8, 22, 63, 185, ?',
            options: ['285', '310', '550', '548'],
            correctOptionIndex: 2,
            difficulty: 'hard',
            explanation: 'The pattern is ×3 minus increasing numbers: 3×3-1=8, 8×3-2=22, 22×3-3=63, 63×3-4=185, 185×3-5=550.'
        ),
        Question(
            id: 'lr_h2',
            category: 'logical',
            questionText: 'A cube is painted red on all faces and cut into 27 small cubes of equal size. How many cubes have only one face painted?',
            options: ['4', '6', '8', '12'],
            correctOptionIndex: 1,
            difficulty: 'hard',
            explanation: 'Only the center cube of each of the 6 faces has exactly one face painted. So 6 cubes.'
        ),
        Question(
            id: 'lr_h3',
            category: 'logical',
            questionText: 'CAR = 44, BUS = 84, TRUCK = ? (Sum of letter positions × 2; A=1, Z=26)',
            options: ['146', '182', '130', '164'],
            correctOptionIndex: 0,
            difficulty: 'hard',
            explanation: 'C=3 A=1 R=18 → 22 × 2 = 44. B=2 U=21 S=19 → 42 × 2 = 84. T=20 R=18 U=21 C=3 K=11 → 73 × 2 = 146.'
        ),
        Question(
            id: 'lr_h4',
            category: 'logical',
            questionText: 'In a row of 40 girls, Reena is 14th from the left. What is her position from the right?',
            options: ['26th', '27th', '25th', '28th'],
            correctOptionIndex: 1,
            difficulty: 'hard',
            explanation: 'Total 40 girls. 14th from left means 40 − 14 + 1 = 27th from right.'
        ),
      ];


  // ----------------- Category 2: Verbal -----------------
    case 'verbal':
      return[
        // Easy
        Question(
            id: 'vr_e1',
            category: 'verbal',
            questionText: 'Soldier is to Regiment as ____ is to ____.',
            options: ['Wheels : Bearings', 'Book : Printer', 'Star : Galaxy', 'Nitrogen : Gas'],
            correctOptionIndex: 2,
            difficulty: 'easy',
            explanation: 'One soldier is part of a regiment. One star is part of a galaxy.'
        ),
        Question(
            id: 'vr_e2',
            category: 'verbal',
            questionText: 'Choose the synonym for "Happy":',
            options: ['Somber', 'Joyful', 'Melancholy', 'Tired'],
            correctOptionIndex: 1,
            difficulty: 'easy',
            explanation: 'Joyful means the same as happy.'
        ),
        Question(
            id: 'vr_e3',
            category: 'verbal',
            questionText: 'Choose the antonym for "Gigantic":',
            options: ['Huge', 'Tiny', 'Massive', 'Wide'],
            correctOptionIndex: 1,
            difficulty: 'easy',
            explanation: 'Tiny means the opposite of gigantic (very big).'
        ),
        Question(
            id: 'vr_e4',
            category: 'verbal',
            questionText: 'Complete the sentence: The sun ____ in the east.',
            options: ['Rised', 'Rise', 'Rises', 'Raising'],
            correctOptionIndex: 2,
            difficulty: 'easy',
            explanation: 'Correct grammar: The sun rises in the east.'
        ),

        // Medium
        Question(
            id: 'vr_m1',
            category: 'verbal',
            questionText: 'Editor is to Magazine as Director is to ____.',
            options: ['Novel', 'Film', 'Poem', 'Song'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'An editor controls a magazine. A director controls a film.'
        ),
        Question(
            id: 'vr_m2',
            category: 'verbal',
            questionText: 'Identify the correctly spelled word:',
            options: ['Accomodate', 'Accommodate', 'Acomodate', 'Accommadate'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'The correct spelling is Accommodate.'
        ),
        Question(
            id: 'vr_m3',
            category: 'verbal',
            questionText: 'Find the odd one out:',
            options: ['Justify', 'Rationalize', 'Explain', 'Fabricate'],
            correctOptionIndex: 3,
            difficulty: 'medium',
            explanation: 'Justify, rationalize and explain mean giving real reasons. Fabricate means making up something false.'
        ),
        Question(
            id: 'vr_m4',
            category: 'verbal',
            questionText: 'Analogy: "Oasis" is to "Desert" as "Island" is to ____.',
            options: ['Land', 'Ocean', 'Forest', 'Mountain'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'An oasis is a small area with water in a big dry desert. An island is a small area of land in a big ocean.'
        ),

        // Hard
        Question(
            id: 'vr_h1',
            category: 'verbal',
            questionText: '"Ephemeral" most nearly means:',
            options: ['Eternal', 'Short-lived', 'Spiritual', 'Large'],
            correctOptionIndex: 1,
            difficulty: 'hard',
            explanation: 'Ephemeral means something lasts only a short time.'
        ),
        Question(
            id: 'vr_h2',
            category: 'verbal',
            questionText: 'Choose the correct sentence:',
            options: ['Neither of the candidates are ready.', 'Neither of the candidates is ready.', 'Neither of the candidates were ready.', 'Both A and C.'],
            correctOptionIndex: 1,
            difficulty: 'hard',
            explanation: 'Neither is singular, so we use "is" (not "are" or "were").'
        ),
        Question(
            id: 'vr_h3',
            category: 'verbal',
            questionText: '"Mitigate" is to "Aggravate" as "Ameliorate" is to ____.',
            options: ['Improve', 'Deteriorate', 'Soften', 'Satisfy'],
            correctOptionIndex: 1,
            difficulty: 'hard',
            explanation: 'Mitigate = make less bad. Aggravate = make worse. Ameliorate = make better. So the opposite is Deteriorate = make worse.'
        ),
        Question(
            id: 'vr_h4',
            category: 'verbal',
            questionText: '"The argument was cogent." Cogent means:',
            options: ['Weak', 'Convincing', 'Long', 'Loud'],
            correctOptionIndex: 1,
            difficulty: 'hard',
            explanation: 'Cogent means clear, logical and very convincing.'
        ),
      ];

  // ---------------- Category 3: Numerical Reasoning ----------------
    case 'numerical':
      return [
        // Easy
        Question(id: 'nr_e1', category: 'numerical', questionText: 'What is 15% of 200?', options: ['20', '25', '30', '35'], correctOptionIndex: 2, difficulty: 'easy', explanation: '15% means 15/100. 15/100 × 200 = 30.'),
        Question(id: 'nr_e2', category: 'numerical', questionText: 'Solve: 12 + (4 × 3) - 2.', options: ['46', '22', '24', '18'], correctOptionIndex: 1, difficulty: 'easy', explanation: 'Do multiplication first: 4×3=12. Then 12 + 12 - 2 = 22.'),
        Question(id: 'nr_e3', category: 'numerical', questionText: 'If a pen costs \$2.50, how much do 10 pens cost?', options: ['\$20', '\$25', '\$30', '\$22.50'], correctOptionIndex: 1, difficulty: 'easy', explanation: '2.50 × 10 = 25.'),
        Question(id: 'nr_e4', category: 'numerical', questionText: 'What is the average of 10, 20, and 30?', options: ['15', '20', '25', '60'], correctOptionIndex: 1, difficulty: 'easy', explanation: 'Add them: 10+20+30=60. Divide by 3: 60÷3=20.'),

        // Medium
        Question(id: 'nr_m1', category: 'numerical', questionText: 'A car travels 180 miles in 3 hours. What is its average speed?', options: ['50 mph', '60 mph', '70 mph', '45 mph'], correctOptionIndex: 1, difficulty: 'medium', explanation: 'Speed = distance ÷ time. 180 miles ÷ 3 hours = 60 mph.'),
        Question(id: 'nr_m2', category: 'numerical', questionText: 'What is the value of X if 2X + 10 = 30?', options: ['5', '10', '15', '20'], correctOptionIndex: 1, difficulty: 'medium', explanation: 'Subtract 10: 2X = 20. Divide by 2: X = 10.'),
        Question(id: 'nr_m3', category: 'numerical', questionText: 'A shirt is \$40 after a 20% discount. What was the original price?', options: ['48', '50', '52', '60'], correctOptionIndex: 1, difficulty: 'medium', explanation: '\$40 is 80% of the original price. 40 ÷ 0.8 = 50.'),
        Question(id: 'nr_m4', category: 'numerical', questionText: 'The ratio of boys to girls in a class is 3:2. If there are 30 students, how many are boys?', options: ['12', '15', '18', '20'], correctOptionIndex: 2, difficulty: 'medium', explanation: 'Total parts = 3 + 2 = 5. Boys = 3/5 × 30 = 18.'),

        // Hard
        Question(id: 'nr_h1', category: 'numerical', questionText: 'A 737 flies 930 miles in 75 minutes. How far does it fly in 4 hours 45 minutes?', options: ['3534', '3552', '3368', '3450'], correctOptionIndex: 0, difficulty: 'hard', explanation: 'Speed = 930 ÷ 75 = 12.4 miles/min. 4h45m = 285 min. 12.4 × 285 = 3534 miles.'),
        Question(id: 'nr_h2', category: 'numerical', questionText: 'A tank can be filled by pipe A in 4 hours and pipe B in 6 hours. How long together?', options: ['2h', '2.4h', '3h', '5h'], correctOptionIndex: 1, difficulty: 'hard', explanation: 'Pipe A: 1/4 per hr, Pipe B: 1/6 per hr. Together: 1/4 + 1/6 = 5/12 per hr. Time = 12/5 = 2.4 h.'),
        Question(id: 'nr_h3', category: 'numerical', questionText: 'What is 17% of 1112, rounded?', options: ['173', '183', '179', '189'], correctOptionIndex: 3, difficulty: 'hard', explanation: '17% of 1112 = 189.04 → 189.'),
        Question(id: 'nr_h4', category: 'numerical', questionText: 'Right-angled triangle with sides 17m each. Hypotenuse?', options: ['23m', '24m', '25m', '27m'], correctOptionIndex: 1, difficulty: 'hard', explanation: 'Hypotenuse = √(17²+17²) ≈ 24 m.'),

      ];

  // ---------------- Category 4: Spatial Reasoning ----------------
    case 'spatial':
      return [
        // Easy
        Question(
            id: 'sr_e1',
            category: 'spatial',
            questionText: 'Which shape is a 3D version of a square?',
            options: ['Circle', 'Sphere', 'Cube', 'Pyramid'],
            correctOptionIndex: 2,
            difficulty: 'easy',
            explanation: 'A square is flat with 4 equal sides. A cube is the 3D version with 6 equal square faces.'
        ),
        Question(
            id: 'sr_e2',
            category: 'spatial',
            questionText: 'If you flip the letter "P" horizontally, what does it look like?',
            options: ['q', 'd', 'b', 'p'],
            correctOptionIndex: 0,
            difficulty: 'easy',
            explanation: 'Horizontal flip turns P into q.'
        ),
        Question(
            id: 'sr_e3',
            category: 'spatial',
            questionText: 'How many faces does a standard brick have?',
            options: ['4', '6', '8', '12'],
            correctOptionIndex: 1,
            difficulty: 'easy',
            explanation: 'A brick is shaped like a rectangular box → 6 faces.'
        ),
        Question(
            id: 'sr_e4',
            category: 'spatial',
            questionText: 'Identify the non-symmetrical shape:',
            options: ['Circle', 'Square', 'Scalene Triangle', 'Rectangle'],
            correctOptionIndex: 2,
            difficulty: 'easy',
            explanation: 'A scalene triangle has all sides different lengths — no symmetry.'
        ),

        // Medium
        Question(
            id: 'sr_m1',
            category: 'spatial',
            questionText: 'A paper is folded in half and a hole is punched in the corner. When unfolded, how many holes?',
            options: ['1', '2', '3', '4'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'Folding in half makes two layers. One hole goes through both → two holes when unfolded.'
        ),
        Question(
            id: 'sr_m2',
            category: 'spatial',
            questionText: 'Which net can be folded into a cube?',
            options: ['L-shape of 6', 'T-shape of 6', 'Straight line of 6', 'Square of 6'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'A valid cube net has exactly 6 squares and folds without overlapping. T-shape is one common valid net.'
        ),
        Question(
            id: 'sr_m3',
            category: 'spatial',
            questionText: 'If you rotate a clock 90 degrees clockwise, where is the "3"?',
            options: ['At 12', 'At 6', 'At 9', 'At 3'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: '90° clockwise turns the clock so the old 3 position moves to where 6 was.'
        ),
        Question(
            id: 'sr_m4',
            category: 'spatial',
            questionText: 'Mirror image of "WATER":',
            options: ['RETAW', 'ƎTAW', 'RETWA', 'ЯƎTAW'],
            correctOptionIndex: 3,
            difficulty: 'medium',
            explanation: 'A mirror reverses each letter left-to-right and the whole word order → ЯƎTAW.'
        ),

        // Hard
        Question(
            id: 'sr_h1',
            category: 'spatial',
            questionText: 'How many 1x1x1 cubes fit into a 4x4x4 cube?',
            options: ['16', '32', '64', '12'],
            correctOptionIndex: 2,
            difficulty: 'hard',
            explanation: 'Volume: 4 × 4 × 4 = 64 small 1×1×1 cubes.'
        ),
        Question(
            id: 'sr_h2',
            category: 'spatial',
            questionText: 'A solid cylinder is cut diagonally. What is the shape of the cross-section?',
            options: ['Circle', 'Ellipse', 'Rectangle', 'Triangle'],
            correctOptionIndex: 1,
            difficulty: 'hard',
            explanation: 'A straight diagonal cut through a cylinder makes an oval shape called an ellipse.'
        ),
        Question(
            id: 'sr_h3',
            category: 'spatial',
            questionText: 'In a painted cube cut into smaller cubes, what is the maximum number of painted faces on any single small cube?',
            options: ['3', '4', '5', '6'],
            correctOptionIndex: 0,
            difficulty: 'hard',
            explanation: 'Only the corner small cubes touch 3 outer faces of the big cube.'
        ),
        Question(
            id: 'sr_h4',
            category: 'spatial',
            questionText: 'Which of these folded nets would form a closed cube without overlaps or gaps?',
            options: ['Cross with arms of 1', 'Valid zigzag', 'Invalid straight line', 'Overlapping square'],
            correctOptionIndex: 1,
            difficulty: 'hard',
            explanation: 'A valid net folds into a cube with no overlapping faces and no missing parts. The zigzag (like stairs) is one valid example.'
        ),
      ];


  // ---------------- Category 5: Technical/Mechanical ----------------
    case 'technical':
      return [
        // Easy
        Question(
            id: 'tm_e1',
            category: 'technical',
            questionText: 'Which tool is best for tightening a bolt?',
            options: ['Hammer', 'Wrench', 'Saw', 'Ruler'],
            correctOptionIndex: 1,
            difficulty: 'easy',
            explanation: 'A wrench grips the bolt and turns it to make it tight.'
        ),
        Question(
            id: 'tm_e2',
            category: 'technical',
            questionText: 'What does a thermometer measure?',
            options: ['Speed', 'Weight', 'Temperature', 'Time'],
            correctOptionIndex: 2,
            difficulty: 'easy',
            explanation: 'A thermometer shows how hot or cold something is.'
        ),
        Question(
            id: 'tm_e3',
            category: 'technical',
            questionText: 'Which of these is a conductor of electricity?',
            options: ['Rubber', 'Wood', 'Copper', 'Plastic'],
            correctOptionIndex: 2,
            difficulty: 'easy',
            explanation: 'Copper lets electricity flow through it easily.'
        ),
        Question(
            id: 'tm_e4',
            category: 'technical',
            questionText: 'What simple machine is a seesaw?',
            options: ['Pulley', 'Lever', 'Inclined Plane', 'Wedge'],
            correctOptionIndex: 1,
            difficulty: 'easy',
            explanation: 'A seesaw is a lever — it moves up and down on a fixed point in the middle.'
        ),

        // Medium
        Question(
            id: 'tm_m1',
            category: 'technical',
            questionText: 'Which action is dangerous when operating a lathe?',
            options: ['Eye protection', 'Measuring while rotating', 'Guards in place', 'Tight clothing'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'Measuring while the lathe is spinning can catch your hand or tool and cause injury.'
        ),
        Question(
            id: 'tm_m2',
            category: 'technical',
            questionText: 'Two gears are touching. If Gear A moves clockwise, Gear B moves:',
            options: ['Clockwise', 'Counter-clockwise', 'Does not move', 'Faster'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'When two gears touch, they turn in opposite directions.'
        ),
        Question(
            id: 'tm_m3',
            category: 'technical',
            questionText: 'What is the purpose of a fuse in a circuit?',
            options: ['Increase power', 'Store energy', 'Prevent overcurrent', 'Change voltage'],
            correctOptionIndex: 2,
            difficulty: 'medium',
            explanation: 'A fuse breaks the circuit if too much electricity flows through it to stop damage or fire.'
        ),
        Question(
            id: 'tm_m4',
            category: 'technical',
            questionText: 'In a pulley system, more pulleys make lifting an object:',
            options: ['Harder', 'Easier', 'Faster', 'Heavier'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'Adding more pulleys spreads the weight so you need less force to lift it.'
        ),

        // Hard
        Question(
            id: 'tm_h1',
            category: 'technical',
            questionText: 'Which equipment determines the "twisting" of a bar?',
            options: ['Torsion tester', 'Micrometer', 'Caliper', 'Voltmeter'],
            correctOptionIndex: 0,
            difficulty: 'hard',
            explanation: 'A torsion tester measures how much a bar can twist before it breaks or deforms.'
        ),
        Question(
            id: 'tm_h2',
            category: 'technical',
            questionText: 'If a force is applied to a hydraulic piston with a small area, the pressure on a larger piston is:',
            options: ['Lower', 'Higher', 'The same', 'Zero'],
            correctOptionIndex: 2,
            difficulty: 'hard',
            explanation: 'In hydraulics, pressure stays the same throughout the fluid. Small area × big force = same pressure on large area.'
        ),
        Question(
            id: 'tm_h3',
            category: 'technical',
            questionText: 'A 10kg weight is 2m from a fulcrum. How much weight 1m away balances it?',
            options: ['5kg', '10kg', '20kg', '40kg'],
            correctOptionIndex: 2,
            difficulty: 'hard',
            explanation: 'Moment must balance: 10 kg × 2 m = 20 kg·m. On the other side: weight × 1 m = 20 kg·m → weight = 20 kg.'
        ),
        Question(
            id: 'tm_h4',
            category: 'technical',
            questionText: 'Which safety regulation applies specifically to MIG welding?',
            options: ['Check cylinder color', 'Hold work in hand', 'Relieve valve slowly', 'Ventilation'],
            correctOptionIndex: 3,
            difficulty: 'hard',
            explanation: 'MIG welding creates fumes and smoke, so good ventilation is required to avoid breathing in harmful gases.'
        ),
      ];

  // ----------------- Category 6: Interpersonal -----------------

    case 'interpersonal':
      return[
        // Easy
        Question(
            id: 'is_e1',
            category: 'interpersonal',
            questionText: 'A customer is angry. You should:',
            options: ['Shout back', 'Ignore them', 'Listen calmly', 'Walk away'],
            correctOptionIndex: 2,
            difficulty: 'easy',
            explanation: 'Stay calm and listen to understand their problem.'
        ),
        Question(
            id: 'is_e2',
            category: 'interpersonal',
            questionText: 'Best way to start a presentation?',
            options: ['Tell a joke', 'State the goal', 'Sit down', 'Read slides'],
            correctOptionIndex: 1,
            difficulty: 'easy',
            explanation: 'Tell the audience what the presentation is about right at the beginning.'
        ),
        Question(
            id: 'is_e3',
            category: 'interpersonal',
            questionText: 'If you are late for a meeting, you should:',
            options: ['Sneak in', 'Apologize briefly', 'Blame traffic', 'Not go'],
            correctOptionIndex: 1,
            difficulty: 'easy',
            explanation: 'Say sorry quickly and take your seat without making excuses.'
        ),
        Question(
            id: 'is_e4',
            category: 'interpersonal',
            questionText: 'Teamwork means:',
            options: ['Doing it all', 'Working together', 'Letting others work', 'Working alone'],
            correctOptionIndex: 1,
            difficulty: 'easy',
            explanation: 'Teamwork is when everyone works together to reach a common goal.'
        ),

        // Medium
        Question(
            id: 'is_m1',
            category: 'interpersonal',
            questionText: 'A colleague criticizes your work. You:',
            options: ['Get defensive', 'Ask for specific feedback', 'Complain to HR', 'Quit'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'Ask them to explain exactly what needs improvement so you can get better.'
        ),
        Question(
            id: 'is_m2',
            category: 'interpersonal',
            questionText: 'How to handle a deadline you can\'t meet?',
            options: ['Hope they don\'t notice', 'Inform manager early', 'Do a bad job', 'Call in sick'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'Tell your manager as soon as you know so they can help or adjust plans.'
        ),
        Question(
            id: 'is_m3',
            category: 'interpersonal',
            questionText: 'You see a co-worker being treated unfairly. You:',
            options: ['Stay out of it', 'Support them', 'Join in', 'Laugh'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'Offer support or speak up if it is safe to do so.'
        ),
        Question(
            id: 'is_m4',
            category: 'interpersonal',
            questionText: 'Active listening involves:',
            options: ['Checking phone', 'Nodding and summarizing', 'Interrupting', 'Zoning out'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'Show you are listening by nodding and repeating back what was said.'
        ),

        // Hard
        Question(
            id: 'is_h1',
            category: 'interpersonal',
            questionText: 'A high-stakes project has a conflict between two leaders. You:',
            options: ['Pick a side', 'Suggest a compromise', 'Let them fight', 'Resign'],
            correctOptionIndex: 1,
            difficulty: 'hard',
            explanation: 'Try to find a middle solution that works for both sides.'
        ),
        Question(
            id: 'is_h2',
            category: 'interpersonal',
            questionText: 'You are given a task you don\'t understand. You:',
            options: ['Guess', 'Ask for clarification', 'Delay it', 'Ask a friend'],
            correctOptionIndex: 1,
            difficulty: 'hard',
            explanation: 'Ask the person who gave the task to explain it clearly.'
        ),
        Question(
            id: 'is_h3',
            category: 'interpersonal',
            questionText: 'A client asks for something unethical. You:',
            options: ['Do it', 'Politely refuse/report', 'Negotiate a fee', 'Ask boss to do it'],
            correctOptionIndex: 1,
            difficulty: 'hard',
            explanation: 'Say no politely and tell your manager or report it if needed.'
        ),
        Question(
            id: 'is_h4',
            category: 'interpersonal',
            questionText: 'Most important trait for a leader?',
            options: ['Being the loudest', 'Empathy and Vision', 'Control', 'Knowing everything'],
            correctOptionIndex: 1,
            difficulty: 'hard',
            explanation: 'A good leader understands people (empathy) and has a clear direction (vision).'
        ),
      ];

  // ----------------- Category 7: Creative -----------------

    case 'creative':
        return [
          // Easy
          Question(
              id: 'cr_e1',
              category: 'creative',
              questionText: 'Which job sounds most enjoyable to you?',
              options: ['Following strict rules and procedures', 'Coming up with new ideas and designs', 'Analyzing data numbers', 'Managing teams and sales'],
              correctOptionIndex: 1,
              difficulty: 'easy',
              explanation: 'This choice shows you like making new and original things.'
          ),
          Question(
              id: 'cr_e2',
              category: 'creative',
              questionText: 'I enjoy activities where I can:',
              options: ['Organize things neatly', 'Express my imagination freely', 'Solve logical puzzles', 'Help people directly'],
              correctOptionIndex: 1,
              difficulty: 'easy',
              explanation: 'This shows you like using your imagination.'
          ),
          Question(
              id: 'cr_e3',
              category: 'creative',
              questionText: 'On a free day, I\'d rather:',
              options: ['Play sports outdoors', 'Draw, write stories, or make music', 'Read about science facts', 'Plan events with friends'],
              correctOptionIndex: 1,
              difficulty: 'easy',
              explanation: 'This choice means you enjoy creative activities.'
          ),
          Question(
              id: 'cr_e4',
              category: 'creative',
              questionText: 'A career that lets me create original work (like art, stories, or designs) appeals to me:',
              options: ['Strongly disagree', 'Disagree', 'Agree', 'Strongly agree'],
              correctOptionIndex: 3,
              difficulty: 'easy',
              explanation: 'Strongly agree = you really like creative work.'
          ),

          // Medium
          Question(
              id: 'cr_m1',
              category: 'creative',
              questionText: 'Which career would you enjoy more?',
              options: ['Accountant handling finances', 'Graphic designer creating visuals', 'Engineer building machines', 'Teacher instructing classes'],
              correctOptionIndex: 1,
              difficulty: 'medium',
              explanation: 'Graphic designer is about making new visual ideas.'
          ),
          Question(
              id: 'cr_m2',
              category: 'creative',
              questionText: 'I would like a job that involves:',
              options: ['Following set instructions every day', 'Inventing new concepts or experimenting with ideas', 'Collecting and organizing data', 'Negotiating deals'],
              correctOptionIndex: 1,
              difficulty: 'medium',
              explanation: 'Inventing and experimenting = creative thinking.'
          ),
          Question(
              id: 'cr_m3',
              category: 'creative',
              questionText: 'Working on projects with no clear "right" answer, where I can explore many possibilities, sounds:',
              options: ['Frustrating', 'Okay sometimes', 'Exciting and preferable', 'Only if structured'],
              correctOptionIndex: 2,
              difficulty: 'medium',
              explanation: 'Exciting = you enjoy open-ended creative work.'
          ),
          Question(
              id: 'cr_m4',
              category: 'creative',
              questionText: 'A role like writing scripts, composing music, or designing apps would suit me because:',
              options: ['I prefer routine tasks', 'I love expressing unique ideas', 'I\'d rather analyze problems logically', 'I enjoy leading others'],
              correctOptionIndex: 1,
              difficulty: 'medium',
              explanation: 'You like sharing your own original ideas.'
          ),

          // Hard
          Question(
              id: 'cr_h1',
              category: 'creative',
              questionText: 'If a high-paying job required strict rules and repetition vs. a lower-paying one allowing full creative freedom, I\'d choose:',
              options: ['The high-paying structured job', 'The creative one if it pays enough', 'The creative one even if it pays less', 'Depends on other factors'],
              correctOptionIndex: 2,
              difficulty: 'hard',
              explanation: 'Choosing creative even if it pays less = very strong creative interest.'
          ),
          Question(
              id: 'cr_h2',
              category: 'creative',
              questionText: 'I see myself thriving in a career that demands:',
              options: ['Precision and accuracy above all', 'Originality and thinking outside the box', 'Helping and supporting people emotionally', 'Persuading and leading groups'],
              correctOptionIndex: 1,
              difficulty: 'hard',
              explanation: 'Originality and new thinking = creative strength.'
          ),
          Question(
              id: 'cr_h3',
              category: 'creative',
              questionText: 'Compared to a routine office job with clear guidelines, one involving brainstorming, prototyping ideas, or artistic expression feels:',
              options: ['Too unpredictable', 'More rewarding long-term', 'Neutral', 'Fun short-term only'],
              correctOptionIndex: 1,
              difficulty: 'hard',
              explanation: 'More rewarding long-term = you value creative work highly.'
          ),
          Question(
              id: 'cr_h4',
              category: 'creative',
              questionText: 'The most important factor in choosing a career for me is:',
              options: ['High salary and job security', 'Opportunities to be creative and innovative', 'Intellectual analysis and research', 'Building relationships and teamwork'],
              correctOptionIndex: 1,
              difficulty: 'hard',
              explanation: 'Creative opportunities being most important = strong creative preference.'
          ),
        ]
        ;

  // ----------------- Category 8: Physical -----------------

    case 'physical':
        return [
          // Easy
          Question(
              id: 'pa_e1',
              category: 'physical',
              questionText: 'Which type of job sounds most enjoyable to you?',
              options: ['Sitting at a desk all day', 'Being physically active and moving around', 'Mostly thinking and planning', 'Talking online'],
              correctOptionIndex: 1,
              difficulty: 'easy',
              explanation: 'This shows you like jobs that involve movement.'
          ),
          Question(
              id: 'pa_e2',
              category: 'physical',
              questionText: 'I prefer activities where I can:',
              options: ['Read quietly', 'Use my hands and body a lot', 'Solve paper puzzles', 'Create digitally'],
              correctOptionIndex: 1,
              difficulty: 'easy',
              explanation: 'Using hands and body = physical preference.'
          ),
          Question(
              id: 'pa_e3',
              category: 'physical',
              questionText: 'On a free day, I\'d rather:',
              options: ['Watch movies', 'Play sports or hike', 'Play video games', 'Read books'],
              correctOptionIndex: 1,
              difficulty: 'easy',
              explanation: 'Sports or hiking = active physical choice.'
          ),
          Question(
              id: 'pa_e4',
              category: 'physical',
              questionText: 'A career that keeps you on your feet and active appeals to me:',
              options: ['Strongly disagree', 'Disagree', 'Agree', 'Strongly agree'],
              correctOptionIndex: 3,
              difficulty: 'easy',
              explanation: 'Strongly agree = you really want physical work.'
          ),

          // Medium
          Question(
              id: 'pa_m1',
              category: 'physical',
              questionText: 'Which career would you enjoy more?',
              options: ['Office data analyst', 'Construction worker building things', 'Software coder', 'Accountant'],
              correctOptionIndex: 1,
              difficulty: 'medium',
              explanation: 'Construction involves lots of physical movement and using your body.'
          ),
          Question(
              id: 'pa_m2',
              category: 'physical',
              questionText: 'I would like a job that involves:',
              options: ['Mostly sitting at a computer', 'Lifting, carrying, or using tools/machines', 'Writing reports', 'Managing from a desk'],
              correctOptionIndex: 1,
              difficulty: 'medium',
              explanation: 'Lifting and using tools = physical hands-on work.'
          ),
          Question(
              id: 'pa_m3',
              category: 'physical',
              questionText: 'Working outdoors in different weather conditions sounds:',
              options: ['Unappealing', 'Okay sometimes', 'Exciting and preferable', 'Only if paid extra'],
              correctOptionIndex: 2,
              difficulty: 'medium',
              explanation: 'Exciting and preferable = you enjoy active outdoor work.'
          ),
          Question(
              id: 'pa_m4',
              category: 'physical',
              questionText: 'A hands-on job like repairing vehicles or machinery would suit me because:',
              options: ['I hate getting dirty', 'I enjoy fixing things physically', 'I\'d rather design on computer', 'I prefer theory'],
              correctOptionIndex: 1,
              difficulty: 'medium',
              explanation: 'You like physically fixing and working on real things.'
          ),

          // Hard
          Question(
              id: 'pa_h1',
              category: 'physical',
              questionText: 'If a high-paying job required long physical labor vs. lower-paying desk job, I\'d choose:',
              options: ['Desk job every time', 'Physical if pays well enough', 'Physical even if pays less', 'Depends'],
              correctOptionIndex: 2,
              difficulty: 'hard',
              explanation: 'Choosing physical even if it pays less = very strong preference for active work.'
          ),
          Question(
              id: 'pa_h2',
              category: 'physical',
              questionText: 'I see myself thriving in a career that demands:',
              options: ['Mental focus without moving', 'Constant physical coordination and energy', 'Mostly social interaction', 'Creative planning'],
              correctOptionIndex: 1,
              difficulty: 'hard',
              explanation: 'Constant physical coordination and energy = strong fit for physical jobs.'
          ),
          Question(
              id: 'pa_h3',
              category: 'physical',
              questionText: 'Compared to routine office tasks, a job with travel, heavy equipment, or athletic demands feels:',
              options: ['Too tiring', 'More rewarding long-term', 'Neutral', 'Short-term only'],
              correctOptionIndex: 1,
              difficulty: 'hard',
              explanation: 'More rewarding long-term = you find physical/active work more satisfying.'
          ),
          Question(
              id: 'pa_h4',
              category: 'physical',
              questionText: 'The most important factor in choosing a career for me is:',
              options: ['High salary/stability', 'Being physically active/using my body', 'Intellectual challenge', 'Helping others emotionally'],
              correctOptionIndex: 1,
              difficulty: 'hard',
              explanation: 'Physical activity being most important = strong preference for hands-on, moving jobs.'
          ),
        ]
        ;

    default:
      return [];
  }
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
