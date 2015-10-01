<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>

<%-- Links below are for the datatable --%>
<script src="http://cdn.alloyui.com/3.0.1/aui/aui-min.js"></script>
<link href="http://cdn.alloyui.com/3.0.1/aui-css/css/bootstrap.min.css" rel="stylesheet"></link>

<script type="text/javascript">
function confirmGetMessage() {
  //display a confirmation box asking the visitor if they want to get a message
  var theAnswer = confirm("Further edits cannot be made after submission. Are you sure you are ready to submit?");
	
  //if the user presses the "OK" button display the message "Javascript is cool!!"
  if (theAnswer){
     alert("SAVED! (Not really)");
  }
}
</script>


<portlet:defineObjects />

<portlet:renderURL var="viewURL">
    <portlet:param name="mvcPath" value="/html/test2/view.jsp"></portlet:param>
</portlet:renderURL>

<portlet:actionURL name="NewEntry" var="addEntryURL"></portlet:actionURL>

<aui:form action="<%= addEntryURL %>" name="<portlet:namespace />fm">
<h1>Player Information</h1>
<hr noshade Size=4 width="100%">

<aui:layout>
		<aui:column columnWidth="45" left="true">

			<aui:input name=""><b>FirstName</b></aui:input> 
			<aui:input name=""><b>LastName</b></aui:input>
            <aui:input name=""><b>Address1</b></aui:input>
            <aui:input name=""><b>Address2</b></aui:input>
            <aui:input name=""><b>City</b></aui:input>
            <aui:input name=""><b>State</b></aui:input>
            <aui:input name=""><b>ZipCode</b></aui:input>
            
		</aui:column>
		<aui:column columnWidth="10" center="true">
		<hr noshade Size=650 width="1%">
		</aui:column>
		
		<aui:column columnWidth="45" right="true">
		
		 <aui:input name=""><b>LeagueFee</b></aui:input>
		 <aui:input name=""><b>Phone</b></aui:input>
		  <aui:input name=""><b>Email</b></aui:input>
		  <aui:input name=""><b>BirthDate</b></aui:input>
		  
		<aui:field-wrapper name="gender">
		<aui:input inlineLabel="right" name="gender" type="radio" value="1" label="male" />
		<aui:input checked="<%= true %>" inlineLabel="right" name="gender" type="radio" value="2" label="female"  />
		</aui:field-wrapper>
		<aui:input name=""><b>League Age</b></aui:input>
        <aui:field-wrapper name="Sport">
        <aui:input inlineLabel="right" name="Sport" type="radio" value="1" label="Baseball" />
		<aui:input checked="<%= true %>" inlineLabel="right" name="Sport" type="radio" value="2" label="Softball"  />
		</aui:field-wrapper>
	
		</aui:column>
	</aui:layout>

            
          
            
           <h1>Parent/Guardian Information</h1> 
           <hr noshade Size=4 width="100%">

<aui:layout>
	<aui:column columnWidth="45" left="true">
	
            <aui:fieldset>
             <aui:input name=""><b>Parent1</b></aui:input>
             <aui:input name=""><b>Home Phone</b></aui:input>
             <aui:input name=""><b>Cell Phone</b></aui:input>
             <aui:input name=""><b>Work Phone</b></aui:input>
             <aui:input name=""><b>Email</b></aui:input>
             <aui:input name=""><b>Occupation</b></aui:input>
             
             <aui:field-wrapper name="volunteer">
			<aui:input inlineLabel="right" name="Volunteer" type="radio" value="1" label="Yes" />
			<aui:input checked="<%= true %>" inlineLabel="right" name="Volunteer" type="radio" value="2" label="No"  />
			</aui:field-wrapper>
			
            <aui:input name=""><b>Emergency Contact</b></aui:input>
            <aui:input name=""><b>Relationship</b></aui:input>
            <aui:input name=""><b>Phone</b></aui:input>
           </aui:fieldset>
              </aui:column>
              
              
        <aui:column columnWidth="10" center="true">
		<hr noshade Size=875 width="1%">
		</aui:column>
              
              
      <aui:column columnWidth="45" right="true">
             <aui:fieldset>
             <aui:input name=""><b>Parent2</b></aui:input>
             <aui:input name=""><b>Home Phone</b></aui:input>
             <aui:input name=""><b>Cell Phone</b></aui:input>
             <aui:input name=""><b>Work Phone</b></aui:input>
             <aui:input name=""><b>Email</b></aui:input>
             <aui:input name=""><b>Occupation</b></aui:input>
             
             <aui:field-wrapper name="volunteer">
			<aui:input inlineLabel="right" name="Volunteer" type="radio" value="1" label="Yes" />
			<aui:input checked="<%= true %>" inlineLabel="right" name="Volunteer" type="radio" value="2" label="No"  />
			</aui:field-wrapper>
			
            <aui:input name=""><b>Emergency Contact</b></aui:input>
            <aui:input name=""><b>Relationship</b></aui:input>
            <aui:input name=""><b>Phone</b></aui:input>
            </aui:fieldset>
            </aui:column>
              
              </aui:layout>
              <h1>Medical Information</h1>
              <hr noshade Size=4 width="100%">
            
            <H5>In case of a emergency, if family physician cannot be reached, I hereby authorize my child to be treated by Certified Personnel</H5> 
            <br></br>
  <aui:layout>
     <aui:column columnWidth="45" left="true">
           <aui:input name=""><b>Family Physician</b></aui:input>
           <aui:input name=""><b>Address</b></aui:input>
           <aui:input name=""><b>City</b></aui:input>
           <aui:input name=""><b>State/Country</b></aui:input>
           <aui:input name=""><b>Hospital Preference</b></aui:input>
           </aui:column>
           
        <aui:column columnWidth="10" center="true">
		<hr noshade Size=400 width="1%">
		</aui:column>
           
           
           <aui:column columnWidth="45" right="true">
           <aui:input name=""><b>Insurance Carrier</b></aui:input>
           <aui:input name=""><b>Policy Number</b></aui:input>
           <aui:input name=""><b>Group ID</b></aui:input>
          
           </aui:column>
           </aui:layout> 
        	<h5>Please list any allergies/medical problems, including those requiring maintenance medication(i.e Diabetic, Asthma, Siezure Discorder)</h5>
        
        
        
        //TABLE
        
        <div id="myDataTable"></div>
        <aui:script>
        YUI().use(
        		  'aui-datatable',
        		  'aui-datatype',
        		  function(Y) {
        		    var remoteData = [
        		      {MedicalDiagnosis: null, Medication: null, Dosage: null, FrequencyOfDosage: null},
        		      {MedicalDiagnosis: null, Medication: null, Dosage: null, FrequencyOfDosage: null},
        		      {MedicalDiagnosis: null, Medication: null, Dosage: null, FrequencyOfDosage: null},
        		      {MedicalDiagnosis: null, Medication: null, Dosage: null, FrequencyOfDosage: null}
        		     
        		    ];

        		    var nestedCols = [
        		      {
        		        editor: new Y.TextAreaCellEditor(),
        		        key: 'MedicalDiagnosis',
        		        sortable: true
        		      },
        		      {
        		        editor: new Y.TextAreaCellEditor(),
        		        key: 'Medication'
        		      },
        		      {
          		        editor: new Y.TextAreaCellEditor(),
          		        key: 'Dosage'
          		      },
        		      {
            		    editor: new Y.TextAreaCellEditor(),
            		    key: 'FrequencyOfDosage'
            		  }
        		    ];

        		    var dataTable = new Y.DataTable(
        		      {
        		        columns: nestedCols,
        		        data: remoteData,
        		        editEvent: 'click',
        		        plugins: [
        		          {
        		            cfg: {
        		              highlightRange: false
        		            },
        		            fn: Y.Plugin.DataTableHighlight
        		          }
        		        ]
        		      }
        		    ).render('#myDataTable');

        		    dataTable.get('boundingBox').unselectable();
        		  }
        		);
</aui:script>
        
        
        <h5>Last Date of Tetanus Toxoid Booster</h5>
        //Calender
        
     <h1>Terms and Conditions</h1>
     <hr noshade Size=4 width="100%">
     <h5>I/we, the parent/guardian of the above named candidate for a position on a Little League team, hereby give my/our approval to participate in any and all Little League activities, including transportation to and from activities</h5>
     
     <h5> This purpose of above listed information is to ensure that medical personnel have details of any medical problem which may interfere with or alter treatment</h5>
     <br>
     <h5> WARNING: PROTECTIVE EQUIPMENT CANNOT PREVENT ALL INJURIES A PLAYER MIGHT RECEIVE WHILE PARTICIPATING IN BASEBALL OR SOFTBALL</h5>
     <br>
     <h5> Little League does not limit participant in its activities on the basis of disability, race, color, national origin, creed, gender, sexual preference, or religious preference</h5>
     <br>
     <h5> Please check the box below to certify that you have read and agree to the above terms and conditions</h5>
       <aui:field-wrapper name="">
			<aui:input inlineLabel="right" name="Agree" type="radio" value="1" label="I Agree" />
			<aui:input checked="<%= true %>" inlineLabel="right" name="agree" type="radio" value="2" label="I disagree"  />
			</aui:field-wrapper>

        <aui:button-row>

            <aui:button onClick= "confirmGetMessage()" value="Submit"></aui:button>  <%-- type="submit" --%>
            <aui:button type="cancel" onClick="<%= viewURL.toString() %>"></aui:button>

        </aui:button-row>
        
</aui:form>