/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Calender;

import Admin.Admin;
import Employee.Employee;
import java.util.*;
import org.apache.tomcat.jni.Time;
import java.util.Calendar;
/**
 *
 * @author brettperrine
 */
public class Meeting {
   private String name;
   private Calendar date;
   private List<Employee> attendees;
   private Admin facilitator;
   private ArrayList<String> topics;
   private Time startTime;

   /**
    * @return the name
    */
   public Meeting()
   {  
      this.name = "Meeting";
   }
   public String getName() {
      return name;
   }

   /**
    * @param name the name to set
    */
   public void setName(String name) {
      this.name = name;
   }

   /**
    * @return the date
    */
   public Calendar getDate() {
      return date;
   }

   /**
    * @param date the date to set
    */
   public void setDate(Calendar cal) {
      this.date = cal;
   }

   /**
    * @return the attendees
    */
   public List<Employee> getAttendees() {
      return attendees;
   }

   /**
    * @param attendees the attendees to set
    */
   public void setAttendees(List<Employee> attendees) {
      this.attendees = attendees;
   }

   /**
    * @return the facilitator
    */
   public Admin getFacilitator() {
      return facilitator;
   }

   /**
    * @param facilitator the facilitator to set
    */
   public void setFacilitator(Admin facilitator) {
      this.facilitator = facilitator;
   }

   /**
    * @return a topic from the ArrayList of topics at index i
    */
   public String getTopic(int loc) {   
      return topics.get(loc);
   }
   
  /**
    * Adds a new topic to the end of topic list
    */
   public void addTopic(String topic) {
      topics.add(topic);
   }
   
    public void addTopicAt(String topic, int loc) {
      topics.add(loc, topic);
   }

     public void removeTopic(String topic) {
      topics.add(topic);
   }
   /**
    * @return the topics
    */
   public ArrayList<String> getTopics() {
      return topics;
   }

   /**
    * @param topics the topics to set
    */
   public void setTopics(ArrayList<String> topics) {
      this.topics = topics;
   }

   /**
    * @return the startTime
    */
   public Time getStartTime() {
      return startTime;
   }

   /**
    * @param startTime the startTime to set
    */
   public void setStartTime(Time startTime) {
      this.startTime = startTime;
   }
   
   
}
