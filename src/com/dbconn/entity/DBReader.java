package com.dbconn.entity;
import Entity.Reader;
import com.dbconn.tool.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBReader extends DBConnect{
    public Reader QueryReaderById(String id){
        Reader reader = new Reader();
        DBIO ioDao = new DBIO();
        Connection conn = null;
        try {
            conn = super.getConnection();
            String sql = "SELECT * FROM reader WHERE username=" + "'" + id + "'";
            PreparedStatement pst = null;
            ResultSet rs = null;
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()){
                reader.setName(rs.getString("name"));
                reader.setSex(rs.getString("sex"));
                reader.setStatus(rs.getInt("status"));
                reader.setGrade(rs.getString("grade"));
                reader.setClassnum(rs.getString("classnum"));
                reader.setBorrow(ioDao.QueryBorrowNumByReaderid(id).size());
            }
            return reader;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public Reader login(String username,String password){
        Reader reader = new Reader();
        try {
            Connection conn = super.getConnection();
            String sql = "SELECT * FROM reader WHERE username=? and password=?";
            PreparedStatement pst = null;
            ResultSet rs = null;
            pst = conn.prepareStatement(sql);
            pst.setString(1, username);
            pst.setString(2,password);
            rs=pst.executeQuery();
            if(rs.next()){
                reader.setUsername(rs.getString("username"));
                reader.setPassword(rs.getString("password"));
                reader.setName(rs.getString("name"));
                reader.setSex(rs.getString("sex"));
                reader.setStatus(rs.getInt("status"));
                reader.setGrade(rs.getString("grade"));
                reader.setClassnum(rs.getString("classnum"));
                reader.setServer(rs.getInt("server"));
                reader.setUUID(rs.getString("UUID"));
                return reader;
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Reader> GetAllReader(){
        ArrayList<Reader> ReaderList = new ArrayList<>();
        Connection conn = null;
        try {
            conn = super.getConnection();
            String sql = "SELECT * FROM reader";
            PreparedStatement pst = null;
            ResultSet rs = null;
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();
            Reader reader = null;
            while(rs.next()){
                reader = new Reader();
                reader.setUsername(rs.getString("username"));
                reader.setName(rs.getString("name"));
                reader.setSex(rs.getString("sex"));
                reader.setStatus(rs.getInt("status"));
                reader.setMail(rs.getString("mail"));
                reader.setGrade(rs.getString("grade"));
                reader.setClassnum(rs.getString("classnum"));
                reader.setTel(rs.getString("tel"));
                ReaderList.add(reader);
            }
            return ReaderList;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public void SetBlackList(String username, boolean isblack){
        int i = 0;
        Connection conn = null;
        String sql = null;
        try {
            conn = super.getConnection();
            PreparedStatement pst = null;
            if(isblack == true)
                sql = "UPDATE reader SET status=1 WHERE username=?";
            else
                sql = "UPDATE reader SET status=-1 WHERE username=?";
            pst = conn.prepareStatement(sql);
            pst.setString(1, username);
            i = pst.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    public void addreader(Reader reader){
        try {
            int i = 0;
            Connection conn = super.getConnection();
            PreparedStatement pst = null;
            String sql = "insert into reader (username, password, name, sex, status, mail, tel, grade, classnum,server,UUID)values(?, ?, ?, ?, ?, ?, ?, ?, ?,?,?)";
            pst = conn.prepareStatement(sql);
            pst.setString(1, reader.getUsername());
            pst.setString(2, reader.getPassword());
            pst.setString(3, reader.getName());
            pst.setString(4, reader.getSex());
            pst.setInt(5, 1);
            pst.setString(6, reader.getMail());
            pst.setString(7, reader.getTel());
            pst.setString(8, reader.getGrade());
            pst.setString(9, reader.getClassnum());
            pst.setInt(10,0);
            pst.setString(11, reader.getUUID());
            i = pst.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void DeleteById(String s){
        try {
            int i = 0;
            Connection conn = super.getConnection();
            PreparedStatement pst = null;
            String sql = "DELETE FROM reader WHERE  username=?";
            pst = conn.prepareStatement(sql);
            pst.setString(1,s);
            i = pst.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public boolean isin(String id){
        try {
            Connection conn = super.getConnection();
            conn = super.getConnection();
            String sql = "SELECT * FROM reader WHERE username=" + "'" + id + "'";
            PreparedStatement pst = null;
            ResultSet rs = null;
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()){
                return true;
            }
        }catch ( Exception e){
            e.printStackTrace();
        }

        return false;
    }
    public int updatastatus(String id){
        int i=0;
        try {

            Connection conn = super.getConnection();
            String sql = "update reader set server=1 where username="+id+"";
            PreparedStatement pst = null;
            ResultSet rs = null;
            pst=conn.prepareStatement(sql);
            i=pst.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return i;
    }
    public boolean mailstatus(String id,String UUID){
        try {
            int i=0;
            Connection conn = super.getConnection();
            String sql = "select * from reader where username="+id+" and UUID='"+UUID+"'";
            PreparedStatement pst = null;
            ResultSet rs = null;
            pst = conn.prepareStatement(sql);
            rs=pst.executeQuery();
            if(rs.next()){
            if (updatastatus(id)==0){
                return false;
            }else{
                return true;
            }}
        }catch ( Exception e){
            e.printStackTrace();
        }

        return false;
    }

}

