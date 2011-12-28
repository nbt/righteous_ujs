# righteous_ujs

Righteous Unobstrusive JavaScript is a sample Rails3 applications that
shows how to implement unobtrusive Javascript that will render
properly (and identically) whether or not Javascript is enabled in the
client browser.

I was motivated to write this because, although there were many examples
of 'unobtrusive javascript', very few of them were designed to work with
and without Javascript enabled.  I also had no clue about how AJAX actually
worked, and this forced me to learn.

I'm generally satisfied with the results, but I welcome comments, questions
and any amendments to make the code more elegant and easier to understand.

## Features of the application

* Implemented in Rails3 using JQuery
* Renders identically whether or not Javascript is enabled in the client browser
* Uses DIVs rather than TABLEs for layout, so forms don't wrap TR elements.
* Uses off-the-shelf JQuery components, doesn't require a custom.js file.
* Relatively DRY views (though there's room for improvement)

## Want to help?

You know the drill: fork the repository, work your magic, let me know when I should merge yours back in.

Share and enjoy!
