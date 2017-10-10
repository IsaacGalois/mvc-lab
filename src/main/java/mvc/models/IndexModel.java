package mvc.models;

import javax.persistence.*;
import java.util.List;

@Entity
public class IndexModel {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer indexId;

    @Version
    private Integer version;

    private String text;
    private String password;
    private boolean checkBox1;
    private boolean checkBox2;
    private boolean checkBox3;
    private String textArea;
    private String radio;
    private int select1;
    private Integer[] select2;

    public Integer getIndexId() {
        return indexId;
    }

    public void setIndexId(Integer indexId) {
        this.indexId = indexId;
    }

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean getCheckBox1() {
        return this.checkBox1;
    }

    public void setCheckBox1(boolean checkBox1) {
        this.checkBox1 = checkBox1;
    }

    public boolean getCheckBox2() {
        return this.checkBox2;
    }

    public void setCheckBox2(boolean checkBox2) {
        this.checkBox2 = checkBox2;
    }

    public boolean getCheckBox3() {
        return this.checkBox3;
    }

    public void setCheckBox3(boolean checkBox3) {
        this.checkBox3 = checkBox3;
    }

    public String getTextArea() {
        return textArea;
    }

    public void setTextArea(String textArea) {
        this.textArea = textArea;
    }

    public String getRadio() {
        return radio;
    }

    public void setRadio(String radio) {
        this.radio = radio;
    }

    public int getSelect1() {
        return select1;
    }

    public void setSelect1(int select1) {
        this.select1 = select1;
    }

    public Integer[] getSelect2() {
        return select2;
    }

    public void setSelect2(Integer[] select2) {
        this.select2 = select2;
    }

    public String toString() {

        return "Text: "+this.text+", Password: "+this.password+
                ", CB1: "+ this.checkBox1 +", CB2: "+ this.checkBox2 +", CB3: "+ this.checkBox3+
                ", textArea: "+textArea+", radio: "+this.radio+", select1: "+select1+", select2 length"+select2.length;
    }
}
