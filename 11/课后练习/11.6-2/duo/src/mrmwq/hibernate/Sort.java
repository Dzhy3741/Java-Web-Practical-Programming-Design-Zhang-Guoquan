package mrmwq.hibernate;

import java.util.Set;
public class Sort {
    private int id;
    private String name;
    private Sort fatherSort;
    private Set sonSorts;
    public Sort() {
    } 
    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setFatherSort(Sort fatherSort) {
        this.fatherSort = fatherSort;
    }

    public void setSonSorts(Set sonSorts) {
        this.sonSorts = sonSorts;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Sort getFatherSort() {
        return fatherSort;
    }

    public Set getSonSorts() {
        return sonSorts;
    }

}
