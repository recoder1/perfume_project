package com.human.basic.service;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.basic.dao.RecommDAO;
import com.human.basic.domain.Perfume_ListVO;
import com.human.basic.domain.RecommVO;

@Service("recommService")
public class RecommServiceImpl implements RecommService{

	@Autowired
	private RecommDAO recommDAO;

	@Override
	public int testResultInsert(RecommVO vo) {
		System.out.println("RecommMapper 호출, 테스트 결과 DB에 입력중");
		return recommDAO.resultInsert(vo);
	}
	
	@Override
	public List<Perfume_ListVO> compare(RecommVO vo) {
		String q1 = vo.getGender();
		String q2 = vo.getStrength();
		String q3 = vo.getLasting();
		String q4a = vo.getMood();
		String q4b = vo.getMood2();
		String q5a = vo.getUser_likes();
		String q5b = vo.getUser_likes2();
		String q6a = vo.getUser_hates();
		String q6b = vo.getUser_hates2();
		String q7 = vo.getSeason();
		Set<String> totalSet = new HashSet<String>();
		Set<String> totalSetX = new HashSet<String>();
		
		if ( q1.equals("W") ) { q1 = "WN"; }
		else if ( q1.equals("M") ) { q1 = "MN"; }
		q1 = "["+q1+"]{1}";
		
		if ( q2.equals("M") ) { q2 = "WM"; }
		q2 = "["+q2+"]{1}";
		
		if ( (q3.equals("1")) || (q3.equals("3")) ) { q3 = "5"; }
		else if ( (q3.equals("9")) ) { q3 = "7"; }
		q3 = "["+q3+"]{1}";
		
		if (q4a.equals("cl")) {
			Set<String> set1 = new HashSet<String>(Arrays.asList("AR", "YE", "WO", "GR", "LV", "IR", "VI", "PA", "SO", "CC", "EA", "HE", "CO", "OZ", "AL", "LA", "PO", "SW", "FL", "SS", "WA", "HO"));
			totalSet.addAll(set1);
		} else if (q4a.equals("cm")) {
			Set<String> set1 = new HashSet<String>(Arrays.asList("AR", "FL", "AM", "PO", "RO", "YE", "WO", "WA", "WH", "TU", "SS", "MD", "VA", "LV", "MU", "AL", "SO", "CC", "LA", "NM", "LV", "BE", "NU", "HO"));
			totalSet.addAll(set1);
		} else if (q4a.equals("re")) {
			Set<String> set1 = new HashSet<String>(Arrays.asList("AM", "CI", "FR", "WA", "SS", "FS", "SW", "WO", "GR", "TR", "PA", "CC", "SA", "AN", "BA", "AR", "HE", "RU", "BE", "UI", "LA", "TR"));
			totalSet.addAll(set1);
		} else if (q4a.equals("pu")) {
			Set<String> set1 = new HashSet<String>(Arrays.asList("SW", "SA", "CH", "BE", "AM", "UI", "PO", "CI", "WA", "SS", "VN", "AL", "TR", "HO", "SO", "CC", "SA", "CA", "CM", "NU", "MU", "FL", "YE"));
			totalSet.addAll(set1);
		} else if (q4a.equals("ch")) {
			Set<String> set1 = new HashSet<String>(Arrays.asList("AM", "WO", "WA", "FS", "SM", "SS", "GR", "LV", "OU", "FR", "LE", "TO", "PA", "MO", "EA", "MA", "AQ", "OZ", "SA", "AN", "CO", "SP"));
			totalSet.addAll(set1);
		} else if (q4a.equals("in")) {
			Set<String> set1 = new HashSet<String>(Arrays.asList("CF", "SM", "LE", "TO", "MA", "AQ", "OZ", "SA", "AN", "WO", "WA", "WH", "TU", "SS", "MD", "VA", "IR", "VI", "AR", "AM", "PA", "OU", "HE", "FS", "SP", "MU"));
			totalSet.addAll(set1);
		} else if (q4a.equals("uq")) {
			Set<String> set1 = new HashSet<String>(Arrays.asList("CH", "CF", "LE", "TO", "MO", "EA", "MA", "AQ", "OZ", "SA", "AN", "BA", "NM", "CO", "MD", "GR", "IR", "VI", "CC", "CI", "OU", "SW", "HO", "BE", "CA", "NU", "UI", "LA", "TR", "RU", "WO", "SP", "WA", "SS", "FS", "SM", "AM", "FR"));
			totalSet.addAll(set1);
		} else if (q4a.equals("se")) {
			Set<String> set1 = new HashSet<String>(Arrays.asList("TU", "CH", "RU", "CF", "TO", "SA", "NU", "CA", "NM", "BE", "IR", "VI", "MD", "HO", "CM", "WH", "OU", "HO", "CM", "VA", "SW", "AM", "SP", "WA", "SS", "FS", "MU"));
			totalSet.addAll(set1);
		}
		
		System.out.println(totalSet);
		
		if (q4b.equals("cl")) {
			Set<String> set2 = new HashSet<String>(Arrays.asList("AR", "YE", "WO", "GR", "LV", "IR", "VI", "PA", "SO", "CC", "EA", "HE", "CO", "OZ", "AL", "LA", "PO", "SW", "FL", "SS", "WA", "HO"));
			totalSet.addAll(set2);
		} else if (q4b.equals("cm")) {
			Set<String> set2 = new HashSet<String>(Arrays.asList("AR", "FL", "AM", "PO", "RO", "YE", "WO", "WA", "WH", "TU", "SS", "MD", "VA", "LV", "MU", "AL", "SO", "CC", "LA", "NM", "LV", "BE", "NU", "HO"));
			totalSet.addAll(set2);
		} else if (q4b.equals("re")) {
			Set<String> set2 = new HashSet<String>(Arrays.asList("AM", "CI", "FR", "WA", "SS", "FS", "SW", "WO", "GR", "TR", "PA", "CC", "SA", "AN", "BA", "AR", "HE", "RU", "BE", "UI", "LA", "TR"));
			totalSet.addAll(set2);
		} else if (q4b.equals("pu")) {
			Set<String> set2 = new HashSet<String>(Arrays.asList("SW", "SA", "LA", "BE", "AM", "UI", "PO", "CI", "WA", "SS", "VA", "AL", "TR", "HO", "SO", "CC", "SA", "CA", "CM", "NU", "MU", "FL", "YE"));
			totalSet.addAll(set2);
		} else if (q4b.equals("ch")) {
			Set<String> set2 = new HashSet<String>(Arrays.asList("AM", "WO", "WA", "FS", "SM", "SS", "GR", "LV", "OU", "FR", "LE", "TO", "PA", "MO", "EA", "MA", "AQ", "OZ", "SA", "AN", "CO", "SP"));
			totalSet.addAll(set2);
		} else if (q4b.equals("in")) {
			Set<String> set2 = new HashSet<String>(Arrays.asList("CF", "SM", "LE", "TO", "MA", "AQ", "OZ", "SA", "AN", "WO", "WA", "WH", "TU", "SS", "MD", "VA", "IR", "VI", "AR", "PA", "OU", "HE", "FS", "SP", "MU"));
			totalSet.addAll(set2);
		} else if (q4b.equals("uq")) {
			Set<String> set2 = new HashSet<String>(Arrays.asList("CH", "CF", "LE", "TO", "MO", "EA", "MA", "AQ", "OZ", "SA", "AN", "BA", "NM", "CO", "MD", "GR", "IR", "VI", "CC", "CI", "OU", "SW", "HO", "BE", "CA", "NU", "UI", "LA", "TR", "RU", "WO", "SP", "WA", "SS", "FS", "SM", "AM", "FR"));
			totalSet.addAll(set2);
		} else if (q4b.equals("se")) {
			Set<String> set2 = new HashSet<String>(Arrays.asList("TU", "CH", "RU", "CF", "TO", "SA", "NU", "CA", "NM", "BE", "IR", "VI", "MD", "HO", "CM", "WH", "OU", "HO", "CM", "VA", "SW", "AM", "SP", "WA", "SS", "FS", "MU"));
			totalSet.addAll(set2);
		}
		
		System.out.println(totalSet);
		
		if (q5a.equals("AQ")) {
			Set<String> set3 = new HashSet<String>(Arrays.asList("MA", "AQ", "OZ"));
			totalSet.addAll(set3);
		} else if (q5a.equals("AR")) {
			Set<String> set3 = new HashSet<String>(Arrays.asList("AR", "HE", "LV", "PA"));
			totalSet.addAll(set3);
		} else if (q5a.equals("FL")) {
			Set<String> set3 = new HashSet<String>(Arrays.asList("FL", "YE", "WH", "RO", "TU", "IR", "VI"));
			totalSet.addAll(set3);
		} else if (q5a.equals("FR")) {
			Set<String> set3 = new HashSet<String>(Arrays.asList("UI", "CH", "LA"));
			totalSet.addAll(set3);
		} else if (q5a.equals("SM")) {
			Set<String> set3 = new HashSet<String>(Arrays.asList("SM", "TO"));
			totalSet.addAll(set3);
		} else if (q5a.equals("SP")) {
			Set<String> set3 = new HashSet<String>(Arrays.asList("SP", "FS", "SS", "WA"));
			totalSet.addAll(set3);
		} else if (q5a.equals("WO")) {
			Set<String> set3 = new HashSet<String>(Arrays.asList("WO", "OU"));
			totalSet.addAll(set3);
		}  else if (q5a.equals("SO")) {
			Set<String> set3 = new HashSet<String>(Arrays.asList("SO", "AL"));
			totalSet.addAll(set3);
		} else {
			Set<String> set3 = new HashSet<String>(Arrays.asList(q5a));
			totalSet.addAll(set3);
		}
		
		System.out.println(totalSet);

		
		if (q5b.equals("AQ")) {
			Set<String> set4 = new HashSet<String>(Arrays.asList("MA", "AQ", "OZ"));
			totalSet.addAll(set4);
		} else if (q5b.equals("AR")) {
			Set<String> set4 = new HashSet<String>(Arrays.asList("AR", "HE", "LV", "PA"));
			totalSet.addAll(set4);
		} else if (q5b.equals("FL")) {
			Set<String> set4 = new HashSet<String>(Arrays.asList("FL", "YE", "WH", "RO", "TU", "IR", "VI"));
			totalSet.addAll(set4);
		} else if (q5b.equals("FR")) {
			Set<String> set4 = new HashSet<String>(Arrays.asList("UI", "CH", "LA"));
			totalSet.addAll(set4);
		} else if (q5b.equals("SM")) {
			Set<String> set4 = new HashSet<String>(Arrays.asList("SM", "TO"));
			totalSet.addAll(set4);
		} else if (q5b.equals("SP")) {
			Set<String> set4 = new HashSet<String>(Arrays.asList("SP", "FS", "SS", "WA"));
			totalSet.addAll(set4);
		}  else if (q5b.equals("WO")) {
			Set<String> set4 = new HashSet<String>(Arrays.asList("WO", "OU"));
			totalSet.addAll(set4);
		} else if (q5b.equals("SO")) {
			Set<String> set4 = new HashSet<String>(Arrays.asList("SO", "AL"));
			totalSet.addAll(set4);
		} else {
			Set<String> set4 = new HashSet<String>(Arrays.asList(q5b));
			totalSet.addAll(set4);
		}
		
		System.out.println(totalSet);

		
		if (q6a.equals("AQ")) {
			Set<String> setX1 = new HashSet<String>(Arrays.asList("'MA'", "'AQ'", "'OZ'"));
			totalSetX.addAll(setX1);
		} else if (q6a.equals("AR")) {
			Set<String> setX1 = new HashSet<String>(Arrays.asList("'AR'", "'HE'", "'LV'", "'PA'"));
			totalSetX.addAll(setX1);
		} else if (q6a.equals("FL")) {
			Set<String> setX1 = new HashSet<String>(Arrays.asList("'FL'", "'YE'", "'WH'", "'RO'", "'TU'", "'IR'", "'VI'"));
			totalSetX.addAll(setX1);
		} else if (q6a.equals("FR")) {
			Set<String> setX1 = new HashSet<String>(Arrays.asList("'UI'", "'CH'", "'LA'"));
			totalSetX.addAll(setX1);
		} else if (q6a.equals("SM")) {
			Set<String> setX1 = new HashSet<String>(Arrays.asList("'SM'", "'TO'"));
			totalSetX.addAll(setX1);
		} else if (q6a.equals("SP")) {
			Set<String> setX1 = new HashSet<String>(Arrays.asList("'SP'", "'FS'", "'SS'", "'WA'"));
			totalSetX.addAll(setX1);
		}  else if (q6a.equals("WO")) {
			Set<String> setX1 = new HashSet<String>(Arrays.asList("WO", "OU"));
			totalSet.addAll(setX1);
		} else if (q6a.equals("SO")) {
			Set<String> setX1 = new HashSet<String>(Arrays.asList("SO", "AL"));
			totalSet.addAll(setX1);
		} else {
			Set<String> setX1 = new HashSet<String>(Arrays.asList("'"+q6a+"'"));
			totalSetX.addAll(setX1);
		}
		
		if (q6b.equals("AQ")) {
			Set<String> setX2 = new HashSet<String>(Arrays.asList("'MA'", "'AQ'", "'OZ'"));
			totalSetX.addAll(setX2);
		} else if (q6b.equals("AR")) {
			Set<String> setX2 = new HashSet<String>(Arrays.asList("'AR'", "'HE'", "'LV'", "'PA'"));
			totalSetX.addAll(setX2);
		} else if (q6b.equals("FL")) {
			Set<String> setX2 = new HashSet<String>(Arrays.asList("'FL'", "'YE'", "'WH'", "'RO'", "'TU'", "'IR'", "'VI'"));
			totalSetX.addAll(setX2);
		} else if (q6b.equals("FR")) {
			Set<String> setX2 = new HashSet<String>(Arrays.asList("'UI'", "'CH'", "'LA'"));
			totalSetX.addAll(setX2);
		} else if (q6b.equals("SM")) {
			Set<String> setX2 = new HashSet<String>(Arrays.asList("'SM'", "'TO'"));
			totalSetX.addAll(setX2);
		} else if (q6b.equals("SP")) {
			Set<String> setX2 = new HashSet<String>(Arrays.asList("'SP'", "'FS'", "'SS'", "'WA'"));
			totalSetX.addAll(setX2);
		}  else if (q6b.equals("WO")) {
			Set<String> setX2 = new HashSet<String>(Arrays.asList("WO", "OU"));
			totalSet.addAll(setX2);
		} else if (q6b.equals("SO")) {
			Set<String> setX2 = new HashSet<String>(Arrays.asList("SO", "AL"));
			totalSet.addAll(setX2);
		} else {
			Set<String> setX2 = new HashSet<String>(Arrays.asList("'"+q6b+"'"));
			totalSetX.addAll(setX2);
		}
		
		if (q7.equals("p")) {
			q7 = "(PM|PF|PW|AA)";
		} else if (q7.equals("m")) {
			q7 = "(PM|MF|MW|AA)";
		} else if (q7.equals("f")) {
			q7 = "(PF|MF|FW|AA)";
		} else if (q7.equals("w")) {
			q7 = "(PW|MW|FW|AA)";
		}
		
		
		
//		String include = "'..."+q1+q2+q3+q4+q5+q7+"'";
//		String exclude = "'......"+q6+"..'";
		
//		String include = "'...[N]{1}[S]{1}[5]{1}[AR|AM|FL]{2}[SA|FL|WO]{2}[FL|GR|MA|SW]{2}[PM|AA]{2}'";
//		String exclude = "'......[LEMAFL]{6}..'";
		
		System.out.println(totalSet);
		System.out.println(totalSetX);
		
		String inc = String.join("|", totalSet);
		String exc = String.join(", ", totalSetX);
		System.out.println("SET TO STRING inc >> "+inc);
		System.out.println("SET TO STRING exc >> "+exc);
		
		inc = "("+inc+")";
//		exc = "("+exc+")";
		
		System.out.println("STRING TO QUERY inc >> "+inc);
		System.out.println("STRING TO QUERY exc >> "+exc);
		
		String include = "'..."+q1+q2+q3+inc+inc+".."+q7+"'";
//		String include = "'..."+q1+q2+q3+inc+"["+inc+"]{1}"+"["+inc+"]{1}"+q7+"'";
//		String exclude = "'......."+exc+exc+exc+"..'";
//		String exclude1 = "'......."+exc+"......'";
//		String exclude2 = "'........."+exc+"....'";
//		String exclude3 = "'..........."+exc+"..'";
		
		System.out.println(include);
//		System.out.println(exclude);
		return recommDAO.resultView(include, exc);
	}
	
}
