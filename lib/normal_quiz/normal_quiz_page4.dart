import 'package:flutter/material.dart';
import 'package:kimetunoyaibaquizapp/answer_page.dart';
import 'package:kimetunoyaibaquizapp/app_background/app_background.dart';
import 'package:kimetunoyaibaquizapp/app_background/app_background2.dart';

class NormalQuizPage4 extends StatelessWidget {
  NormalQuizPage4(this.counter);

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBackground2(
      child: Center(
          child: Container(
        height: 430,
        child: AppBackground(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Q5 下弦の伍、累の偽物の家族は本人含め何人？（主人公と戦った時）',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            ),
            RaisedButton(
              child: Text('３'),
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
              child: Text('４'),
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
              child: Text('５'),
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
              child: Text('８'),
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
