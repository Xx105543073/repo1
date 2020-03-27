package domain;

import java.util.Date;
import java.util.List;

public class Tip {

    private int tip_id;
    private User user;
    private Tab tab;
    private List<Reply> replies;
    private String tip_title;
    private String tip_content;
    private Date tip_publishTime;
    private int tip_replies;

    public List<Reply> getReplies() {
        return replies;
    }

    public void setReplies(List<Reply> replies) {
        this.replies = replies;
    }

    public int getTip_id() {
        return tip_id;
    }

    public void setTip_id(int tip_id) {
        this.tip_id = tip_id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Tab getTab() {
        return tab;
    }

    public void setTab(Tab tab) {
        this.tab = tab;
    }

    public String getTip_title() {
        return tip_title;
    }

    public void setTip_title(String tip_title) {
        this.tip_title = tip_title;
    }

    public String getTip_content() {
        return tip_content;
    }

    public void setTip_content(String tip_content) {
        this.tip_content = tip_content;
    }

    public Date getTip_publishTime() {
        return tip_publishTime;
    }

    public void setTip_publishTime(Date tip_publishTime) {
        this.tip_publishTime = tip_publishTime;
    }

    public int getTip_replies() {
        return tip_replies;
    }

    public void setTip_replies(int tip_replies) {
        this.tip_replies = tip_replies;
    }
}
