/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author l
 */
public class Group {

    private int id;
    private String name;
    private int subjectID;
    private int lectureID;
    private Lecture lecture;
    private ArrayList<Student> students = new ArrayList<>();
    private ArrayList<Subject> subjects = new ArrayList<>();

    public Group() {
    }

    public Group(int id, String name, int subjectID, int lectureID, Lecture lecture) {
        this.id = id;
        this.name = name;
        this.subjectID = subjectID;
        this.lectureID = lectureID;
        this.lecture = lecture;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSubjectID() {
        return subjectID;
    }

    public void setSubjectID(int subjectID) {
        this.subjectID = subjectID;
    }

    public int getLectureID() {
        return lectureID;
    }

    public void setLectureID(int lectureID) {
        this.lectureID = lectureID;
    }

    public ArrayList<Student> getStudents() {
        return students;
    }

    public void setStudents(ArrayList<Student> students) {
        this.students = students;
    }

    public ArrayList<Subject> getSubjects() {
        return subjects;
    }

    public void setSubjects(ArrayList<Subject> subjects) {
        this.subjects = subjects;
    }

    public Lecture getLecture() {
        return lecture;
    }

    public void setLecture(Lecture lecture) {
        this.lecture = lecture;
    }

    @Override
    public String toString() {
        return "Group{" + "id=" + id + ", name=" + name + ", subjectID=" + subjectID + ", lectureID=" + lectureID + '}';
    }

}
