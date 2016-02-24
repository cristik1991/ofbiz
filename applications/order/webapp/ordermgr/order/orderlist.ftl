

<!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Hover Data Table</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example2" class="table table-bordered table-hover">
                    <thead>
                    	<tr>
		                    <th >${uiLabelMap.CommonDate}</th>
				            <th >${uiLabelMap.OrderOrder} ${uiLabelMap.CommonNbr}</th>
				            <th >${uiLabelMap.OrderOrderName}</th>
				            <th >${uiLabelMap.OrderOrderType}</th>
				            <th >${uiLabelMap.OrderOrderBillFromParty}</th>
				            <th >${uiLabelMap.OrderOrderBillToParty}</th>
				            <th >${uiLabelMap.OrderProductStore}</th>
				            <th >${uiLabelMap.CommonAmount}</th>
				            <th >${uiLabelMap.OrderTrackingCode}</th>
				            <#if state.hasFilter('filterInventoryProblems') || state.hasFilter('filterAuthProblems') || state.hasFilter('filterPOsOpenPastTheirETA') || state.hasFilter('filterPOsWithRejectedItems') || state.hasFilter('filterPartiallyReceivedPOs')>
				                <th >${uiLabelMap.CommonStatus}</th>
				                <th >${uiLabelMap.CommonFilter}</th>
				            <#else>
				                <th colspan="1" width="15%">${uiLabelMap.CommonStatus}</th>
				            </#if>
				         </tr>
                    </thead>
                    <tbody>
                  		<#list orderHeaderList as orderHeader>
				            <#assign status = orderHeader.getRelatedOne("StatusItem", true)>
				            <#assign orh = Static["org.ofbiz.order.order.OrderReadHelper"].getHelper(orderHeader)>
				            <#assign billToParty = orh.getBillToParty()?if_exists>
				            <#assign billFromParty = orh.getBillFromParty()?if_exists>
				            <#if billToParty?has_content>
				                <#assign billToPartyNameResult = dispatcher.runSync("getPartyNameForDate", Static["org.ofbiz.base.util.UtilMisc"].toMap("partyId", billToParty.partyId, "compareDate", orderHeader.orderDate, "userLogin", userLogin))/>
				                <#assign billTo = billToPartyNameResult.fullName?default("[${uiLabelMap.OrderPartyNameNotFound}]")/>
				                <#-- <#assign billTo = Static["org.ofbiz.party.party.PartyHelper"].getPartyName(billToParty, true)?if_exists> -->
				            <#else>
				              <#assign billTo = ''/>
				            </#if>
				            <#if billFromParty?has_content>
				              <#assign billFrom = Static["org.ofbiz.party.party.PartyHelper"].getPartyName(billFromParty, true)?if_exists>
				            <#else>
				              <#assign billFrom = ''/>
				            </#if>
				            <#assign productStore = orderHeader.getRelatedOne("ProductStore", true)?if_exists />
				            <tr>
				              <td><#if orderHeader.orderDate?has_content>${Static["org.ofbiz.base.util.UtilFormatOut"].formatDateTime(orderHeader.orderDate, "", locale, timeZone)!}</#if></td>
				              <td>
				                <a href="<@ofbizUrl>orderview?orderId=${orderHeader.orderId}</@ofbizUrl>" class="buttontext">${orderHeader.orderId}</a>
				              </td>
				              <td>${orderHeader.orderName?if_exists}</td>
				              <td>${orderHeader.getRelatedOne("OrderType", true).get("description",locale)}</td>
				              <td>${billFrom?if_exists}</td>
				              <td>${billTo?if_exists}</td>
				              <td><#if productStore?has_content>${productStore.storeName?default(productStore.productStoreId)}</#if></td>
				              <td><@ofbizCurrency amount=orderHeader.grandTotal isoCode=orderHeader.currencyUom/></td>
				              <td>
				                <#assign trackingCodes = orderHeader.getRelated("TrackingCodeOrder", null, null, false)>
				                <#list trackingCodes as trackingCode>
				                    <#if trackingCode?has_content>
				                        <a href="/marketing/control/FindTrackingCodeOrders?trackingCodeId=${trackingCode.trackingCodeId}&amp;externalLoginKey=${requestAttributes.externalLoginKey?if_exists}">${trackingCode.trackingCodeId}</a><br />
				                    </#if>
				                </#list>
				              </td>
				              <td>${orderHeader.getRelatedOne("StatusItem", true).get("description",locale)}</td>
				              <#if state.hasFilter('filterInventoryProblems') || state.hasFilter('filterAuthProblems') || state.hasFilter('filterPOsOpenPastTheirETA') || state.hasFilter('filterPOsWithRejectedItems') || state.hasFilter('filterPartiallyReceivedPOs')>
					              <td>
					                  <#if filterInventoryProblems.contains(orderHeader.orderId)>
					                    Inv&nbsp;
					                  </#if>
					                  <#if filterAuthProblems.contains(orderHeader.orderId)>
					                   Aut&nbsp;
					                  </#if>
					                  <#if filterPOsOpenPastTheirETA.contains(orderHeader.orderId)>
					                    ETA&nbsp;
					                  </#if>
					                  <#if filterPOsWithRejectedItems.contains(orderHeader.orderId)>
					                    Rej&nbsp;
					                  </#if>
					                  <#if filterPartiallyReceivedPOs.contains(orderHeader.orderId)>
					                    Part&nbsp;
					                  </#if>
					              </td>
				              </#if>
				            </tr>
				         </#list>
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->

              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Table With Full Features</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>Rendering engine</th>
                        <th>Browser</th>
                        <th>Platform(s)</th>
                        <th>Engine version</th>
                        <th>CSS grade</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Trident</td>
                        <td>Internet
                          Explorer 4.0</td>
                        <td>Win 95+</td>
                        <td> 4</td>
                        <td>X</td>
                      </tr>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th>Rendering engine</th>
                        <th>Browser</th>
                        <th>Platform(s)</th>
                        <th>Engine version</th>
                        <th>CSS grade</th>
                      </tr>
                    </tfoot>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->
	<script>
      $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": false,
          "ordering": true,
          "info": true,
          "autoWidth": false
        });
      });
    </script>


