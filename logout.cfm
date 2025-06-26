<cfscript>
    if(structKeyExists(session,"userName")){
        // deleting session
        structClear(session);
        location("login.cfm", "false", "301");
    }else{
        location("welcome.cfm", "false", "301");
    }
</cfscript>