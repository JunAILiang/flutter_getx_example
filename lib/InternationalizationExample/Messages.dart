import 'package:get/get.dart';

class Messages extends Translations {

 @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
   'zh_CN': {
     'hello': "你好, 世界"
   },
   'en_US': {
     'hello': 'hello world'
   }
 };

}