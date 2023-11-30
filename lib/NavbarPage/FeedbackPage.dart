import 'package:flutter/material.dart';

//Rating Widget
class RatingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Rate your experience',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star_border, color: Colors.yellow),
            ],
          ),
        ],
      ),
    );
  }
}

//Form Widget
class FeedbackForm extends StatelessWidget {
  final Function(String) onFeedbackSubmitted;
  FeedbackForm({required this.onFeedbackSubmitted, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tell us more about your experience',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Type your feedback here...',
                border: OutlineInputBorder(),
              ),
              onFieldSubmitted: (value) {
                onFeedbackSubmitted(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}

//Submit Button
class SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Feedback Submitted!')),
          );
        },
        child: Text('Submit Feedback'),
      ),
    );
  }
}

//Image Upload
class ImageUpload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Attach a screenshot (optional)',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          ElevatedButton.icon(
            onPressed: () {
            },
            icon: Icon(Icons.camera),
            label: Text('Upload Image'),
          ),
        ],
      ),
    );
  }
}

//Comment Section
class CommentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Additional Comments (optional)',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          TextFormField(
            maxLines: 3,
            decoration: InputDecoration(
              hintText: 'Add any comments...',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}

//History of Previous Feedback
class PreviousFeedbackList extends StatefulWidget {
  final List<String> previousFeedbacks;
  final GlobalKey<PreviousFeedbackListState> feedbackListKey;

  PreviousFeedbackList({
    required this.previousFeedbacks,
    required this.feedbackListKey,
  });

  @override
  PreviousFeedbackListState createState() => PreviousFeedbackListState();
}

class PreviousFeedbackListState extends State<PreviousFeedbackList> {
  void updateFeedbacks() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Previous Feedback',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          for (String feedback in widget.previousFeedbacks)
            Card(
              child: ListTile(
                title: Text(feedback),
                subtitle: Text('Submitted on: ${DateTime.now().toString()}'),
              ),
            ),
        ],
      ),
    );
  }
}

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  List<String> previousFeedbacks = [];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Page'),
        backgroundColor: Colors.red.shade600,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RatingBar(),
            FeedbackForm(
              onFeedbackSubmitted: (Feedback) {
                setState(() {
                  previousFeedbacks.add(Feedback);
                  Navigator.pop(context);
                  _formKey.currentState?.reset();
                });
              },
              key: _formKey,
            ),
            ImageUpload(),
            CommentSection(),
            SubmitButton(),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: FeedbackPage(),
  ));
}
