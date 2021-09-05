import 'package:flutter/cupertino.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.topic}) : super(key: key);

  final int topic;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool switchValue = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Details'),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CupertinoButton(
                  child: Text('Lauch actions'),
                  onPressed: () {
                    showCupertinoModalPopup(
                        context: context,
                        builder: (context) {
                          return CupertinoActionSheet(
                            title: Text('Choices'),
                            actions: [
                              CupertinoActionSheetAction(
                                  onPressed: () {
                                    Navigator.pop(context, 1);
                                  },
                                  child: Text('Return')),
                              CupertinoActionSheetAction(
                                  onPressed: () {
                                    Navigator.pop(context, 2);
                                  },
                                  child: Text('Keep')),
                            ],
                          );
                        }).then((value) => {
                          if (value == 1) {Navigator.of(context).pop()}
                        });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
