package domain;

import java.util.Date;

public class Tab {
    private int tab_id;//板块id
    private String tab_name;//板块名字
    private Date tab_createTime;//板块的创建时间

    public int getTab_id() {
        return tab_id;
    }

    public void setTab_id(int tab_id) {
        this.tab_id = tab_id;
    }

    public String getTab_name() {
        return tab_name;
    }

    public void setTab_name(String tab_name) {
        this.tab_name = tab_name;
    }

    public Date getTab_createTime() {
        return tab_createTime;
    }

    public void setTab_createTime(Date tab_createTime) {
        this.tab_createTime = tab_createTime;
    }


}
