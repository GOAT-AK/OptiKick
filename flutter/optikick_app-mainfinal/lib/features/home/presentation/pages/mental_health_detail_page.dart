import 'package:flutter/material.dart';

class MentalHealthDetailPage extends StatelessWidget {
  const MentalHealthDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Common Concerns About Mental Health',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.blue.shade900,
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              'assets/images/mental.png',
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Understanding Mental Health',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 16),
                Text(
                  'Mental health affects how we think, feel, and act. It also determines how we handle stress, relate to others, and make healthy choices. Good mental health is essential at every stage of life, from childhood through adulthood.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 24),
                Text(
                  'Common Mental Health Conditions',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  '1. Anxiety Disorders\nFeeling nervous occasionally is normal. But when anxiety becomes intense, long-lasting, or out of proportion to the situation, it may be a disorder.\n\n2. Depression\nThis is more than feeling sad. Depression affects how a person feels, thinks, and handles daily activities. It can lead to physical problems if left untreated.\n\n3. Bipolar Disorder\nThis causes extreme mood swings—from high energy and happiness (mania) to deep depression.\n\n4. PTSD\nPost-Traumatic Stress Disorder can happen after experiencing or witnessing a traumatic event.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 24),
                Text(
                  'Stigma and Support',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'Many people with mental health concerns avoid seeking help due to stigma. However, mental illness is nothing to be ashamed of — it’s a medical condition, just like heart disease or diabetes.\n\nSupport from friends, family, or a mental health professional can help individuals manage and recover.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 24),
                Text(
                  'When to Seek Help',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'Seek professional help if you or someone you know:\n• Feels excessively sad or withdrawn for more than two weeks\n• Shows drastic changes in mood, behavior, or personality\n• Talks about harming themselves or others\n• Struggles with substance abuse\n• Experiences intense worries or fears that interfere with daily life',
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
