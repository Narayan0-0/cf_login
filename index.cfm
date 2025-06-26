<!--- <cfdump var="#url#" abort="true"> --->
<!--- <cfdump var="#session#" abort="true"> --->
<!--- <cfdump var="#application#" abort="true"> --->
<!--- <cfdump var="#cgi#" abort="true"> --->
<!--- <cfdump var="#request#" abort="true"> --->
<!--- <cfdump var="#variables#" abort="true"> --->

<!--- <cfif structKeyExists(url, "name")>
    <cfoutput>Hello #url.name#</cfoutput>
<cfelse>
    <cfoutput>Something went wrong</cfoutput>
</cfif>

<cfabort> --->

<cfoutput>Hello from CFML Land!</cfoutput>
<br>
<cfset a=10.5>
<cfset b=10>

<cfset c = a+b>
<cfoutput> Answer: #c# </cfoutput>
<br>
<!--- writeoutput("answer: #c#"); --->

<!--- <cfset aString = "string">
<cfset aNumber = 42>
aString: <cfoutput>#aString#</cfoutput>
aNumber: <cfoutput>#aNumber#</cfoutput>
<cfset aStringAndANumber = aString + aNumber>
aStringAndANumber: <cfoutput>#aStringAndANumber#</cfoutput>
<br> --->

<cfsavecontent variable="EmailContent">
    Hi Receiver,
    We want to send you a hoverboard.
    Let us know if you will accept this offer.
    -Sender
</cfsavecontent>
<cfoutput>#EmailContent#</cfoutput>
<cfoutput><pre>#EmailContent#</pre></cfoutput>

<br>
<cfset myarray = ["yash","mathur","test"]>
<cfloop array="#myarray#" index="value">
<cfoutput>#value#</cfoutput>
</cfloop>

<br>
<cfset obj = {"name" = "yash","surname" = "mathur","testkey" = "testvalue"}>
<cfoutput>#obj.name#</cfoutput><br>
<cfoutput>#obj.testkey#</cfoutput>
<br>
<cfloop collection="#obj#" index="value">
<cfoutput>#value# #obj[value]#</cfoutput><br>
</cfloop>
<br>
<cfif a == 10.5>
<cfoutput>Inside if</cfoutput>
<cfelse>
<cfoutput>Inside else</cfoutput>
</cfif>
<br>
<cfset name="yash">
<cfoutput>#ucase(name)#</cfoutput> 

