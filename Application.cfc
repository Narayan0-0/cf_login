component {

    this.name = "myCFLogin_Register_Application";
    this.applicationTimeout = CreateTimeSpan(10, 0, 0, 0); //10 days
    this.sessionManagement = true;
    this.sessionTimeout = CreateTimeSpan(0, 0, 30, 0); //30 minutes
    this.customTagPaths = [ expandPath('/myAppCustomTags') ];
    this.mappings = {
        "/foo" = expandPath('/com/myCompany/foo')
    };
    this.enableNULLSupport=true;

    this.datasource = "mydb";
    this.bufferOutput = true;

    //     this.datasources = {
    //     myLuceeDNS = {
    //         type : "mysql",
    //         database : "ydb",
    //         host : "localhost",
    //         port : "3306",
    //         username : "root",
    //         password : ""
    //     }
    // }


    // see also: http://help.adobe.com/en_US/ColdFusion/10.0/CFMLRef/WSc3ff6d0ea77859461172e0811cbec22c24-750b.htmlhttps://helpx.adobe.com/coldfusion/cfml-reference/application-cfc-reference/application-variables.html
    // see also: https://helpx.adobe.com/coldfusion/developing-applications/developing-cfml-applications/designing-and-optimizing-a-coldfusion-application.html

    function onApplicationStart() {
        application.startTime = now();
        return true;
    }

    function onSessionStart() {
        session.user = "Guest";
        session.dob = 1994-01-01;
    }

    // the target page is passed in for reference,
    // but you are not required to include it
    function onRequestStart( string targetPage ) {
        if (structKeyExists(url, "reload") AND url.reload EQ "true") {
            applicationStop();
        }
        return true;
    }

    function onRequest( string targetPage ) {
        include arguments.targetPage;
    }

    function onRequestEnd() {}

    function onSessionEnd( struct SessionScope, struct ApplicationScope ) {}

    function onApplicationEnd( struct ApplicationScope ) {}

    function onError( any Exception, string EventName ) {
        writeDump( Exception );abort;
        writeOutput("<h1>Error Occurred</h1>");
    }

}