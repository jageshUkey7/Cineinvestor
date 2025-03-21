package com.abcm.ablepay.pg.security;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import jakarta.transaction.Transactional;


@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
    User findByUsername(String username);

    @Modifying
    @Transactional
    @Query(value = "update user set progress_id=?2 where ref_id=?1 ",nativeQuery = true)
	public void updateProgressId(int refId, int progressId);
}
