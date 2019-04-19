describe('Linkedin search and add', () => {
  it('login to linkedin', () => {
    browser.url('https://www.linkedin.com/');
    const { loginUserName, password } = process.env;
    const searchText = 'Technology recruiters in dubai| Recruiters in Dubai';
    $('#login-email').setValue(loginUserName);
    $('#login-password ').setValue(password);
    $('#login-submit').click();
    const searchBox = $('#nav-search-artdeco-typeahead input');
    searchBox.waitForExist(30000);
    searchBox.setValue(searchText);
    // Press enter key
    browser.keys('\uE007');
    $('.abcd').waitForExist(30000);
    browser.deleteSession();
    // const title = browser.getTitle();
    // console.log('Title is: ' + title);
    // outputs: "Title is: WebdriverIO (Software) at DuckDuckGo"
  });
});
