# Schema Information

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
email           | string    | not null, unique
name            | string    | not null
password_digest | string    | not null
session_token   | string    | not null, unique

## products
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null
sales_price | numeric   | not null
quantity    | integer   | not null
dept_id     | integer   | not null, foreign key (references departments)
brand_id    | integer   | not null, foreign key (references brands)

## departments
column name    | data type | details
---------------|-----------|-----------------------
id             | integer   | not null, primary key
name           | string    | not null
parent_dept_id | string    | foreign key (references departments)


## descriptions
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
body        | string    | not null
ord         | integer   | not null
product_id  | integer   | not null, foreign key (references products)

## specifications
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
body        | string    | not null
ord         | integer   | not null
product_id  | integer   | not null, foreign key (references products)

## product_images
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
url         | string    | not null
ord         | integer   | not null
product_id  | integer   | not null, foreign key (references products)


## brands
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null, unique

## reviews
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
body        | string    | not null
stars_given | integer   | not null
user_id     | integer   | not null, foreign key (references users)

## customer_images
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
url         | string    | not null
ord         | integer   | not null
review_id   | integer   | not null, foreign key (references reviews)

## questions
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
body        | string    | not null
product_id  | integer   | not null, foreign key (references products)
user_id     | integer   | not null, foreign key (references users)

## answers
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
body        | string    | not null
question_id | integer   | not null, foreign key (references questions)
user_id     | integer   | not null, foreign key (references users)

## review_comments
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
body        | string    | not null
review_id   | integer   | not null, foreign key (references reviews)

## answer_comments
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
body        | string    | not null
answer_id   | integer   | not null, foreign key (references answers)

## review_votes
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
type        | string    | not null, (two choices: (1) upvote, (2) downvote)
review_id   | integer   | not null, foreign key (references reviews)
user_id     | integer   | not null, foreign key (references users)

## answer_votes
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
type        | string    | not null, (two choices: (1) upvote, (2) downvote)
answer_id   | integer   | not null, foreign key (references answers)
user_id     | integer   | not null, foreign key (references users)

## comment_votes
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
type        | string    | not null, (two choices: (1) upvote, (2) downvote)
comment_id  | integer   | not null, foreign key (references comments)
user_id     | integer   | not null, foreign key (references users)

## shopping_carts
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
session_token   | string    | not null, unique
user_id         | integer   | not null, foreign key (references users)

## carted_products
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
ord         | integer   | not null
cart_id     | integer   | not null, foreign key (references shopping_carts)
product_id  | integer   | not null, foreign key (references products)
user_id     | integer   | not null, foreign key (references users)

## orders
column name       | data type | details
------------------|-----------|-----------------------
id                | integer   | not null, primary key
order_number      | string    | not null, unique
payment_method    | string    | not null
shipping_address  | string    | not null
user_id           | integer   | not null, foreign key (references users)

## recently_viewed_items
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
product_id  | string    | not null, foreign key (references products)
user_id     | integer   | not null, foreign key (references users)
