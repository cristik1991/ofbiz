package org.ofbiz.demo.test;

import org.junit.Test;
import org.ofbiz.base.util.UtilMisc;
import org.ofbiz.entity.GenericValue;
import org.ofbiz.service.testtools.OFBizTestCase;

public class EntityTestCase extends OFBizTestCase{

	private GenericValue userLogin;
	
	public EntityTestCase(String name) {
		super(name);
	}

	@Override
	protected void setUp() throws Exception {
		userLogin = delegator.findOne("UserLogin", UtilMisc.toMap("userLoginId","system"), false);
	}

	@Override
	protected void tearDown() throws Exception {
		// TODO Auto-generated method stub
		super.tearDown();
	}

	@Test
	public void testIt() throws Exception{
		GenericValue party = delegator.makeValue("Party");
		party.setNonPKFields(UtilMisc.toMap("partyTypeId","PERSON","description","test","statusId","PARTY_ENABLE"));
	}
	
	
}
