package com.comtrade.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.comtrade.entity.Category;
import com.comtrade.entity.Product;
@Repository
public interface ProductRepository extends CrudRepository<Product, Integer> {


	@Query(value = "select * from product p where p.id_category = :id", nativeQuery = true)
	List<Product> findByCategoryId(@Param("id")int categoryId);

}
