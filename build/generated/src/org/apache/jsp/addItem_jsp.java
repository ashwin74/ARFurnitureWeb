package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dbpackage.dbquery;

public final class addItem_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css\" integrity=\"sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS\" crossorigin=\"anonymous\">\n");
      out.write("    <title>Add Products</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("    <!--    navbar-->\n");
      out.write("    <nav class=\"navbar navbar-dark bg-dark\">\n");
      out.write("        <a class=\"navbar-brand mx-auto\" style=\"width: 200px;\" href=\"#\">AR Furniture Shop</a>\n");
      out.write("    </nav>\n");
      out.write("    \n");
      out.write("    <div class=\"container\">\n");
      out.write("        <h1 class=\"text-center\" style=\"margin-top: 10px;\">Add Product</h1>\n");
      out.write("        \n");
      out.write("        <form action=\"file_upload_update.jsp\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("            \n");
      out.write("            <div class=\"form-row\">\n");
      out.write("                <div class=\"form-group col-md-12\">\n");
      out.write("                    <label for=\"itemname\">Product Name</label>\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"itemname\" placeholder=\"Product Name\" name=\"itemname\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group col-md-12\">\n");
      out.write("                    <label for=\"itemdescription\">Description</label>\n");
      out.write("                    <textarea class=\"form-control\" aria-label=\"With textarea\" placeholder=\"Product Description\" name=\"itemdescription\"></textarea>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"form-group col-sm-6\">\n");
      out.write("                    <label>Category</label>\n");
      out.write("                    <select class=\"custom-select\" name=\"category\">\n");
      out.write("                        <option selected disabled>Select Category</option>\n");
      out.write("                        <option value=\"1\">Sofa</option>\n");
      out.write("                        <option value=\"2\">Bed</option>\n");
      out.write("                        <option value=\"3\">Chair</option>\n");
      out.write("                        <option value=\"4\">Table</option>\n");
      out.write("                    </select>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group col-sm-6\">\n");
      out.write("                    <label for=\"price\">Price</label>\n");
      out.write("                    <input type=\"number\" class=\"form-control\" id=\"price\" placeholder=\"Price\" name=\"price\">\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div>\n");
      out.write("                <label>Select Image</label>\n");
      out.write("                <div class=\"input-group mb-3\">\n");
      out.write("                    <div class=\"custom-file\">\n");
      out.write("                        <input type=\"file\" class=\"custom-file-input\" id=\"inputFile\" name=\"itemurl\">\n");
      out.write("                        <label class=\"custom-file-label\" for=\"inputFile\" aria-describedby=\"inputGroupFileAddon\">Choose file</label>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <button type=\"submit\" class=\"btn btn-primary btn-lg btn-block\" name=\"additem\">Add Product</button>\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js\" integrity=\"sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js\" integrity=\"sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k\" crossorigin=\"anonymous\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
