
const ffi = require('ffi-napi');

// Load the DLL
const myDll = ffi.Library('d:/jd/t/dll.dll', {
    'add': ['int', ['int', 'int']]
});

// Call the add function from the DLL

var sum = 0;
var ts_s = new Date();

for(let i =0;i<10000;i++) 
{
	const result = myDll.add(5, 3);	
	sum += result; 
}	
var ts_e = new Date();

var td = ts_e.getTime() - ts_s.getTime();

console.log(td);


console.log(sum); // Ó¦¸ÃÊä³ö 8
