# [AmazonCloneZone.com](http://amazonclonezone.com)

Amazon Clone Zone is a Amazon.com clone written primarily in Rails. [Check out out live!](http://amazonclonezone.com)

<!-- Amazon Clone Zone is a Amazon.com clone written primarily in Rails and Backbone. [Check out out live!](http://amazonclonezone.com) -->

![screenshot](public/screenshot.png)

### Highlights
* Users permitted to use many website features without logging in.
* Items placed in cart before sign-in are merged with contents of cart belonging to user's account upon authentication.

<!-- * Custom authentication using BCrypt overrides User#passsword= method to store secret hash instead of plain text.
* Uses subviews in Backbone to render views with listeners in order to prevent re-rendering the entire page upon the completion of `GET` requests.
* OAuth allows users to sign in with Twitter through allowing User instances to store either a username and password  or a provider and secret ID.
* Uploads images to Amazon S3 with Rails validations. Custom jbuilder templates ensure that `GET` requests only return image URLs as opposed to entire images. -->

### TODO
* Add ability for users to ask or answer product questions on products#show view using Backbone.View.
* Add ability for users to write a customer review on products#show view using Backbone.View.
* Add search abilities for users to find products by keyword(s).
* Add file upload abilities for users to attach images to their customer reviews.
* Permit authentication through Google.
* Swap product pictures in and out upon hovering over thumbnails using Backbone.
* Use Backbone to update cart#show view (e.g. subtotal) upon changes in product quantities.
* Make design responsive to screen sizes using CSS.
