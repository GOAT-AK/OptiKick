import 'package:flutter/material.dart';

class HandwashingDetailPage extends StatelessWidget {
  const HandwashingDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Page background
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white), // Back button color
        title: const Text(
          'Handwashing Can Protect Your Health',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          // Image with navy background
          Container(
            color: Colors.blue.shade900,
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              'assets/images/hand.png',
              height: 200,
              fit: BoxFit.contain,
            ),
          ),

          // Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Handwashing Can Protect Your Health',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 16),
                Text(
                  'Washing your hands may be your most important protection against getting sick. But only if you do it correctly — and most people don\'t. One study showed that as many as 95% of us either wash too fast, use water but no soap, or just don\'t wash at all.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 24),
                Text(
                  'Why Handwashing Matters',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'Viruses, bacteria and other germs can be picked up when you touch surfaces, objects and other people. A doorknob, a petrol pump, a handshake, the chicken you\'re cooking for dinner — these are all opportunities to pick up germs. Then simply rubbing an itchy nose can transfer the germs into your body and you might become infected.\n\nWashing your hands can help to remove those germs and help you stay healthy.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 24),
                Text(
                  'How Handwashing Helps',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'Handwashing with soap does two things. First, it lifts particles from your skin so water can rinse them away. Clean, running water alone does this moderately well, but using soap makes it much more effective.\n\nSecond, washing with soap helps break certain germs down and render them harmless. Viruses like the one that causes COVID-19 have a thin layer of fat that protects each particle. Rubbing your hands with a good lather of soap for 20 seconds can dissolve the fat layer and destroy the virus.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 24),
                Text(
                  'Doing It Right',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'There are four steps to washing your hands correctly: wet, lather, rinse and dry.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 8),
                Text(
                  '1. Wet your hands with clean, running water (warm or cold), turn off the tap and apply soap.',
                  style: TextStyle(color: Colors.white70),
                ),
                Text(
                  '2. Lather your hands with soap including the backs of your hands, between the fingers and under your nails. Rub for at least 20 seconds.',
                  style: TextStyle(color: Colors.white70),
                ),
                Text(
                  '3. Rinse your hands well under clean, running water.',
                  style: TextStyle(color: Colors.white70),
                ),
                Text(
                  '4. Dry your hands using a clean towel or air dry them. Germs spread more easily from wet hands.',
                  style: TextStyle(color: Colors.white70),
                ),
                SizedBox(height: 16),
                Text(
                  'If you have kids, try making these steps into a game or song. Make sure you give them frequent reminders to wash their hands. And most importantly, model good handwashing behaviour so they learn from your example.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 24),
                Text(
                  'When to Wash Your Hands',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'In general, it\'s a good idea to wash your hands every few hours. But there are certain times when you should definitely do so:\n',
                  style: TextStyle(color: Colors.white70),
                ),
                Text('• Straight after you get home', style: TextStyle(color: Colors.white70)),
                Text('• After you\'ve been in a public place and touched shared surfaces', style: TextStyle(color: Colors.white70)),
                Text('• After going to the toilet', style: TextStyle(color: Colors.white70)),
                Text('• After changing nappies or helping a child use the toilet', style: TextStyle(color: Colors.white70)),
                Text('• After blowing your nose, coughing or sneezing', style: TextStyle(color: Colors.white70)),
                Text('• After touching an animal or pet items', style: TextStyle(color: Colors.white70)),
                Text('• After touching rubbish', style: TextStyle(color: Colors.white70)),
                Text('• Before, during, and after preparing food or eating', style: TextStyle(color: Colors.white70)),
                Text('• Before and after tending to someone who is sick or treating a wound', style: TextStyle(color: Colors.white70)),
                SizedBox(height: 24),
                Text(
                  'If You Don\'t Have Soap, Use Hand Sanitiser',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'The next best thing to soap and water is hand sanitiser. It\'s not as effective, but it can reduce some germs.\n\nWhen using sanitiser, apply enough to cover your hands thoroughly and rub until they feel dry — at least 20 seconds.\n\nAn antibacterial sanitiser or wipe will neutralise some bacteria. Against a virus, however, only a sanitiser that\'s at least 60% alcohol will be effective.\n\nBaby wipes, ointments, or alcohol below 60% will not destroy viruses and are not alternatives to washing with soap.\n\nKeep alcohol-based sanitisers away from children because they can be harmful if swallowed.',
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
