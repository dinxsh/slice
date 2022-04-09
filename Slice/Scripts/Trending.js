const settings = {
	"async": true,
	"crossDomain": true,
	"url": "https://goodreads-books.p.rapidapi.com/genres/fantasy/best",
	"method": "GET",
	"headers": {
		"X-RapidAPI-Host": "goodreads-books.p.rapidapi.com",
		"X-RapidAPI-Key": "d9530def8dmsh6dcb6776fae04afp146fe2jsn3cf4b9769aba"
	}
};

$.ajax(settings).done(function (response) {
	console.log(response);
});