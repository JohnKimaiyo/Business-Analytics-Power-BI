const request = require('request-promise');
const cheerio = require('cheerio');

const URL = 'https://www.imdb.com/title/tt0102926/?ref_=tt_mv_close';

(async () => {
    try {
        const response = await request(URL);
        const $ = cheerio.load(response);

        // Find the title element and extract its text
        let title = $('span.hero__primary-text').text().trim();

        let rating = $('div[data-testid="hero-rating-bar__aggregate-rating__score"] > span').text().trim();

        console.log(title);
        console.log(rating)
    } catch (error) {
        console.error('Error:', error);
    }
})();

