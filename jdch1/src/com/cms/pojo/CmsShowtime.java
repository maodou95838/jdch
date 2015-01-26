package com.cms.pojo;



/**
 * CmsShowtime entity. @author MyEclipse Persistence Tools
 */

public class CmsShowtime  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private Integer showTime;


    // Constructors

    /** default constructor */
    public CmsShowtime() {
    }

    
    /** full constructor */
    public CmsShowtime(Integer showTime) {
        this.showTime = showTime;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getShowTime() {
        return this.showTime;
    }
    
    public void setShowTime(Integer showTime) {
        this.showTime = showTime;
    }
   








}