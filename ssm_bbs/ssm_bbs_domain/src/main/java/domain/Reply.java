package domain;

import java.util.Date;

public class Reply {

    private int reply_id;
    private int user_id;
    private int tip_id;
    private String reply_content;
    private Date reply_publishTime;

    public int getReply_id() {
        return reply_id;
    }

    public void setReply_id(int reply_id) {
        this.reply_id = reply_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getTip_id() {
        return tip_id;
    }

    public void setTip_id(int tip_id) {
        this.tip_id = tip_id;
    }

    public String getReply_content() {
        return reply_content;
    }

    public void setReply_content(String reply_content) {
        this.reply_content = reply_content;
    }

    public Date getReply_publishTime() {
        return reply_publishTime;
    }

    public void setReply_publishTime(Date reply_publishTime) {
        this.reply_publishTime = reply_publishTime;
    }
}
