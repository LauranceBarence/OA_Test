package com.bwf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bwf.dao.AffairMapper;
import com.bwf.entity.Affair;
import com.bwf.entity.User;
import com.bwf.service.IAffairService;

@Service
public class AffairServiceImpl implements IAffairService {
	
	@Autowired
	AffairMapper affairMapper;
	
	@Override
	public Affair getAffairDetailByAffairId(Integer id) {
		// TODO Auto-generated method stub
		return affairMapper.getAffairDetailByAffairId(id);
	}

	@Override
	public void add(Affair affair, User currentUser) {
		// TODO Auto-generated method stub
		affairMapper.add(affair);
	}

	@Override
	public List<Affair> getAffairByMe(User currentUser) {
		// TODO Auto-generated method stub
		return affairMapper.getAffairByMe(currentUser);
	}

	@Override
	public List<Affair> getAffairToBePropose(User currentUser) {
		// TODO Auto-generated method stub
		return affairMapper.getAffairToBePropose(currentUser);
	}

}
