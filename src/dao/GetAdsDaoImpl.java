package dao;

import java.io.IOException;
import java.rmi.RemoteException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Locale;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import DefaultNamespace.MainProxy;
import beans.Ad;
import beans.YearBook;

public class GetAdsDaoImpl extends AdDaoImpl implements GetAdsDao{

	public GetAdsDaoImpl(DaoFactory daoFactory) {
		super(daoFactory);
	}
	
	@Override
   	public YearBook getAdsByAddress(int yearBook, String street, String town, String postCode) throws DaoException{
		MainProxy mainProxy = new MainProxy();
		ObjectMapper objectMapper = new ObjectMapper();
		YearBook yearBookBean = null;
		String dataJSON = null;    	
    	try {
    		dataJSON = mainProxy.getAdsByAddress(yearBook, street, town, postCode);
    		yearBookBean = objectMapper.readValue(dataJSON, YearBook.class);
		} catch (RemoteException e) {
			throw new DaoException(e.getMessage());
		} catch (JsonParseException e) {
			throw new DaoException(e.getMessage());
		} catch (JsonMappingException e) {
			throw new DaoException(e.getMessage());
		} catch (IOException e) {
			throw new DaoException(e.getMessage());
		}
    	
    	return yearBookBean;
	}
}
