import 'package:flutter/material.dart';
import 'package:kimetunoyaibaquizapp/answer_page.dart';
import 'package:kimetunoyaibaquizapp/app_background/app_background.dart';
import 'package:kimetunoyaibaquizapp/app_background/app_background3.dart';

class HardQuizPage4 extends StatelessWidget {
  HardQuizPage4(this.counter);

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBackground3(
      child: Center(
          child: Container(
        height: 430,
        child: AppBackground(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Q5 主人公の炭治郎の声優の名前は？',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            ),
            RaisedButton(
              child: Text('花江 春樹'),
              onPressed: () {
                //正解か不正解のコード
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('不正解！'),
                      actions: <Widget>[
                        FlatButton(
                            child: Text('次の問題へ'),
                            onPressed: () {
                              //次の問題への画面遷移
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AnswerPage(counter),
                                  ));
                            }),
                      ],
                    );
                  },
                );
              },
            ),
            RaisedButton(
              child: Text('花江 夏樹'),
              onPressed: () {
                //正解か不正解のコード
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('正解！'),
                      actions: <Widget>[
                        FlatButton(
                            child: Text('次の問題へ'),
                            onPressed: () {
                              counter++;
                              //次の問題への画面遷移
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AnswerPage(counter),
                                  ));
                            }),
                      ],
                    );
                  },
                );
              },
            ),
            RaisedButton(
              child: Text('花江 秋樹'),
              onPressed: () {
                //正解か不正解のコード
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('不正解！'),
                      actions: <Widget>[
                        FlatButton(
                            child: Text('次の問題へ'),
                            onPressed: () {
                              //次の問題への画面遷移
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AnswerPage(counter),
                                  ));
                            }),
                      ],
                    );
                  },
                );
              },
            ),
            RaisedButton(
              child: Text('花江 冬樹'),
              onPressed: () {
                //正解か不正解のコード
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('不正解！'),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('次の問題へ'),
                          onPressed: () {
                            //次の問題への画面遷移
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AnswerPage(counter),
                                ));
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ]),
        ),
      )),
    ));
  }
}
