package com.comtrade.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.comtrade.entity.Category;
@Repository

public interface CategoryRepository extends JpaRepository<Category, Integer> {


}
