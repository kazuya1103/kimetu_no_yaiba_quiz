import 'package:flutter/material.dart';
import 'package:kimetunoyaibaquizapp/app_background/app_background.dart';
import 'package:kimetunoyaibaquizapp/app_background/app_background1.dart';
import 'package:kimetunoyaibaquizapp/easy_quiz/easy_quiz_page3.dart';

class EasyQuizPage2 extends StatelessWidget {
  EasyQuizPage2(this.counter);

  int counter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBackground1(
      child: Center(
          child: Container(
        height: 430,
        child: AppBackground(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Q3 主人公の仲間の嘴平伊之助は何の被りものをしている？',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            ),
            RaisedButton(
              child: Text('猿'),
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
                                    builder: (context) =>
                                        EasyQuizPage3(counter),
                                  ));
                            }),
                      ],
                    );
                  },
                );
              },
            ),
            RaisedButton(
              child: Text('熊'),
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
                                  builder: (context) => EasyQuizPage3(counter),
                                ));
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            RaisedButton(
              child: Text('馬'),
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
                                    builder: (context) =>
                                        EasyQuizPage3(counter),
                                  ));
                            }),
                      ],
                    );
                  },
                );
              },
            ),
            RaisedButton(
              child: Text('猪'),
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
                                  builder: (context) => EasyQuizPage3(counter),
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
