import 'package:flutter/material.dart';

class CustomeRoute extends PageRouteBuilder{
  final Widget widget;

  CustomeRoute(this.widget)
    :super(
      transitionDuration:Duration(seconds: 1),
      pageBuilder:(
        BuildContext context,
        Animation<double> animation1,
        Animation<double> animation2,
      ){
        return widget;
      },
      transitionsBuilder:(
        BuildContext context,
        Animation<double> animation1,
        Animation<double> animation2,
        Widget child
      ){
        // fade
        // return FadeTransition(
        //   opacity: Tween(begin: 0.0,end:1.0)
        //   .animate(CurvedAnimation(
        //     parent: animation1,
        //     curve: Curves.fastOutSlowIn,//动画曲线
        //   )),
        //   child: child,
        // );
        // 缩放动画效果
        // return ScaleTransition(
        //   scale:Tween(begin: 0.0,end: 1.0).animate(
        //     CurvedAnimation(
        //       parent: animation1,
        //       curve: Curves.fastOutSlowIn,//动画曲线
        //     )
        //   ),
        //   child: child,
        // );
        // 旋转加缩放动画效果
        // return RotationTransition(
        //   turns:Tween(begin: 0.0,end: 1.0).animate(
        //     CurvedAnimation(
        //       parent: animation1,
        //       curve: Curves.fastOutSlowIn,//动画曲线
        //     )
        //   ),
        //   child: ScaleTransition(
        //     scale:Tween(begin: 0.0,end: 1.0).animate(
        //       CurvedAnimation(
        //         parent: animation1,
        //         curve: Curves.fastOutSlowIn,//动画曲线
        //       )
        //     ),
        //     child: child,
        //   ),
        // );
        // 左右切换动画
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(-1.0, 0.0),
            end: Offset(0.0, 0.0)
          )
          .animate(CurvedAnimation(
            parent: animation1,
            curve: Curves.fastOutSlowIn,//动画曲线
          )),
          child: child,
        );
      }
    );
  
}