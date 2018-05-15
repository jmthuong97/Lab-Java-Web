package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/WEB-INF/tlds/Controller.tld");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Home</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"assets/css/main.css\"> \t\n");
      out.write("    </head>\n");
      out.write("    ");
      com.db.ProductContext pc = null;
      synchronized (session) {
        pc = (com.db.ProductContext) _jspx_page_context.getAttribute("pc", PageContext.SESSION_SCOPE);
        if (pc == null){
          pc = new com.db.ProductContext();
          _jspx_page_context.setAttribute("pc", pc, PageContext.SESSION_SCOPE);
        }
      }
      out.write("\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <div id=\"page-wrapper\">\n");
      out.write("            <div class=\"header\">\n");
      out.write("            <h1>Electronics Online Store</h1>\n");
      out.write("            <h3>Welcome to our website</h3>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"navigation-bar\">\n");
      out.write("            <a href=\"index.jsp\">Home</a><a href=\"About.jsp\">Online Store</a><a href=\"Find.jsp\">Contact</a>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <br/>\n");
      out.write("            \n");
      out.write("        <div id=\"wrapper\" >\n");
      out.write("\n");
      out.write("        <section class=\"main col-9\">\n");
      out.write("            ");
      if (_jspx_meth_controller_Controller_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("            <div class=\"row index-introduction\">\n");
      out.write("                <div class=\"index-introduction-img col-3\">\n");
      out.write("                    <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${intro.imageUrl}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" alt=\"Maria\" />\n");
      out.write("                </div>\n");
      out.write("                <div class=\"index-introduction-paragraph col-9\">\n");
      out.write("                    <h3>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${intro.title}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h3>\n");
      out.write("                    <p>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${intro.content}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"row index-product\">\n");
      out.write("                <!--<div class=\"index-product-item col-6\">\n");
      out.write("                    <img src=\"images/i282319414620354139._rsw480h360_szw480h360_.jpg\" alt=\"\" />\n");
      out.write("                    <h3>In the afternoon</h3>\n");
      out.write("                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <div class=\"index-product-item col-6\">\n");
      out.write("                    <img src=\"images/i282319414620354374._rsw480h360_szw480h360_.jpg\" alt=\"\" />\n");
      out.write("                    <h3>Traditional Cakes</h3>\n");
      out.write("                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                -->\n");
      out.write("                ");
      if (_jspx_meth_controller_Controller_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                ");

                    Object o = pageContext.getAttribute("list");
                    System.out.println(o);
                
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"row index-contact\">\n");
      out.write("            <h2>Visit my cafe</h2>\n");
      out.write("            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>\n");
      out.write("            <p>Gammel Torv, Copenhagen</p>\n");
      out.write("            <p>Phone:</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <section class=\"rightmenu col-3\">\n");
      out.write("\n");
      out.write("        <section class=\"rightmenu-item\">\n");
      out.write("        <h3>Share this page</h3>\n");
      out.write("        <p><a href=\"#\" class=\"normal\">Share on Facebook</a></p>\n");
      out.write("        <p><a href=\"#\" class=\"normal\">Share on Twitter</a></p>\n");
      out.write("        <p><a href=\"#\" class=\"normal\">Share on Google+</a></p>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_controller_Controller_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  controller:Controller
    com.controller.Controller _jspx_th_controller_Controller_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(com.controller.Controller.class) : new com.controller.Controller();
    _jspx_th_controller_Controller_0.setJspContext(_jspx_page_context);
    _jspx_th_controller_Controller_0.setClassName("com.controller.IndexController");
    _jspx_th_controller_Controller_0.setMethodName("getIntro");
    _jspx_th_controller_Controller_0.setParams("Intro");
    _jspx_th_controller_Controller_0.setReturnedAttribute("intro");
    _jspx_th_controller_Controller_0.doTag();
    return false;
  }

  private boolean _jspx_meth_controller_Controller_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  controller:Controller
    com.controller.Controller _jspx_th_controller_Controller_1 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(com.controller.Controller.class) : new com.controller.Controller();
    _jspx_th_controller_Controller_1.setJspContext(_jspx_page_context);
    _jspx_th_controller_Controller_1.setClassName("com.controller.IndexController");
    _jspx_th_controller_Controller_1.setMethodName("getTopTwoProduct");
    _jspx_th_controller_Controller_1.setReturnedAttribute("list");
    _jspx_th_controller_Controller_1.doTag();
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("i");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${list}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                    <div class=\"index-product-item col-6\">\n");
          out.write("                    <img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.imageUrl}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"\" />\n");
          out.write("                    <h3>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</h3>\n");
          out.write("                    <p>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.description}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</p>\n");
          out.write("                    \n");
          out.write("                </div>\n");
          out.write("                ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
