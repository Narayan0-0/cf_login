<cfscript>

    name = "yash";
    target = "mathur";
    // writedump(ucase(name));
    writeoutput(ucase(name));
    writeoutput("Hello from CFML Land! #target#");
    writeOutput("<br>");


    a = now()
    writeoutput(a);
    writeOutput("<br>");

    param myvar = "some value ";
    if(isDefined("myvar")){
        writeOutput(myvar);
    }
    else{
        writeOutput("not defined");
    }

    myarr = ["yash","mathur",22];
    for (var i =1 ; i lte myarr.len();i++){
        writeOutput(myarr[i]);
        writeOutput("<br>");
    }

    obj = {"name" = "yashhhhhh","surname" = "mathur"};
    writeOutput(obj.name);


    function sayHello( target ){
        return "Hi #target#! I'm #name#";
    }
   
    function add( required a, required b ){
        return a + b;
    }

    writeOutput(sayHello());
    writeOutput(add(2,3));

//    values = [ 1, 2];
//    writeOutput(add(argumentCollection=values));

</cfscript>

<!--- <cfoutput>Hello from CFML Land!</cfoutput>
<cfoutput>Hello from CFML Land Again!</cfoutput>

<cfset a=10.5>
<cfset b=10>


<cfset a=10.5>
<cfset b=10>
<cfset c = a+b>
<cfoutput> Answer: #c# </cfoutput>
<!--- writeoutput("answer: #c#"); --->

<cfset aString = 11>
<cfset aNumber = 42>
<cfset aStringAndANumber = aString + aNumber>
aString: <cfoutput>#aString#</cfoutput>
aNumber: <cfoutput>#aNumber#</cfoutput>
aStringAndANumber: <cfoutput>#aStringAndANumber#</cfoutput>

<cfsavecontent variable="EmailContent">
    Hi receiver

    We want to send you a hoverboard.
    Let us know if you will accept this offer.

    -sender
</cfsavecontent>

<cfoutput>#EmailContent#</cfoutput>


<cfset myarray = ["yash","mathur"]>
<cfloop array="#myarray#" index="value">
<cfoutput>#value#</cfoutput>
</cfloop>

<cfset obj = {"name" = "yash","surname" = "mathur"}>
<cfoutput>#obj.name#</cfoutput>

<cfloop collection="#obj#" index="value">
<cfoutput>#value# #obj[value]#</cfoutput>
</cfloop>

<cfif a == 10.5>
<cfoutput>Inside if</cfoutput>
<cfelse>
<cfoutput>Inside else</cfoutput>
</cfif>


<cfset name="yash">
<cfoutput>ucase(#name#)</cfoutput> 
--->