package domain;

import java.util.Date;

public class Tab {
    private int tab_id;
    private String tab_name;
    private Date tab_createTime;
    private Date tab_modifyTime;

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

    public Date getTab_modifyTime() {
        return tab_modifyTime;
    }

    public void setTab_modifyTime(Date tab_modifyTime) {
        this.tab_modifyTime = tab_modifyTime;
    }
}
