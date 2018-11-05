package com.nf147.pet.entity;

public class Pet {
    private Integer pid;

    private Integer cid;

    private String name;

    private String photoUrls;

    private String price;

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    private String tags;

    private String status;

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPhotoUrls() {
        return photoUrls;
    }

    public void setPhotoUrls(String photoUrls) {
        this.photoUrls = photoUrls == null ? null : photoUrls.trim();
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags == null ? null : tags.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    @Override
    public String toString() {
        return "Pet{" +
                "pid=" + pid +
                ", cid=" + cid +
                ", name='" + name + '\'' +
                ", photoUrls='" + photoUrls + '\'' +
                ", price='" + price + '\'' +
                ", tags='" + tags + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}