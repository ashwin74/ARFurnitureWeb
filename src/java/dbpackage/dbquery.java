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
    Statement st1;
    public dbquery()
    {
        try {
            dbconnection db=new dbconnection();
            Connection con=db.getc();
            st1=con.createStatement();
            
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
            rs=st1.executeQuery("SELECT * FROM ITEM");
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
            rs=st1.executeQuery("SELECT `review`.*,`userdetails`.firstname FROM review,userdetails WHERE review.reviewid=userdetails.userid");
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
    public ResultSet view_business()
    {
        try {
            rs=st1.executeQuery("SELECT SUM(ordermaster.totalprice), COUNT(item.itemname), COUNT(userdetails.firstname), COUNT(ordermaster.orderstatus) FROM ordermaster, item, userdetails");
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
    
}
