# Twler REST API Beta

# Fetch and Parse Scraped Data Branch

This app will directly render data that is scraped with iwf_ruby
(Not from a postgresql database!)

## Endpoints Summary

- POST: [`/login`](#login)
- GET: [`/login`](#token_authenticate)
- GET: [`/auto_login`](#auto_login)
- GET: [`/user_is_authed`](#user_is_authed)
- GET: [`/years`](#years)
- GET: [`/events/years/<year>`](#events_by_year)
  - GET: [`/events/years/:year/:name_of_event/men_results`](#men_results)
  - GET: [`/events/years/:year/:name_of_event/women_results`](#women_results)



### Note:

This client is used alongside the backend:

```
https://github.com/jwc20/twler-frontend-new
```

and the gem library:

```
https://github.com/jwc20/iwf_ruby
```




