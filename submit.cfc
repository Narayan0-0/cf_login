component output="yes"{

    remote function check_user() output="yes" returntype="any"{
        <!--- writeDump(arguments);abort; --->
        try{
             myquery = QueryExecute('SELECT * FROM valid_users where email = "#arguments.email#"', [], {datasource = 'mydb'});
            //  writeDump(myquery); abort;
             if(#arguments.pass# == myquery.password){
                // writeDump("success");abort;
                data = [];
                var dataObj = {};
                dataObj['id'] = myquery.user_id;
                dataObj['name'] = myquery.name;
                dataObj['email'] = myquery.email;
                dataObj['phone'] = myquery.phone;
                arrayAppend(data, dataObj);
                SESSION.userId = myquery.user_id; //creating session variables
                SESSION.userName = myquery.name;
                return data;
             }else{
                return "Invalid Credentials";
             }
        }catch(any e){
            writedump(e); abort;
        }
    }


    remote function insertdb() output = "yes" returnType = "any"{
        try{
         if(#arguments.user_id# == -1){
             myquery = queryExecute('insert into valid_users(name,email,password,phone)values("#arguments.name#","#arguments.email#","#arguments.pass#","#arguments.phone#")',[],{datasource = 'mydb'});
             var data = [];
             var dataobj = {};
             dataobj['name'] = "#arguments.name#";
             dataobj['msg'] = "User Created Successfully";
             arrayAppend(data, dataObj);
            //  return data;
             return "User Created Successfully";
         }else{
             myquery = queryExecute('update users set user_name = "#arguments.user_name#",email = "#arguments.email#","#arguments.pass#",phone = "#arguments.phone#" where user_id = "#arguments.user_id#"',[],{datasource = 'mydb'});
             return "User Updated Successfully";
         }
        }catch(any e){
             writedump(e); abort;
         }
    }

}