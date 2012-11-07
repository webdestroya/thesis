public class ThesisPlugin 
  extends AbstractCalicoPlugin 
  implements CalicoPlugin {

  public ThesisPlugin() {
    super();
    PluginInfo.name = "ThesisPlugin";
    PluginInfo.author = "mdempsey";
    PluginInfo.info = "Thesis Demonstration Plugin";
    PluginInfo.url = "http://ics.uci.edu/~mdempsey/";
  }
  
  public void onPluginStart() {
    RegisterPluginEvent(calico.plugins.designminders.DMScrap2Card.class);
  }
  
  public void onPluginEnd() {
    // this code will be run on shutdown
  }
}