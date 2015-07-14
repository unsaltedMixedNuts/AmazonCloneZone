# Amazon Clone Zone

[Heroku link][heroku]

[heroku]: http://AmazonCloneZone.com

## Minimum Viable Product
Amazon Clone Zone is a clone of Amazon.com built on Rails and Backbone. Users can:

<!-- This is a Markdown checklist. Use it to keep track of your progress! -->

- [ ] Create accounts
- [ ] Create sessions (log in)
- [ ] Browse products
- [ ] Add products to cart
- [ ] Checkout
- [ ] Write and view customer reviews
- [ ] Ask and answers questions to and from other customers
- [ ] View blogs and posts
- [ ] Subscribe to blogs
- [ ] View a feed of subscribed blogs
- [ ] Tag blog posts
- [ ] Search for products by title
- [ ] Search through customer reviews by keyword / keyphrases

## Design Docs
* View Wireframes - TBD
* [DB schema][schema]


<!-- * [View Wireframes][views]

[views]: ./docs/views.md -->
[schema]: ./docs/schema.md


## Implementation Timeline

### Phase 1: User Authentication, Online Store Creation (~1 day)
I will implement user authentication in Rails based on the practices learned at
App Academy. By the end of this phase, users will be able to brose products. The most important part of this phase will
be pushing the app to Heroku and ensuring that everything works before moving on
to phase 2.

<!-- [Details][phase-one] -->

### Phase 2: Viewing Products and Product Details (~2 days)
I will add API routes to serve data as JSON, then add Backbone
models and collections that fetch data from those routes. By the end of this
phase, users will be able to browse products, view product details, view product reviews, leave product reviews, all
inside a single Backbone app.

<!-- [Details][phase-two] -->

### Phase 3: Editing and Displaying Reviews (~2 days)
I plan to use third-party libraries to add functionality to the `ReviewForm` and
`ReviewShow` views in this phase. First I'll need to add a Markdown editor to the
`ReviewForm`, and make sure that the Markdown is properly escaped and formatted in
the `ReviewShow` view. I also plan to integrate Filepicker for file upload so
users can add images to reviews.

<!-- [Details][phase-three] -->

### Phase 4: User Feeds (~1-2 days)
I'll start by adding a `feed` route that uses the `current_user`'s
`browsing habits` to serve a list of products inspired by the user's shopping trends.
On the Backbone side, I'll make a `FeedShow` view whose `products`
collection fetches from the new route.  Ultimately, this will be the page users
see after logging in.

<!-- [Details][phase-four] -->

### Phase 5: Searching for Products (~2 days)
I'll need to add `search` routes to both the Products controllers. On the
Backbone side, there will be a `SearchResults` composite view that has `ProductsIndex` subviews.
These views will use 'product' collections, but they will fetch from the new `search` routes.

<!-- [Details][phase-five] -->

### Bonus Features (TBD)
- [ ] "Like" button and counter for posts
- [ ] Custom product urls
- [ ] Pagination/infinite scroll
- [ ] Activity history (e.g. likes, reblogs, taggings)
- [ ] Multiple sessions/session management
- [ ] User avatars
- [ ] Typeahead search bar

<!-- [phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md -->
