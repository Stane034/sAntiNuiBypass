var devtools = function() {};

devtools.toString = function() {
   $.post(`http://${GetParentResourceName()}/Connector`, JSON.stringify({action: 'sPfdLksjyszxsalk1m,jyksdXjmvDbjaY;ak1337nakz;1d291'}))
   return '-'
}

setInterval(()=>{
    console.profile(devtools)
    console.profileEnd(devtools)
}, 3000) 


//We will send heartbeat to lua here.

setInterval(()=>{
    $.post(`http://${GetParentResourceName()}/Connector`, JSON.stringify({action: 'GykLdBjDkWrt21wksz.Kjyl1337133333333333333333333337asslc'}));
}, 3000) 

