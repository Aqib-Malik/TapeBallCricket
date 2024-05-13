import 'package:flutter/material.dart';
import 'package:tape_ball_app/views/authScreens/widgets/custom_scaffold.dart';

class PlayerSignupScreen extends StatefulWidget {
  final String fullName;
  final String email;
  final String password;
  final String location;

  PlayerSignupScreen({
    super.key,
    required this.fullName,
    required this.email,
    required this.password,
    required this.location,
  });

  @override
  State<PlayerSignupScreen> createState() => _PlayerSignupScreenState();
}

class _PlayerSignupScreenState extends State<PlayerSignupScreen> {
  final TextEditingController ageController = TextEditingController();
  final TextEditingController playingPositionController = TextEditingController();
  final TextEditingController skillsController = TextEditingController();
  final TextEditingController achievementsController = TextEditingController();
  final TextEditingController ratingController = TextEditingController();

  final List<String> playertypes = [
    'Batsman',
    'Spin Bowler',
    'Fast Bowler',
    'All Rounder',
  ];

  String? selectedplayertype;
  String? dominantHand; // Added this variable for radio button selection

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: ageController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Age',
                        hintText: 'Enter your age',
                        hintStyle: const TextStyle(
                          color: Colors.black26,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12, // Default border color
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12, // Default border color
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    // Role
                    DropdownButtonFormField<String>(
                      value: selectedplayertype,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedplayertype = newValue;
                        });
                      },
                      items: playertypes.map((String role) {
                        return DropdownMenuItem<String>(
                          value: role,
                          child: Text(role),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        labelText: 'Player Type',
                        hintText: 'Select Player Type',
                        hintStyle: const TextStyle(
                          color: Colors.black26,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12, // Default border color
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12, // Default border color
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select a role';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      controller: skillsController,
                      decoration: InputDecoration(
                        labelText: 'Skills',
                        hintText: 'Enter your skills (comma-separated)',
                        hintStyle: const TextStyle(
                          color: Colors.black26,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12, // Default border color
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12, // Default border color
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      controller: achievementsController,
                      decoration: InputDecoration(
                        labelText: 'Achievements',
                        hintText: 'Enter your achievements (comma-separated)',
                        hintStyle: const TextStyle(
                          color: Colors.black26,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12, // Default border color
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12, // Default border color
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    // Radio buttons for dominant hand selection
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dominant Hand',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Radio<String>(
                              value: 'Left Hand',
                              groupValue: dominantHand,
                              onChanged: (String? value) {
                                setState(() {
                                  dominantHand = value;
                                });
                              },
                            ),
                            Text('Left Hand'),
                            Radio<String>(
                              value: 'Right Hand',
                              groupValue: dominantHand,
                              onChanged: (String? value) {
                                setState(() {
                                  dominantHand = value;
                                });
                              },
                            ),
                            Text('Right Hand'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Complete Signup'),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
