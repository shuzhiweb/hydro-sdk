import 'package:flua/builtins/flutter/widgets/animatedList.dart';
import 'package:flua/builtins/flutter/widgets/center.dart';
import 'package:flua/builtins/flutter/widgets/column.dart';
import 'package:flua/builtins/flutter/widgets/flexible.dart';
import 'package:flua/builtins/flutter/widgets/gestureDetector.dart';
import 'package:flua/builtins/flutter/widgets/globalKey.dart';
import 'package:flua/builtins/flutter/widgets/icon.dart';
import 'package:flua/builtins/flutter/widgets/iconData.dart';
import 'package:flua/builtins/flutter/widgets/mediaQuery.dart';
import 'package:flua/builtins/flutter/widgets/padding.dart';
import 'package:flua/builtins/flutter/widgets/positioned.dart';
import 'package:flua/builtins/flutter/widgets/preferredSize.dart';
import 'package:flua/builtins/flutter/widgets/safeArea.dart';
import 'package:flua/builtins/flutter/widgets/sizeTransition.dart';
import 'package:flua/builtins/flutter/widgets/sizedBox.dart';
import 'package:flua/builtins/flutter/widgets/stack.dart';
import 'package:flua/builtins/flutter/widgets/text.dart';
import 'package:flua/luastate.dart';
import 'package:flua/vm/table.dart';
import 'package:meta/meta.dart';

loadWidgets({@required LuaState luaState, @required HydroTable table}) {
  var widgets = HydroTable();

  table["widgets"] = widgets;

  loadText(luaState: luaState, table: widgets);
  loadCenter(luaState: luaState, table: widgets);
  loadColumn(luaState: luaState, table: widgets);
  loadIcon(luaState: luaState, table: widgets);
  loadIconData(widgets);
  loadGlobalKey(luaState: luaState, table: widgets);
  loadSizedBox(luaState: luaState, table: widgets);
  loadPadding(luaState: luaState, table: widgets);
  loadAnimatedList(luaState: luaState, table: widgets);
  loadSizeTransition(luaState: luaState, table: widgets);
  loadGestureDetector(luaState: luaState, table: widgets);
  loadPreferredSize(luaState: luaState, table: widgets);
  loadSafeArea(luaState: luaState, table: widgets);
  loadStack(luaState: luaState, table: widgets);
  loadPositioned(luaState: luaState, table: widgets);
  loadMediaQuery(widgets);
  loadFlexible(luaState: luaState, table: widgets);
}
