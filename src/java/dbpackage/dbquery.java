/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbpackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Ashwin
 *
 * Database Connection
 * */

public class dbquery {
    ResultSet rs;
    Statement st1,st2;
    public dbquery()
    {
        try {
            dbconnection db=new dbconnection();
            Connection con=db.getc();
            st1=con.createStatement();
            st2=con.createStatement();
        } catch (Exception e) {
        }
    }
    
/**     CREATE      **/
    
    /** ADD CATEGORY **/
    public int add_category(String name)
    {
        int i=0;
        try {
             i=st1.executeUpdate("INSERT INTO `category`(`categoryname`)VALUES('"+name+"')");
        } catch (Exception e) {
            System.err.println(e.toString());
        }
        return i;
    }
    
    /** ADD CATEGORY **/
    public int add_notify(String notify, String ulid)
    {
        int i=0;
        try {
             i=st1.executeUpdate("UPDATE `ordermaster` SET `notification`= '"+notify+"' WHERE `userid`='"+ulid+"'");
        } catch (Exception e) {
            System.err.println(e.toString());
        }
        return i;
    }
    
    /** ADD CATEGORY **/
    public int change_status(String status, String ulid, String mid)
    {
        int i=0;
        try {
             i=st1.executeUpdate("UPDATE `ordermaster` SET `orderstatus`= '"+status+"' WHERE `userid`='"+ulid+"' AND `ordermasterid`='"+mid+"'");
        } catch (Exception e) {
            System.err.println(e.toString());
        }
        return i;
    }
    
    /** ADD ITEM **/
    public int add_item(String itemname, String itemprice,String categoryid, String itemdescription, String itemurl)
    {
        int i=0;
        try {
             i=st1.executeUpdate("INSERT INTO `item`(itemname, itemprice, categoryid,  itemdescription, itemurl) VALUES('"+itemname+"','"+itemprice+"', '"+categoryid+"' ,'"+itemdescription+"','"+itemurl+"') ");
        } catch (Exception e) {
            System.err.println(e.toString());
        }
        return i;
    }
   
/**     READ      **/
    
    /** VIEW ITEM **/
    public ResultSet view_item()
    {
        try {
            rs=st1.executeQuery("SELECT `item`.*, `category`.* FROM `item`,`category` WHERE `item`.categoryid = `category`.categoryid");
        } catch (Exception e) {
        }
        return rs;
    }
    
    /** VIEW CATEGORY **/
    public ResultSet view_category()
    {
        try {
            rs=st1.executeQuery("SELECT * FROM CATEGORY");
        } catch (Exception e) {
        }
        return rs;
    }
    
    /** VIEW REVIEW **/
    public ResultSet view_review()
    {
        try {
            rs=st1.executeQuery("SELECT `review`.*,`userdetails`.firstname,item.itemname FROM review,userdetails,item WHERE review.userid=userdetails.loginid AND review.itemid=item.itemid");
        } catch (Exception e) {
        }
        return rs;
    }
    
    /** VIEW ORDER **/
    public ResultSet view_order()
    {
        try {
            rs=st1.executeQuery("SELECT `ordermaster`.*,`userdetails`.* FROM `userdetails`,`ordermaster` WHERE `ordermaster`.`userid`=`userdetails`.`loginid`");
        } catch (Exception e) {
        }
        return rs;
    }
    
    /** VIEW BUSINESS STATISTICS **/
    public ResultSet view_profit()
    {
        try {
            rs=st1.executeQuery("SELECT SUM(`totalprice`) FROM `ordermaster`");
        } catch (Exception e) {
        }
        return rs;
    }
    
    public ResultSet view_items()
    {
        try {
            rs=st1.executeQuery("SELECT COUNT(`itemid`) FROM `item`");
        } catch (Exception e) {
        }
        return rs;
    }
    
    public ResultSet view_customers()
    {
        try {
            rs=st1.executeQuery("SELECT count(`userid`) FROM `userdetails`");
        } catch (Exception e) {
        }
        return rs;
    }
    
    
    
    /** VIEW USER **/
    public ResultSet view_user()
    {
        try {
            rs=st1.executeQuery("SELECT * FROM userdetails");
        } catch (Exception e) {
        }
        return rs;
    }
    
    /** VIEW USERNAME AND MOBILE NUMBER **/
    public ResultSet view_userOne(String lid)
    {
        try {
            rs=st1.executeQuery("SELECT * FROM `userdetails` WHERE `loginid`='"+lid+"'");
        } catch (Exception e) {
        }
        return rs;
    }
    
    /** VIEW USER ORDER **/
    public ResultSet view_user_order(String mid)
    {
        try {
            rs=st1.executeQuery("SELECT `orderslave`.*,`item`.*,`category`.* FROM `category`,`item`,`orderslave` WHERE `category`.`categoryid`=`item`.`categoryid` AND `item`.`itemid`=`orderslave`.`itemid` AND `orderslave`.`ordermasterid`='"+mid+"'");
        } catch (Exception e) {
        }
        return rs;
    }
    
    /** VIEW LOGIN DETAILS **/
    public ResultSet login(String username, String userkey)
    {
        try {
            rs=st1.executeQuery("SELECT * FROM login WHERE username = '"+username+"' AND userkey='"+userkey+"' ");
        } catch (Exception e) {
        }
        return rs;
    }
    
    /** DELETE ITEM **/
    public int delete_item(String itemid)
    {
        int i=0;
        try {
            i=st1.executeUpdate("DELETE FROM item WHERE itemid ='"+itemid+"'");
        } catch (Exception e) {
        }
        return i;
    }
    
    /** DELETE CATEGORY **/
    public int delete_category(String categoryid)
    {
        int i=0;
        try {
            i=st1.executeUpdate("DELETE FROM category WHERE categoryid ='"+categoryid+"'");
        } catch (Exception e) {
        }
        return i;
    }
    
    /** EDIT CATEGORY **/
    public int edit_category(String categoryid, String categoryname)
    {
        int i=0;
        try {
            i=st1.executeUpdate("UPDATE category SET categoryname = '"+categoryname+"' WHERE categoryid = '"+categoryid+"'");
        } catch (Exception e) {
        }
        return i;
    }
    
    
    /** VIEW USER LOGIN DETAILS FROM APP**/
    public ResultSet userLogin(String username, String userkey)
    {
        try {
            rs=st1.executeQuery("SELECT * FROM login WHERE username = '"+username+"' AND userkey='"+userkey+"' AND usertype='user'");
        } catch (Exception e) {
        }
        return rs;
    }
    
    /** SIGN UP FROM APP**/
    public int sign_up(String fname, String lname,String email, String password, String phone)
    {
        int i=0;
        String lid="";
        try {
             st2.executeUpdate("INSERT INTO `login`(username, userkey, usertype) VALUES('"+email+"','"+password+"', 'user') ");
             rs=st1.executeQuery("SELECT MAX(`loginid`) FROM `login`");
             if(rs.next())
             {
              lid=rs.getString(1);
             }
             i=st1.executeUpdate("INSERT INTO `userdetails`(loginid, firstname, lastname, email, mobileno) VALUES('"+lid+"','"+fname+"','"+lname+"', '"+email+"' ,'"+phone+"');");
        } catch (Exception e) {
            System.err.println(e.toString());
        }
        return i;
    }
    
    /** EDIT USER PROFILE FROM APP **/
    public int edit_user_account(String fname, String lname,String phone, String house, String city, String state, String zip, String lid)
    {
        int i=0;
        try {
             i=st1.executeUpdate("UPDATE userdetails SET firstname='"+fname+"', lastname='"+lname+"', mobileno='"+phone+"', housename='"+house+"', city='"+city+"', state='"+state+"', zipcode='"+zip+"' WHERE loginid='"+lid+"'");
        } catch (Exception e) {
            System.err.println(e.toString());
        }
        return i;
    }
    
    /** VIEW USER PROFILE FROM APP **/
    public ResultSet user_view(String lid)
    {
        try {
            rs=st1.executeQuery("SELECT * FROM userdetails WHERE loginid = '"+lid+"'");
        } catch (Exception e) {
        }
        return rs;
    }
    
    /** VIEW NOTIFICATION FROM APP **/
    public ResultSet notification(String lid)
    {
        try {
            rs=st1.executeQuery("SELECT `userid`, `orderdate`, `notification` FROM `ordermaster` WHERE `userid`= '"+lid+"'");
        } catch (Exception e) {
        }
        return rs;
    }
    
    /** VIEW ORDER DETAILS FROM APP **/
    public ResultSet order_details(String lid)
    {
        try {
            rs=st1.executeQuery("SELECT `firstname`,`housename`,`city`,`state`,`zipcode` FROM userdetails WHERE loginid='"+lid+"'");
        } catch (Exception e) {
        }
        return rs;
    }
    
    /** VIEW PRODUCTS IN APP **/
    public ResultSet view_products()
    {
        try {
            rs=st1.executeQuery("SELECT item.*,`category`.`categoryname`FROM ITEM, CATEGORY WHERE item.`categoryid`=`category`.`categoryid` ");
        } catch (Exception e) {
        }
        return rs;
    }
    
    /** VIEW REVIEW IN APP **/
    public ResultSet view_review(String id)
    {
        try {
            rs=st1.executeQuery("SELECT `review`.*,`userdetails`.`firstname` FROM `review`,`userdetails` WHERE `review`.`userid`=`userdetails`.`loginid` AND `review`.`itemid`='"+id+"'");
        } catch (Exception e) {
        }
        return rs;
    }
    
    
    /** VIEW ORDER STATUS IN APP **/
    public ResultSet view_order_status(String id)
    {
        try {
            rs=st1.executeQuery("SELECT itemname, itemprice,`orderslave`.`itemquantity`, `ordermaster`.`orderstatus` FROM item,`orderslave`,`ordermaster` WHERE `ordermaster`.`userid`='"+id+"' AND `ordermaster`.`ordermasterid`=`orderslave`.`ordermasterid` AND `orderslave`.`itemid`=`item`.`itemid`");
        } catch (Exception e) {
        }
        return rs;
    }
    
    /** ADD REVIEW **/
    public int add_review(String review, String rating, String itemid, String lid)
    {
        int i=0;
        try {
             i=st1.executeUpdate("INSERT INTO review(userid, itemid, postdate, review, rating) VALUES ('"+lid+"', '"+itemid+"', CURDATE(), '"+review+"', '"+rating+"')");
        } catch (Exception e) {
            System.err.println(e.toString());
        }
        return i;
    }
    
    /** ADD REVIEW **/
    public int order(String lid, String itemid, String card, String cvv, String quantity)
    {
        int i=0;
        try {
            int price=0;
            rs=st1.executeQuery("SELECT `item`.`itemprice` FROM `item` WHERE `itemid`= '"+itemid+"'");
            if(rs.next()){
                price=rs.getInt(1);
            }
            int total = price * Integer.parseInt(quantity);
            i=st1.executeUpdate("INSERT INTO `ordermaster`(`userid`, `orderdate`, `totalprice`) VALUES ('"+lid+"', CURDATE(), '"+total+"')");
            
            int masterid=0;
            rs=st1.executeQuery("SELECT MAX(`ordermasterid`) FROM `ordermaster`");
            if(rs.next()){
                masterid=rs.getInt(1);
            }
            
            i=st1.executeUpdate("INSERT INTO `orderslave`(`ordermasterid`, `itemid`, `itemquantity`) VALUES ('"+masterid+"', '"+itemid+"', '"+quantity+"')");
        } catch (Exception e) {
            System.err.println(e.toString());
        }
        return i;
    }
    
}