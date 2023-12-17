function showInbox(){
    var mailformat = /^[a-zA-Z0-9.!#$%&'+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)$/;
    
    let name = document.query.name.value;
    if (name==""){
        alert("please enter your name");
        return false;}

    let email = document.query.email.value;
    if (!email.match(mailformat)){
        alert("please enter your email");
        return false;} 
        
    let sub = document.query.sub.value;
    if (sub=="default"){
        alert("please enter your subject");
        return false;
    }   
            
    
                
    let message = document.query.message.value;
    if (message==""){
        alert("please enter your message");
        return false;}

        document.getElementById("querymessage").style.display="block"
        document.getElementById("form1").style.display="none"

        if (name !== ""){document.getElementById("name1").innerHTML=name;}
        if (email !== ""){document.getElementById("email1").innerHTML=email;}
        if (sub !== ""){
            document.getElementById("subject1").innerHTML=sub;}
        if (message !== ""){
                document.getElementById("message1").innerHTML=message;
        }    

        }       
    


function editmessage(){
    document.getElementById("querymessage").style.display="none"
    document.getElementById("form1").style.display="block"
}

function submitmessage(){
    document.getElementById("querymessage").value="";
    alert("Thank you ! your feedback has been submitted.")

}