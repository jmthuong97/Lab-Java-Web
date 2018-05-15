package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Find_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("            <h2>Find Maria's Cafe</h2>\n");
      out.write("\n");
      out.write("            <div class=\"row col-6 find-contact\">\n");
      out.write("            <h3>Address and contact:</h3>\n");
      out.write("            <h4>Copenhagen, Denmark</h4>\n");
      out.write("            <p>Tel: </p>\n");
      out.write("            <p>Email: your-email@your-email.com</p>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"row col-6 find-contact\">\n");
      out.write("            <h3>Openning hours:</h3>\n");
      out.write("            <p>Monday: Closed</p>\n");
      out.write("            <p>Tuesday - Friday: 10:00 - 20:00</p>\n");
      out.write("            <p>Saturday - Sunday: 11:00 - 21:00</p>\n");
      out.write("            </div>\n");
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
