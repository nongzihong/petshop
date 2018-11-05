package com.nf147.pet.dao;

import com.nf147.pet.entity.Tag;
import java.util.List;

public interface TagMapper {
    int deleteByPrimaryKey(Integer tid);

    int insert(Tag record);

    Tag selectByPrimaryKey(Integer tid);

    List<Tag> selectAll();

    int updateByPrimaryKey(Tag record);
}