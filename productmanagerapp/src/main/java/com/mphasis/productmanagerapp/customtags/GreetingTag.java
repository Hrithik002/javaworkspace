package com.mphasis.productmanagerapp.customtags;


import java.io.IOException;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;
import jakarta.servlet.jsp.JspWriter;

public class GreetingTag  extends SimpleTagSupport {

    private String name;       
    private String timeOfDay;  

    public void setName(String name) {
        this.name = name;
    }

    public void setTimeOfDay(String timeOfDay) {
        this.timeOfDay = timeOfDay;
    }

    @Override
    public void doTag() throws JspException, IOException {
        
        if (name == null || name.trim().isEmpty()) {
            throw new JspException("The 'name' attribute is required for <my:greet>.");
        }

        String tod = (timeOfDay == null || timeOfDay.trim().isEmpty())
                ? "day"
                : timeOfDay.trim().toLowerCase();

        String message;
        switch (tod) {
            case "morning":
                message = "Good morning, " + name + "!";
                break;
            case "afternoon":
                message = "Good afternoon, " + name + "!";
                break;
            case "evening":
                message = "Good evening, " + name + "!";
                break;
            default:
                
                message = "Hello, " + name + "!";
        }

        JspWriter out = getJspContext().getOut();
        out.write(message);
    }
}
