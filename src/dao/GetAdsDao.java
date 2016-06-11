package dao;

import beans.YearBook;

public interface GetAdsDao extends AdDao {
	public YearBook getAdsByAddress(int yearBook, String street, String town, String postCode) throws DaoException;
}
