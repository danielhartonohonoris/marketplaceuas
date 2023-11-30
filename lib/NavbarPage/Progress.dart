import 'package:flutter/material.dart';

class Progress extends StatefulWidget {
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  final List<ProgressStep> steps = [
    ProgressStep("Order Placed", true),
    ProgressStep("Payment Done", true),
    ProgressStep("Order Shipped", true),
    ProgressStep("Order Delivered", false),
  ];

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Progress'),
        backgroundColor: Colors.red.shade600,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _buildOverallProgress(),
          const SizedBox(height: 20),
          for (var i = 0; i < steps.length; i++)
            AnimatedProgressIndicator(
              step: steps[i],
              animationController: _animationController,
              delay: i * 200,
            ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _restartProgress,
            child: const Text('Restart Progress'),
          ),
        ],
      ),
    );
  }

  Widget _buildOverallProgress() {
    int completedSteps = steps.where((step) => step.isCompleted).length;
    int totalSteps = steps.length;
    double overallProgress = completedSteps / totalSteps;

    return Column(
      children: [
        const Text(
          'Overall Progress',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(
          value: overallProgress,
          color: Colors.green,
          backgroundColor: Colors.grey[300],
        ),
        const SizedBox(height: 8),
        Text('$completedSteps of $totalSteps steps completed'),
      ],
    );
  }

  void _restartProgress() {
    for (var orderStatus in steps) {
      orderStatus.isCompleted = false;
    }
    steps[0].isCompleted = true;
    _updateState();
  }

  void _updateState() {
    setState(() {});
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

class ProgressStep {
  final String status;
  bool isCompleted;

  ProgressStep(this.status, this.isCompleted);
}

class AnimatedProgressIndicator extends StatefulWidget {
  final ProgressStep step;
  final AnimationController animationController;
  final int delay;

  AnimatedProgressIndicator({
    required this.step,
    required this.animationController,
    required this.delay,
  });

  @override
  _AnimatedProgressIndicatorState createState() =>
      _AnimatedProgressIndicatorState();
}

class _AnimatedProgressIndicatorState extends State<AnimatedProgressIndicator>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: widget.animationController,
        curve: Curves.easeOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: SlideTransition(
        position:
            Tween<Offset>(begin: Offset(0, 0.5), end: Offset.zero).animate(
          CurvedAnimation(
            parent: widget.animationController,
            curve: Curves.easeOut,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                widget.step.isCompleted
                    ? Icons.check_circle
                    : Icons.radio_button_unchecked,
                color: widget.step.isCompleted ? Colors.green : Colors.grey,
              ),
              SizedBox(width: 8),
              Text(widget.step.status),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Progress(),
  ));
}
