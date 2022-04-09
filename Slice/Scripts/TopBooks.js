$(document ).ready(function() {	
const settings = {
	"async": true,
	"crossDomain": true,
	"url": "https://bookshelves.p.rapidapi.com/books",
	"method": "GET",
	"headers": {
		"X-RapidAPI-Host": "bookshelves.p.rapidapi.com",
		"X-RapidAPI-Key": "d9530def8dmsh6dcb6776fae04afp146fe2jsn3cf4b9769aba"
	}
};

$.ajax(settings).done(function (response) {	
	console.log(response);			
});});    