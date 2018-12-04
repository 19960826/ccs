package com.zs.pms.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zs.pms.appexecption.AppExecption;
import com.zs.pms.dao.PinDao;
import com.zs.pms.po.PinPo;
import com.zs.pms.service.PindaService;
import com.zs.pms.utils.constant;
import com.zs.pms.vo.QueryPinda;

@Service
public class PindaServiceimpl implements PindaService {
	@Autowired
	PinDao pd;

	@Override
	public int insert(PinPo title) throws AppExecption {
		// TODO Auto-generated method stub
		return pd.insert(title);
	}

	@Override
	public void update(PinPo title) throws AppExecption {
		// TODO Auto-generated method stub
		pd.update(title);;
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		pd.delete(id);
	}

	@Override
	public void deleteById(int[] id) {
		// TODO Auto-generated method stub
		pd.deleteById(id);
	}

	@Override
	public PinPo queryById(int id) {
		// TODO Auto-generated method stub
		return pd.queryBYId(id);
	}

	@Override
	public List<PinPo> queryByCon(QueryPinda query) {
		// TODO Auto-generated method stub
		return pd.queryByCon(query);
	}

	@Override
	public List<PinPo> queryByPage(QueryPinda query, int page) throws AppExecption {
		// TODO Auto-generated method stub
		query.setPage(1);
		return pd.queryByPage(query);
	}

	@Override
	public int queryCount(QueryPinda query) {
		// TODO Auto-generated method stub
		int count=pd.queryCount(query);
		if(count%constant.PAGECOUNT==0){
			return count/constant.PAGECOUNT;
		}else{
			return count/constant.PAGECOUNT+1;

		}
		
	}



	
}
