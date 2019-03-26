<%@page import="dbpackage.dbquery"%>
<%@page import="dbpackage.FilePath"%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.util.Streams"%>
<%@page import="java.io.InputStream"%>
<%@page import="org.apache.commons.fileupload.FileItemStream"%>
<%@page import="org.apache.commons.fileupload.FileItemIterator"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("lid")==null)
      response.sendRedirect("index.jsp");

  %>
<%
ServletFileUpload upload=new ServletFileUpload();
FileItemIterator iter=null;
String itemname=null, itemdescription=null, category=null, price=null;
String fle=null;
iter=upload.getItemIterator(request);
while(iter.hasNext())
{
    FileItemStream item=iter.next();
    String nam=item.getFieldName();
    InputStream stream=item.openStream();
    if(item.isFormField())
    {
        String str=Streams.asString(stream);
        if(nam.equals("itemname"))
        {
            itemname=str;
        }
        if(nam.equals("itemdescription"))
        {
            itemdescription=str;
        }
        if(nam.equals("category"))
        {
            category=str;
        }
        if(nam.equals("price"))
        {
            price=str;
        }
    }
    else
       
        if(item.getName()!="")
        {
            File f=new File(FilePath.getPath()+item.getName().substring(item.getName().lastIndexOf("\\") + 1));
            fle=item.getName().substring(item.getName().lastIndexOf("\\") + 1);
            if(!f.exists())
            {
                f.createNewFile();
            }
            FileOutputStream fos=new FileOutputStream(f);
            int ch;
            while((ch=stream.read())!=-1)
            {
                fos.write(ch);
            }
        }
}

dbquery db=new dbquery();
int i=db.add_item(itemname, price, category , itemdescription, fle);
 if(i>0)
 {
      %>
<script> 
    alert("Item Added Successfully");
    window.location="viewItem.jsp";
</script>
<% 
 }
%>