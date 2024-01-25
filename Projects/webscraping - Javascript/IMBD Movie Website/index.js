const request = require('request-promise');
const cheerio = require('cheerio');

const URL = 'https://www.imdb.com/title/tt0102926/?ref_=tt_mv_close';

(async () => {
    try {
        const response = await request(URL);
        const $ = cheerio.load(response);

        // Find the title element and extract its text
        let title = $('span.hero__primary-text').text().trim();

        console.log(title);
    } catch (error) {
        console.error('Error:', error);
    }
})();
