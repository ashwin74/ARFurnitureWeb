/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package android_connections;

import dbpackage.dbquery;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 *
 * @author Ashwin
 */
public class ProductDetail extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProductDetail</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductDetail at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            JSONObject json = new JSONObject();
            try {
                dbquery db = new dbquery();
                ResultSet rs = db.view_product_details();
                JSONArray array = new JSONArray();
                
                if(rs.next()){
                    
                    json.put("status", "1");
                    json.put("itemname",rs.getString("itemname"));
                            json.put("itemid",rs.getString("itemid"));
                            json.put("itemprice",rs.getString("itemprice"));
                            json.put("itemdescription",rs.getString("itemdescription"));
                            json.put("itemurl",rs.getString("itemurl"));
                            array.add(json);
                    do {
                        JSONObject json1 = new JSONObject();
                        json.put("itemid",rs.getString("itemid"));
                        json.put("itemprice",rs.getString("itemprice"));
                        json.put("itemdescription",rs.getString("itemdescription"));
                        json.put("itemurl",rs.getString("itemurl"));
                        array.add(json);
                    } while (rs.next());  
                    json.put("data", array);
                }else{
                    json.put("status", "0");
                }
            } catch (Exception e) {
        }
            response.getWriter().write(json.toString());
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
