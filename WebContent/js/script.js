var counter = parseInt(document.getElementById('countdown').innerText,10);
setInterval(function(){
    counter--;

    if(counter >= 0){
        id = document.getElementById('countdown');
        id.innerHTML = counter;
    }
    if(counter == 0)
    {
        function run_link(){
            document.getElementById('submit').click();
        }
        run_link();
    }
   

}, 1000);