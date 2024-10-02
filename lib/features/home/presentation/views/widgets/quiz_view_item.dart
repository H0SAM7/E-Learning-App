import 'package:e_learing/core/models/quission_model.dart';
import 'package:flutter/material.dart';

class QuizViewItem extends StatefulWidget {
  const QuizViewItem(
      {super.key,
      required this.qussionModel,
      required this.index,
      required this.onDegreeChanged});
  final QussionModel qussionModel;
  final String index;
  final ValueChanged<int> onDegreeChanged; // Add this line

  @override
  _QuizViewItemState createState() => _QuizViewItemState();
}

class _QuizViewItemState extends State<QuizViewItem> {
  int? _selectedAnswer;
  int degree = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${widget.index}- ${widget.qussionModel.quission}',
          style: TextStyle(fontSize: 20),
        ),
        ListTile(
         
          title: Text(widget.qussionModel.answers[0],
              style: TextStyle(fontSize: 20)),
          leading: Radio<int>(
            value: 0,
            groupValue: _selectedAnswer,
            onChanged: (int? value) {
              setState(() {
                _selectedAnswer = value;
                if ( widget.qussionModel.correctAnswer=='a') {
                  degree += 1;
                  widget.onDegreeChanged(1);
                } else {
                  widget.onDegreeChanged(0);
                }
              });
            },
          ),
        ),
        ListTile(
          title: Text(widget.qussionModel.answers[1],
              style: TextStyle(fontSize: 20)),
          leading: Radio<int>(
            value: 1,
            groupValue: _selectedAnswer,
            onChanged: (int? value) {
              setState(() {
                _selectedAnswer = value;
                if ( widget.qussionModel.correctAnswer=='b') {
                  degree += 1;
                  widget.onDegreeChanged(1); // Notify the parent
                } else {
                  widget.onDegreeChanged(0); // Notify the parent with 0
                }
              });
            },
          ),
        ),
        ListTile(
          title: Text(widget.qussionModel.answers[2],
              style: TextStyle(fontSize: 20)),
          leading: Radio<int>(
            value: 2,
            groupValue: _selectedAnswer,
            onChanged: (int? value) {
              setState(() {
                _selectedAnswer = value;
                if ( widget.qussionModel.correctAnswer=='c') {
                  degree += 1;
                  widget.onDegreeChanged(1); // Notify the parent
                } else {
                  widget.onDegreeChanged(0); // Notify the parent with 0
                }
              });
            },
          ),
        ),
        ListTile(
          title: Text(widget.qussionModel.answers[3],
              style: TextStyle(fontSize: 20)),
          leading: Radio<int>(
            value: 3,
            groupValue: _selectedAnswer,
            onChanged: (int? value) {
              setState(() {
                _selectedAnswer = value;
                if ( widget.qussionModel.correctAnswer=='d') {
                  degree += 1;
                  widget.onDegreeChanged(1); // Notify the parent
                } else {
                  widget.onDegreeChanged(0); // Notify the parent with 0
                }
              });
            },
          ),
        ),
        Divider(endIndent: 50, indent: 50),
      ],
    );
  }
}
