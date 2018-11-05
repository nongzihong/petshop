package com.nf147.pet.dao;

import com.nf147.pet.entity.Pet;
import java.util.List;

public interface PetMapper {
    int deleteByPrimaryKey(Integer pid);

    int insert(Pet record);

    Pet selectByPrimaryKey(Integer pid);

    List<Pet> selectAll();

    int updateByPrimaryKey(Pet record);

    List<Pet>query(Pet pet);
}