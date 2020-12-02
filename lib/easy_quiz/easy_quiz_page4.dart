import 'package:flutter/material.dart';
import 'package:kimetunoyaibaquizapp/answer_page.dart';
import 'package:kimetunoyaibaquizapp/app_background/app_background.dart';
import 'package:kimetunoyaibaquizapp/app_background/app_background1.dart';

class EasyQuizPage4 extends StatelessWidget {
  EasyQuizPage4(this.counter);

  int counter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBackground1(
      child: Center(
        child: Container(
            height: 430,
            child: AppBackground(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text('Q5 2020年に公開した映画「無限列車編」の主役の柱は誰？',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                    ),
                    RaisedButton(
                      child: Text('煉獄 杏寿朗'),
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
                                            builder: (context) =>
                                                AnswerPage(counter),
                                          ));
                                    }),
                              ],
                            );
                          },
                        );
                      },
                    ),
                    RaisedButton(
                      child: Text('  冨岡 義勇  '),
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
                                              AnswerPage(counter),
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
                      child: Text('胡蝶 しのぶ'),
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
                                                AnswerPage(counter),
                                          ));
                                    }),
                              ],
                            );
                          },
                        );
                      },
                    ),
                    RaisedButton(
                      child: Text('  宇髄 天元  '),
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
                                              AnswerPage(counter),
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
            )),
      ),
    ));
  }
}
