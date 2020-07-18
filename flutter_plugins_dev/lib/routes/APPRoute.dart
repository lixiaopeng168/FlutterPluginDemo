/**
 * @Author: lxp
 * @Description:
 * @Date: 2020/7/18 3:40 PM
 */
class APPRoute {

  static List<String> moduleNameList = new List<String>();

  static Map<String, Function> modulePages = new Map<String, Function>();

  static Map<String, Map<String, Function>> allPages =  new Map<String, Map<String, Function>>();

  static registerModule(String name){
    moduleNameList.add(name);
  }

  static registerModulePage(String name, Map<String, Function> pages){
    modulePages.addAll(pages);
    allPages.addAll({name:pages});
  }

  static getAllRoute(){
    return modulePages;
  }

}