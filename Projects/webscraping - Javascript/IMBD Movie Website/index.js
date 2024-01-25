const request = require('request-promise');
const cheerio = require('cheerio');

const URL = 'https://www.imdb.com/title/tt0102926/?ref_=tt_mv_close';

(async () => {
    const response = await request(URL);

    console.log(response);
})();
