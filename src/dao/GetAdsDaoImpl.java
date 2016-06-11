package dao;

import java.io.IOException;
import java.rmi.RemoteException;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import DefaultNamespace.MainProxy;
import beans.YearBook;

public class GetAdsDaoImpl extends AdDaoImpl implements GetAdsDao{

	public GetAdsDaoImpl(DaoFactory daoFactory) {
		super(daoFactory);
	}
	
	//Loading of the ads by using the address (street, town and postcode)
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
	
	//Loading of the ads from a category
	@Override
	public YearBook getAdsByCategory(int yearBook, String category) throws DaoException{
		MainProxy mainProxy = new MainProxy();
		ObjectMapper objectMapper = new ObjectMapper();
		YearBook yearBookBean = null;
		String dataJSON = null;    	
    	try {
    		dataJSON = mainProxy.getAdsByCategory(yearBook, category);
    		yearBookBean = objectMapper.readValue(dataJSON, YearBook.class);
		} catch (RemoteException e) {
			e.printStackTrace();
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
	
	//Loading of the ads thanks of the ads' names
	@Override
	public YearBook getAdsByName(int yearBook, String name) throws DaoException{
		MainProxy mainProxy = new MainProxy();
		ObjectMapper objectMapper = new ObjectMapper();
		YearBook yearBookBean = null;
		String dataJSON = null;    	
    	try {
    		dataJSON = mainProxy.getAdsByName(yearBook, name);
    		yearBookBean = objectMapper.readValue(dataJSON, YearBook.class);
		} catch (RemoteException e) {
			e.printStackTrace();
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
