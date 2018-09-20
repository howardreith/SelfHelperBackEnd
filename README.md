# The Self-Helper
### A web application by Howie Reith

The Self-Helper is a web application built to accompany one's efforts when working through self-help literature. One of the best ways to stay motivated in any self-improvement effort is to track one's progress. This application is built to make that simple and easy.

### Links to the various facets of the application are as follows:

* Front-End Repository: https://github.com/howardreith/SelfHelperFrontEnd
* Front-End Live Site: https://howardreith.github.io/SelfHelperFrontEnd/
* Back-End Repository: https://github.com/howardreith/SelfHelperBackEnd
* Back-End Live Site: https://morning-brook-19819.herokuapp.com/

### Technologies used in The Hot Guyde Companion include:
HTML5, SCSS, Javascript, Ember.js, Handlebars, Bootstrap, and Heroku

## Planning and Execution

My initial planning of the project involved laying out exactly what I wanted the app to do. Since I'd previously spend many hours determining what tools I felt were necessary for the exercises I included in my book nearly two years ago, this was a relatively simple task.

I next tried to figure out what frameworks could be employed for multiple purposes. For example, since most of the tools involved spreadsheets, could I create a single spreadsheet template and use it to generate all of the spreadsheets in the app? The answer appears to have been "yes." While it took me several days to develop the code for the journal aspect of the application, it took merely two hours to apply that code to the column method aspect, and I anticipate subsequent sections being similarly readily converted.

With the general purposes in mind I next set out designing the wireframes, as I expected the aesthetic design of the app to be one of the most challenging, but important, aspects of its design. My fears on that front proved exaggerated, but my care with the wireframing early on helped me design a clear template and clarified what could be repeated and re-used and what could not.

I then set about coding. I begna with the API, setting up the Rails table and writing CURL scripts to interact with it. With that in place, I set up my routes and components on the front end and began experimenting with how to get my API calls to work correctly and appropriately display the data on the screen. As I was relatively inexperienced with Ember, Handlebars, and Bootstrap, this was exceptionally challenging, but after two days of work I mostly got the hang of what was needed and development went smoothly from then on. I made heavy use of console.logs in every component and route and spent many hours reading the Ember documentation.

In future iterations I hope to add the additional functions I'd always intended for the app as well as some styling and branding associated with the book.

## Entity Relationship Diagram

https://imgur.com/a/8fZxkqI

## Catalog of Routes

### User authentication
| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password`     | `users#changepw`  |
| DELETE | `/sign-out`            | `users#signout`   |

---
#### POST /sign-up

Request:

```sh
curl "https://morning-brook-19819.herokuapp.com/sign-up" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'
echo
```

```sh
EMAIL=sample@email.com PASSWORD=sample sh scripts/heroku-auth/sign-up.sh
```

Response:

```md
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "user":
    {
      "__v":0,
      "updatedAt":"2018-07-19T13:52:57.455Z",
      "createdAt":"2018-07-19T13:52:57.455Z",
      "email":"sample@sample.com",
      "_id":"5b5097b98baf380014a2071d"
    }
}
```
---
#### POST /sign-in

Request:

```sh
curl "https://https://morning-brook-19819.herokuapp.com/sign-in" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'
echo
```

```sh
EMAIL=sample@email.com PASSWORD=sample sh scripts/heroku-auth/sign-in.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user":
    {
      "token":"6f8a893e1ae1628645a87a9674b4d343",
      "_id":"5b5097b98baf380014a2071d",
      "updatedAt":"2018-07-19T13:53:06.016Z",
      "createdAt":"2018-07-19T13:52:57.455Z",
      "email":"sample@sample.com",
      "__v":0
    }
}
```
---
#### PATCH /change-password

Request:

```sh
curl "https://morning-brook-19819.herokuapp.com/change-password" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'
echo
```

```sh
OLDPW='sample' NEWPW='elpmas' TOKEN='BAhJIiUwYzIzNjk2ZmY2MzYzZTEzMjBlNTA2MWZmODNkZDIwOQY6BkVG--99e4d70338b2dde10799d7ae4789f78c1eb173db' sh scripts/heroku-auth/change-password.sh
```

Response:

```md
HTTP/1.1 204 No Content
```
---
#### DELETE /sign-out

Request:

```sh
curl "https://morning-brook-19819.herokuapp.com/sign-out" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"
echo
```

```sh
TOKEN='BAhJIiUwYzIzNjk2ZmY2MzYzZTEzMjBlNTA2MWZmODNkZDIwOQY6BkVG--99e4d70338b2dde10799d7ae4789f78c1eb173db' sh scripts/heroku-auth/sign-out.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

### journal_entries

| Verb   | URI Pattern                      | Controller#Action   |
|--------|----------------------------------|---------------------|
| GET    | `/journal_entries`               | `uploads#index`     |
| GET    | `/journal_entries/:id`           | `uploads#show`      |
| POST   | `/journal_entries`               | `uploads#create`    |
| PATCH  | `/journal_entries/:id`           | `uploads#update`    |
| DELETE | `/journal_entries/:id`           | `uploads#destroy`   |

All CRUD actions must include the header "Authorization: Token token=${TOKEN}".

---
#### GET /journal_entries

Request:

```sh
curl "https://https://morning-brook-19819.herokuapp.com/journal_entries" \
--include \
--request GET \
--header "Authorization: Token token=${TOKEN}"

echo
```

```sh
TOKEN='BAhJIiUwYzIzNjk2ZmY2MzYzZTEzMjBlNTA2MWZmODNkZDIwOQY6BkVG--99e4d70338b2dde10799d7ae4789f78c1eb173db' sh scripts/journal_entries/index-journal_entries.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8
ETag: W/"b0ba1fc49b48f80191438e026f1e7eaf"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: d4eb0bbc-3060-498d-8f99-e25ed141f567
X-Runtime: 0.105079
Vary: Origin
Transfer-Encoding: chunked

{"journal_entries":[{"id":75,"title":"sample","content":"sample","starred":null,"created_at":"2018-08-09T22:49:50.349Z","updated_at":"2018-08-09T22:49:50.349Z","user":{"id":9,"email":"example@example.com"}}]}
```
---
#### GET /journal_entries/:id

Request:

```sh
curl "https://https://morning-brook-19819.herokuapp.com/journal_entries/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
```

```sh
TOKEN=BAhJIiUwYzIzNjk2ZmY2MzYzZTEzMjBlNTA2MWZmODNkZDIwOQY6BkVG--99e4d70338b2dde10799d7ae4789f78c1eb173db ID=9 sh scripts/journal_entries/show-journal_entry.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8
ETag: W/"c42f45fb60557722ad147646a4736c72"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: d5a2c60e-2afd-4c96-9c9e-56e87ffcb755
X-Runtime: 0.008225
Vary: Origin
Transfer-Encoding: chunked

{"journal_entries":[{"id":75,"title":"sample","content":"sample","starred":null,"created_at":"2018-08-09T22:49:50.349Z","updated_at":"2018-08-09T22:49:50.349Z","user":{"id":9,"email":"example@example.com"}}]}


```
---
#### POST /journal_entries

Request:

```sh
curl "https://https://morning-brook-19819.herokuapp.com/journal_entries" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "journal_entry": {
      "title": "'"${title}"'",
      "content": "'"${content}"'",
      "starred": "'"${starred}"'"
    }
  }'

echo
```

```sh
TOKEN=BAhJIiUwYzIzNjk2ZmY2MzYzZTEzMjBlNTA2MWZmODNkZDIwOQY6BkVG--99e4d70338b2dde10799d7ae4789f78c1eb173db title='sample' content='sample' sh scripts/journal_entries/create-journal_entry.sh
```

Response:

```md
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8
ETag: W/"ca7de1223c600107e88f8720288ba634"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: a64281ab-2c59-48dc-b9ce-398e924f248a
X-Runtime: 0.168491
Vary: Origin
Transfer-Encoding: chunked

{"journal_entry":{"id":75,"title":"sample","content":"sample","starred":null,"created_at":"2018-08-09T22:49:50.349Z","updated_at":"2018-08-09T22:49:50.349Z","user":{"id":9,"email":"example@example.com"}}}

```
---
#### PATCH /items/:id

Request:

```sh
curl "https://https://morning-brook-19819.herokuapp.com/journal_entries/${id}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "journal_entry": {
      "title": "'"${title}"'",
      "content": "'"${content}"'",
      "starred": "'"${starred}"'"
    }
  }'

echo
```

```sh
TOKEN=BAhJIiUwYzIzNjk2ZmY2MzYzZTEzMjBlNTA2MWZmODNkZDIwOQY6BkVG--99e4d70338b2dde10799d7ae4789f78c1eb173db title='sample' content='sample' id=76 sh scripts/journal_entries/update-journal_entry.sh

```
Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8
ETag: W/"5469c93b69a08b48920f460deec852c1"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: f346a71c-2d4c-4db2-8e16-5e8a391ef642
X-Runtime: 0.010113
Vary: Origin
Transfer-Encoding: chunked

{"journal_entry":{"id":76,"title":"sample","content":"sample","starred":null,"created_at":"2018-08-09T23:01:12.005Z","updated_at":"2018-08-09T23:01:12.005Z","user":{"id":9,"email":"example@example.com"}}}

```
---
#### DELETE /items/:id

Request:

```sh
curl "https://https://morning-brook-19819.herokuapp.com/journal_entries/${id}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

```

```sh
TOKEN=BAhJIiUwYzIzNjk2ZmY2MzYzZTEzMjBlNTA2MWZmODNkZDIwOQY6BkVG--99e4d70338b2dde10799d7ae4789f78c1eb173db id=76 sh scripts/journal_entries/delete-journal_entry.sh

```

Response:

```md
HTTP/1.1 204 No Content
Cache-Control: no-cache
X-Request-Id: a1de5582-56e8-4aa8-bc34-0c32cb2178ab
X-Runtime: 0.020151
Vary: Origin
```

## Set Up and Installation

The application is readily available simply by accessing https://github.com/howardreith/SelfHelperFrontEnd.

To operate locally, you must fork and clone both the front and back-end repositories into separate folders. Run npm install on the front end repository and bundle install on the back end. To boot your back-end server, run bin/rails server which will launch of port 4741. To boot your back-end server, run ember install in the main directory. This will run a server on port 7165. Navigate to localhost:7165 in your browser and you should have full local access to the application.

