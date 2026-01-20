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
            questionText: 'CAR = 44, BUS = 84, TRUCK = ?',
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


  // ---------------- Category: Technical/Mechanical (User-Directed Reasoning) ----------------
    case 'technical_mechanical':
      return [
        // Easy
        Question(
            id: 'tm_e1',
            category: 'technical',
            questionText: 'You need to hang a heavy mirror on a wall. Which of these would provide the most secure support?',
            options: ['Sticky tape', 'A thin sewing nail', 'A wall plug and screw', 'Blue tack'],
            correctOptionIndex: 2,
            difficulty: 'easy',
            explanation: 'A wall plug expands inside the wall to grip the material, allowing it to hold significantly more weight than a nail or adhesive.'
        ),
        Question(
            id: 'tm_e2',
            category: 'technical',
            questionText: 'You are trying to open a tight glass jar. Why does running the metal lid under hot water often help you open it?',
            options: ['It makes the glass shrink', 'The metal lid expands slightly', 'The water acts as a lubricant', 'The heat melts the glass'],
            correctOptionIndex: 1,
            difficulty: 'easy',
            explanation: 'Metals expand when heated. Warming the lid makes it slightly larger than the jar neck, loosening the grip.'
        ),
        Question(
            id: 'tm_e3',
            category: 'technical',
            questionText: 'You are using a screwdriver, but it keeps slipping out of the screw head. What is the most likely cause?',
            options: ['The screwdriver handle is too long', 'The tip size does not match the screw', 'You are turning it too slowly', 'The screw is made of wood'],
            correctOptionIndex: 1,
            difficulty: 'easy',
            explanation: 'Mechanical "fit" is essential; using a tip that is too small or the wrong shape prevents the tool from gripping the slots.'
        ),
        Question(
            id: 'tm_e4',
            category: 'technical',
            questionText: 'You notice a machine at your workplace is making a high-pitched squealing sound. What is usually the first thing you should apply?',
            options: ['Water', 'Sand', 'Lubricating oil', 'Glue'],
            correctOptionIndex: 2,
            difficulty: 'easy',
            explanation: 'Squealing is usually caused by friction between moving parts. Lubrication reduces this friction and prevents wear.'
        ),

        // Medium
        Question(
            id: 'tm_m1',
            category: 'technical',
            questionText: 'You are moving a heavy rock using a long metal bar as a lever. Where should you place the small stone (fulcrum) to make lifting easiest?',
            options: ['Right in the middle of the bar', 'Closest to your hands', 'Closest to the heavy rock', 'It makes no difference'],
            correctOptionIndex: 2,
            difficulty: 'medium',
            explanation: 'Placing the fulcrum close to the load increases your mechanical advantage, allowing you to lift more weight with less effort.'
        ),
        Question(
            id: 'tm_m2',
            category: 'technical',
            questionText: 'You have a flashlight that uses three batteries in a row. You put in new batteries, but it still won’t turn on. What should you check first?',
            options: ['If the batteries are facing the right way', 'If the plastic case is scratched', 'The color of the flashlight', 'If it is daytime'],
            correctOptionIndex: 0,
            difficulty: 'medium',
            explanation: 'Batteries must be oriented correctly (+ to -) for electricity to flow. This is the most common user-error in simple electronics.'
        ),
        Question(
            id: 'tm_m3',
            category: 'technical',
            questionText: 'You are pumping air into a bicycle tire. As the tire gets fuller, why does the pump handle become harder to push down?',
            options: ['The pump is getting tired', 'The air pressure inside the tire is pushing back', 'The rubber is getting thicker', 'The pump is leaking'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'As you compress more air into a fixed space, the internal pressure increases, requiring more force to overcome it.'
        ),
        Question(
            id: 'tm_m4',
            category: 'technical',
            questionText: 'You see two gears of different sizes connected by a belt. If the large gear turns once, the small gear will turn:',
            options: ['Exactly once', 'More than once', 'Less than once', 'Not at all'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'Because the small gear has a smaller circumference, it must complete multiple rotations to cover the same distance as one rotation of the large gear.'
        ),

        // Hard
        Question(
            id: 'tm_h1',
            category: 'technical',
            questionText: 'You are designing a simple bridge to span a small gap. Which shape would provide the strongest support for a heavy load in the center?',
            options: ['A flat plank', 'A triangle (A-frame)', 'A large square', 'A circle'],
            correctOptionIndex: 1,
            difficulty: 'hard',
            explanation: 'Triangles are the strongest structural shape because they do not deform under pressure; they distribute weight evenly to the supports.'
        ),
        Question(
            id: 'tm_h2',
            category: 'technical',
            questionText: 'You are wiring a room with several lamps. You want to ensure that if one bulb burns out, the others stay on. How should you wire them?',
            options: ['In a series circuit', 'In a parallel circuit', 'In a straight line', 'With thicker wires'],
            correctOptionIndex: 1,
            difficulty: 'hard',
            explanation: 'In a parallel circuit, each lamp has its own independent path to the power source. A break in one path does not affect the others.'
        ),
        Question(
            id: 'tm_h3',
            category: 'technical',
            questionText: 'You are using a "Block and Tackle" (system of pulleys) to lift an engine. If you add more pulleys to the system, what is the trade-off?',
            options: ['You need more force, but less rope', 'You need less force, but you must pull more rope', 'The engine gets heavier', 'The rope gets shorter'],
            correctOptionIndex: 1,
            difficulty: 'hard',
            explanation: 'Mechanical advantage is a trade-off. You save effort (force) but you have to pull the rope a much longer distance to move the load.'
        ),
        Question(
            id: 'tm_h4',
            category: 'technical',
            questionText: 'You are looking at a hydraulic system. If you push a small piston down 10cm, a larger piston at the other end moves up only 2cm. Why?',
            options: ['Energy is being lost', 'Fluid is leaking', 'Force is being multiplied at the larger piston', 'The small piston is broken'],
            correctOptionIndex: 2,
            difficulty: 'hard',
            explanation: 'Hydraulics follow the principle of Pascal’s Law. By moving a small volume a long distance, you can move a large volume (and much heavier weight) a short distance.'
        ),
      ];

  // ----------------- Category 6: Interpersonal -----------------
    case 'interpersonal':
      return [
        // Easy
        Question(
            id: 'is_e1',
            category: 'interpersonal',
            questionText: 'You are introduced to a new team member. What is the best way to make them feel welcome?',
            options: ['Wait for them to speak first', 'Briefly introduce yourself and offer help', 'Tell them all the office gossip', 'Give them a list of tasks immediately'],
            correctOptionIndex: 1,
            difficulty: 'easy',
            explanation: 'Proactive, friendly communication helps build rapport and reduces the anxiety of a new environment.'
        ),
        Question(
            id: 'is_e2',
            category: 'interpersonal',
            questionText: 'During a group discussion, you notice one person has not spoken yet. What do you do?',
            options: ['Assume they have nothing to say', 'Keep talking to fill the silence', 'Ask them for their opinion on the topic', 'Tell them they are being too quiet'],
            correctOptionIndex: 2,
            difficulty: 'easy',
            explanation: 'Inclusive leaders ensure everyone has a voice, which often leads to better team decisions.'
        ),
        Question(
            id: 'is_e3',
            category: 'interpersonal',
            questionText: 'You realize you accidentally sent an email with the wrong information. How do you handle this?',
            options: ['Delete the email from your sent box', 'Send a quick correction and apologize', 'Wait and see if anyone notices', 'Blame a technical glitch'],
            correctOptionIndex: 1,
            difficulty: 'easy',
            explanation: 'Taking immediate ownership of mistakes builds trust and professional integrity.'
        ),
        Question(
            id: 'is_e4',
            category: 'interpersonal',
            questionText: 'When someone is talking to you about a problem, what is the best way to show you are listening?',
            options: ['Checking your watch', 'Formulating your reply while they speak', 'Maintaining eye contact and nodding', 'Interrupting to give advice'],
            correctOptionIndex: 2,
            difficulty: 'easy',
            explanation: 'Non-verbal cues like eye contact demonstrate respect and active engagement.'
        ),

        // Medium
        Question(
            id: 'is_m1',
            category: 'interpersonal',
            questionText: 'A teammate is falling behind and it is affecting your work. How should you approach them?',
            options: ['Report them to the boss immediately', 'Offer to help them with their tasks', 'Ask if they are okay and discuss the delay', 'Ignore it and do your own work'],
            correctOptionIndex: 2,
            difficulty: 'medium',
            explanation: 'Address the issue directly but with empathy to find the root cause of the delay.'
        ),
        Question(
            id: 'is_m2',
            category: 'interpersonal',
            questionText: 'You disagree with a decision your supervisor made. What is the most professional response?',
            options: ['Complain to your coworkers', 'Do the opposite of what they asked', 'Request a private meeting to share your concerns', 'Stay silent but feel resentful'],
            correctOptionIndex: 2,
            difficulty: 'medium',
            explanation: 'Constructive disagreement should be handled privately and respectfully to maintain the professional relationship.'
        ),
        Question(
            id: 'is_m3',
            category: 'interpersonal',
            questionText: 'You are leading a meeting that is going off-topic. How do you get it back on track?',
            options: ['Tell everyone to be quiet', 'Politely acknowledge the points and refer back to the agenda', 'End the meeting early', 'Let the conversation continue'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'Facilitating a meeting involves balancing participation with a focus on the intended goals (the agenda).'
        ),
        Question(
            id: 'is_m4',
            category: 'interpersonal',
            questionText: 'You receive "constructive criticism" that feels a bit harsh. What is your first internal reaction?',
            options: ['Get angry and defend yourself', 'Ignore the person entirely', 'Pause and look for the useful truth in the message', 'Assume they dislike you personally'],
            correctOptionIndex: 2,
            difficulty: 'medium',
            explanation: 'Emotional maturity involves separating your ego from the feedback so you can use it to grow.'
        ),

        // Hard
        Question(
            id: 'is_h1',
            category: 'interpersonal',
            questionText: 'Two talented team members refuse to work together due to a personal grudge. As a leader, you:',
            options: ['Force them to sit in a room until they like each other', 'Assign them to separate projects permanently', 'Mediate a conversation focused on shared professional goals', 'Fire one of them'],
            correctOptionIndex: 2,
            difficulty: 'hard',
            explanation: 'Mediation focuses on "professional alignment"—finding a way to work together effectively despite personal differences.'
        ),
        Question(
            id: 'is_h2',
            category: 'interpersonal',
            questionText: 'You are pitching a new idea, but the senior management seems very skeptical. What is your strategy?',
            options: ['Give up immediately', 'Talk faster and louder to convince them', 'Listen to their specific concerns and provide data-backed answers', 'Tell them they don\'t understand the future'],
            correctOptionIndex: 2,
            difficulty: 'hard',
            explanation: 'Influencing others requires high empathy—understanding their fears/objections and addressing them with logic.'
        ),
        Question(
            id: 'is_h3',
            category: 'interpersonal',
            questionText: 'You have to deliver bad news (like a project cancellation) to your team. How do you do it?',
            options: ['Send a mass email on Friday evening', 'Be transparent about the reasons and allow for questions', 'Make it sound like a good thing', 'Blame the higher-ups'],
            correctOptionIndex: 1,
            difficulty: 'hard',
            explanation: 'Transparency and allowing for a "venting" or Q&A period maintains morale during difficult transitions.'
        ),
        Question(
            id: 'is_h4',
            category: 'interpersonal',
            questionText: 'A client is making demands that go beyond the original contract. How do you manage this?',
            options: ['Do the extra work for free to stay nice', 'Tell them "no" bluntly and hang up', 'Acknowledge the request and discuss the impact on cost/time', 'Ignore the request and hope they forget'],
            correctOptionIndex: 2,
            difficulty: 'hard',
            explanation: 'Effective negotiation involves setting boundaries while maintaining a helpful, solution-oriented attitude.'
        ),
      ];


  // ----------------- Category 7: Creative -----------------

    case 'creative':
      return [
        // Easy
        Question(
            id: 'cr_e1',
            category: 'creative',
            questionText: 'When working on a school project, which part do you enjoy most?',
            options: ['Formatting the bibliography', 'Designing the layout and visuals', 'Proofreading for errors', 'Organizing the project schedule'],
            correctOptionIndex: 1,
            difficulty: 'easy',
            explanation: 'Focusing on visuals and layout indicates an interest in aesthetic design.'
        ),
        Question(
            id: 'cr_e2',
            category: 'creative',
            questionText: 'How do you feel about trying a new hobby like photography or painting?',
            options: ['It seems boring', 'I would rather play video games', 'I find it exciting to learn new ways to create', 'I prefer sports'],
            correctOptionIndex: 2,
            difficulty: 'easy',
            explanation: 'Enthusiasm for artistic hobbies is a primary indicator of a creative personality.'
        ),
        Question(
            id: 'cr_e3',
            category: 'creative',
            questionText: 'I prefer clothes and accessories that:',
            options: ['Are standard and blend in', 'Are practical for work only', 'Express my unique personal style', 'Are the cheapest available'],
            correctOptionIndex: 2,
            difficulty: 'easy',
            explanation: 'Using personal style as a form of expression is a sign of daily creativity.'
        ),
        Question(
            id: 'cr_e4',
            category: 'creative',
            questionText: 'Do you enjoy storytelling, whether through writing, drawing, or speaking?',
            options: ['No, I prefer facts', 'Sometimes, if I have to', 'Yes, I love building narratives', 'Only if it is for a grade'],
            correctOptionIndex: 2,
            difficulty: 'easy',
            explanation: 'Storytelling is a core component of many creative careers like marketing and film.'
        ),

        // Medium
        Question(
            id: 'cr_m1',
            category: 'creative',
            questionText: 'If you were asked to solve a problem at work, would you prefer to:',
            options: ['Use a method that has worked before', 'Brainstorm a completely new approach', 'Ask a manager for the answer', 'Look it up in a manual'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'Innovation and brainstorming are key traits of creative problem solvers.'
        ),
        Question(
            id: 'cr_m2',
            category: 'creative',
            questionText: 'Which of these environments sounds most inspiring to you?',
            options: ['A quiet, structured library', 'A busy laboratory', 'A studio filled with tools and materials', 'A corporate boardroom'],
            correctOptionIndex: 2,
            difficulty: 'medium',
            explanation: 'Creative individuals often thrive in "maker spaces" or studios.'
        ),
        Question(
            id: 'cr_m3',
            category: 'creative',
            questionText: 'How do you react when your work is criticized for being "too unusual"?',
            options: ['I try to make it more normal', 'I feel discouraged and stop', 'I take it as a compliment to my originality', 'I get angry'],
            correctOptionIndex: 2,
            difficulty: 'medium',
            explanation: 'Valuing originality over conformity is essential for creative growth.'
        ),
        Question(
            id: 'cr_m4',
            category: 'creative',
            questionText: 'Which professional skill would you most like to master?',
            options: ['Data encryption', 'Visual storytelling/branding', 'Financial auditing', 'Public policy writing'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'Visual storytelling and branding are central to the creative industry.'
        ),

        // Hard
        Question(
            id: 'cr_h1',
            category: 'creative',
            questionText: 'In a team setting, which role do you naturally gravitate toward?',
            options: ['The "Producer" who keeps everyone on track', 'The "Visionary" who provides the core concept', 'The "Researcher" who gathers data', 'The "Editor" who checks for mistakes'],
            correctOptionIndex: 1,
            difficulty: 'hard',
            explanation: 'The visionary role requires high-level creative synthesis and conceptual thinking.'
        ),
        Question(
            id: 'cr_h2',
            category: 'creative',
            questionText: 'How do you feel about "ambiguity" (not having a clear path or final goal at the start)?',
            options: ['I find it stressful and unproductive', 'I prefer clear instructions', 'I embrace it as a chance to explore', 'I avoid it at all costs'],
            correctOptionIndex: 2,
            difficulty: 'hard',
            explanation: 'High creativity is often linked to a high tolerance for ambiguity.'
        ),
        Question(
            id: 'cr_h3',
            category: 'creative',
            questionText: 'Which statement best describes your view on "Standard Operating Procedures"?',
            options: ['They are necessary for safety and efficiency', 'They are helpful guides for everyone', 'They can be useful but often limit innovation', 'They are the only way to work'],
            correctOptionIndex: 2,
            difficulty: 'hard',
            explanation: 'Creative thinkers often see traditional rules as potential barriers to better ideas.'
        ),
        Question(
            id: 'cr_h4',
            category: 'creative',
            questionText: 'What motivates you more when finishing a difficult project?',
            options: ['The relief that it is finally over', 'The recognition from my superiors', 'The pride in having created something unique', 'The financial reward/bonus'],
            correctOptionIndex: 2,
            difficulty: 'hard',
            explanation: 'Intrinsic motivation based on the act of creation is a hallmark of the creative professional.'
        ),
      ];

  // ----------------- Category 8: Physical -----------------

    case 'physical':
      return [
        // Easy
        Question(
            id: 'pa_e1',
            category: 'physical',
            questionText: 'When you have to learn how something works, you prefer to:',
            options: ['Read the manual', 'Watch a video', 'Take it apart and touch the pieces', 'Listen to a lecture'],
            correctOptionIndex: 2,
            difficulty: 'easy',
            explanation: 'Tactile learning (learning by doing) is a major sign of physical career suitability.'
        ),
        Question(
            id: 'pa_e2',
            category: 'physical',
            questionText: 'How do you feel about working with your hands and getting them dirty?',
            options: ['I hate it', 'I prefer to stay clean', 'I don\'t mind at all if I\'m building something', 'Only if I wear gloves'],
            correctOptionIndex: 2,
            difficulty: 'easy',
            explanation: 'Willingness to engage in "messy" work is common in trade and physical careers.'
        ),
        Question(
            id: 'pa_e3',
            category: 'physical',
            questionText: 'At the end of a long day, you feel most satisfied if you:',
            options: ['Finished a book', 'Built or fixed something real', 'Won a debate', 'Organized your emails'],
            correctOptionIndex: 1,
            difficulty: 'easy',
            explanation: 'Physical satisfaction often comes from tangible results you can see and touch.'
        ),
        Question(
            id: 'pa_e4',
            category: 'physical',
            questionText: 'I would rather work in a:',
            options: ['Small cubicle', 'Home office', 'Workshop or outdoors', 'Quiet library'],
            correctOptionIndex: 2,
            difficulty: 'easy',
            explanation: 'Workshops and the outdoors are the primary environments for physical roles.'
        ),

        // Medium
        Question(
            id: 'pa_m1',
            category: 'physical',
            questionText: 'Which of these tasks sounds most interesting?',
            options: ['Updating a spreadsheet', 'Operating a forklift or crane', 'Writing a press release', 'Researching history'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'Operating machinery requires physical coordination and spatial awareness.'
        ),
        Question(
            id: 'pa_m2',
            category: 'physical',
            questionText: 'How would you describe your energy levels during the day?',
            options: ['I get restless if I sit too long', 'I prefer to stay still', 'I like sitting but with breaks', 'I have low physical energy'],
            correctOptionIndex: 0,
            difficulty: 'medium',
            explanation: 'Restlessness when sitting is a sign that your body is built for active work.'
        ),
        Question(
            id: 'pa_m3',
            category: 'physical',
            questionText: 'In a group project to build a model, you are the one who:',
            options: ['Does the research', 'Writes the report', 'Assembles the actual parts', 'Gives the presentation'],
            correctOptionIndex: 2,
            difficulty: 'medium',
            explanation: 'Assembling parts shows a preference for "Kinesthetic" tasks.'
        ),
        Question(
            id: 'pa_m4',
            category: 'physical',
            questionText: 'Which career path sounds most rewarding?',
            options: ['Lawyer', 'Physiotherapist or Athlete', 'Web Designer', 'Banker'],
            correctOptionIndex: 1,
            difficulty: 'medium',
            explanation: 'Physiotherapy and athletics require high levels of physical mastery and movement.'
        ),

        // Hard
        Question(
            id: 'pa_h1',
            category: 'physical',
            questionText: 'How do you feel about jobs that require high physical stamina (standing for 8 hours)?',
            options: ['I could never do that', 'It sounds exhausting', 'I prefer it over being stuck in a chair', 'Only if I can sit half the time'],
            correctOptionIndex: 2,
            difficulty: 'hard',
            explanation: 'Preferring standing/movement over sitting indicates a high "Physical" drive.'
        ),
        Question(
            id: 'pa_h2',
            category: 'physical',
            questionText: 'Would you take a job that involves traveling to remote sites to do manual repairs?',
            options: ['No, I want a stable office', 'Maybe for a high salary', 'Yes, I enjoy the challenge and movement', 'Only if it is nearby'],
            correctOptionIndex: 2,
            difficulty: 'hard',
            explanation: 'Willingness to travel for manual work shows a commitment to the physical field.'
        ),
        Question(
            id: 'pa_h3',
            category: 'physical',
            questionText: 'Regarding safety gear (boots, helmets, vests), you feel:',
            options: ['They are uncomfortable and annoying', 'I\'d rather work where they aren\'t needed', 'They are part of a job I enjoy', 'I prefer professional suits'],
            correctOptionIndex: 2,
            difficulty: 'hard',
            explanation: 'Accepting the "uniform" of physical labor is a key indicator of career fit.'
        ),
        Question(
            id: 'pa_h4',
            category: 'physical',
            questionText: 'Which of these would be your "dream" accomplishment?',
            options: ['Writing a best-selling novel', 'Developing a famous app', 'Renovating a house or building a bridge', 'Managing a major corporation'],
            correctOptionIndex: 2,
            difficulty: 'hard',
            explanation: 'Large-scale physical construction or renovation is the peak of the "Physical" category.'
        ),
      ];

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
