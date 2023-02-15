import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_movie_detail4_view.dart';

class EdrMovieDetail4Controller extends State<EdrMovieDetail4View>
    implements MvcController {
  static late EdrMovieDetail4Controller instance;
  late EdrMovieDetail4View view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
