package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class About_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Home</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"assets/css/main.css\"> \t\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"page-wrapper\">\n");
      out.write("        <div id=\"wrapper\">\n");
      out.write("\n");
      out.write("        <div class=\"header\">\n");
      out.write("        <h1>Electronics Online Store</h1>\n");
      out.write("        <h3>Welcome to our website</h3>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"navigation-bar\">\n");
      out.write("        <a href=\"#\">Home</a><a href=\"#\">Online Store</a><a href=\"#\">Contact</a>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <br/>\n");
      out.write("\n");
      out.write("        <section class=\"main col-9\">\n");
      out.write("            \n");
      out.write("            <h2>About my Cakes</h2>\n");
      out.write("            <div class=\"about-detail\">\n");
      out.write("                <img class=\"col-6\" src=\"images/i282319414620354444._szw480h1280_.jpg\" alt=\"\" />\n");
      out.write("                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\n");
      out.write("\n");
      out.write("Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>\n");
      out.write("            </div>\n");
      out.write("                \n");
      out.write("\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <section class=\"rightmenu col-3\">\n");
      out.write("\n");
      out.write("        <section class=\"rightmenu-item\">\n");
      out.write("        <p><a href=\"#\" class=\"normal\">Your basket</a></p>\n");
      out.write("        <p class=\"text-aligncenter\"><a href=\"#\" class=\"button\">Checkout</a></p>\n");
      out.write("        </section>\n");
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
}
