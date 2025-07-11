import 'package:flutter/material.dart';

class SleepDetailPage extends StatelessWidget {
  const SleepDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Why Sleep Is So Important',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          // Image section with navy blue background
          Container(
            color: Colors.blue.shade900,
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              'assets/images/sleep.png',
              height: 200,
              fit: BoxFit.contain,
            ),
          ),

          // Text content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Why Sleep Is So Important',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Sleep occurs when your body and brain drop into an unconscious, restorative state. While you\'re sleeping, many of your body\'s basic functions are altered or suspended while other specialised functions happen.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 16),
                Text(
                  'You may not remember much of your sleep, but you\'re likely to spend about a third of your life in this state.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 16),
                Text(
                  'Sleep can do remarkable things for you. It allows your body to rest and perform some essential maintenance on your memory, hormones, your immune system and other critical functions.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                Text(
                  'It improves the brain\'s ability to learn, helps the body fight infection, allows your heart to rest, and can even lower blood pressure. Not getting enough sleep can have adverse effects in all these areas and others.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),

                SizedBox(height: 24),
                Text(
                  'How Much Sleep Do You Need?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'So how do you know when you\'re getting the right amount of sleep? When you wake up and feel rested, you\'ve probably had enough.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                Text(
                  'The amount of sleep someone needs is highly individual. In general:\n• Adults need 7–8 hours\n• Kids should get 9–13 hours\n• Infants need 12–15 hours',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 8),
                Text(
                  'Over the course of a day, you build up sleep pressure. You may find yourself nodding off or feeling tired. This is your body\'s way of saying it needs to sleep.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),

                SizedBox(height: 24),
                Text(
                  'About Sleep Stages',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'There are many misconceptions around sleep stages and the quality of sleep. Scientists and doctors are still exploring the purpose of the different stages and the impact they have on the body.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 8),
                Text(
                  'Generally, a stage is characterised by the types of brain waves that happen while you sleep. It\'s known that dreams happen during the Rapid Eye Movement (REM) stage and that deep sleep has a restorative effect on the body.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                Text(
                  'As you sleep, you\'re likely to cycle through the different stages multiple times.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),

                SizedBox(height: 24),
                Text(
                  'Understanding Your Sleep',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'Tracking your sleep can help you understand the sleep you\'re getting and what may be impacting it. You can:\n• Keep notes in a sleep journal\n• Log your sleep in an app\n• Use a wearable device that adds your sleep data to Health',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),

                SizedBox(height: 32),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
