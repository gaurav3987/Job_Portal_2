package com.abc.Abc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abc.Abc.dto.EmailSend;
public interface EmailRepository extends JpaRepository <EmailSend, Integer>{

}
