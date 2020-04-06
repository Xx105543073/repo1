package domain;

import java.util.Date;

/**
 * 用户实体类
 * v1.1 2020-03-03 12:01 增加注册时间属性，修改属性注释
 * v1.2 2020-03-04 11:51 增加最近登录时间、修改时间属性
 */
public class User {
    private int user_id; // 用户id
    private String user_name; // 用户名
    private String user_nick; // 昵称
    private String user_password; // 密码
    private int user_type; // 权限，0-超级管理员，1-管理员，2-普通用户
    private String user_typeStr;
    private int user_age;
    private int user_gender;//1-男 2-女


    public int getUser_gender() {
        return user_gender;
    }

    public void setUser_gender(int user_gender) {
        this.user_gender = user_gender;
    }

    public int getUser_age() {
        return user_age;
    }

    public void setUser_age(int user_age) {
        this.user_age = user_age;
    }

    public String getUser_typeStr() {
        if(user_type==0){
            user_typeStr="超级管理员";
        }else if (user_type==1){
            user_typeStr="大会员";
        }else if (user_type==2){
            user_typeStr="普通用户";
        }
        return user_typeStr;
    }

    public void setUser_typeStr(String user_typeStr) {
        this.user_typeStr = user_typeStr;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_nick() {
        return user_nick;
    }

    public void setUser_nick(String user_nick) {
        this.user_nick = user_nick;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public int getUser_type() {
        return user_type;
    }

    public void setUser_type(int user_type) {
        this.user_type = user_type;
    }
}
