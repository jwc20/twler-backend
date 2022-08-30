# Twler REST API Beta

Live Demo: [Heroku API](https://twler-app-api.herokuapp.com/years)

Twler (Top Weightlifter) is an app that will **_directly_** render data that is scraped with iwf_ruby
(Not from a postgresql database!)

## Endpoints Summary:

- POST: [`/login`](#login)
- GET: [`/login`](#token_authenticate)
- GET: [`/auto_login`](#auto_login)
- GET: [`/user_is_authed`](#user_is_authed)
- GET: [`/years`](#years)
- GET: [`/events/years/:year`](#events_by_year)
  - GET: [`/events/years/:year/:name_of_event/men_results`](#men_results)
  - GET: [`/events/years/:year/:name_of_event/women_results`](#women_results)

## Example Usage:

#### Example

### GET: `/years`

```json
[
  "2022",
  "2021",

  ...

  "2000",
  "1999",
  "1998"
]
```

### GET: `/events/years/:year`

Get all events by year

#### Example

Example usage: `GET http://127.0.0.1:3000/events/years/2020`

Output (excerpt):

```json
[
  {
    "name": "2020 ROGUE Weightlifting Challenge At the Arnold Sports Festival",
    "location": "Columbus, USA",
    "date": "Mar 05, 2020",
    "event_url": "https://iwf.sport/results/results-by-events/?event_id=507"
  },
  {
    "name": "39th Torneo Int. Manuel Suarez\" In Memoriam",
    "location": "Havana, CUB",
    "date": "Mar 03, 2020",
    "event_url": "https://iwf.sport/results/results-by-events/?event_id=503"
  },

  ...

  {
    "name": "5th International Fajr Cup",
    "location": "Rasht, IRI",
    "date": "Feb 01, 2020",
    "event_url": "https://iwf.sport/results/results-by-events/?event_id=499"
  },
  {
    "name": "Roma 2020 World Cup",
    "location": "Roma, ITA",
    "date": "Jan 27, 2020",
    "event_url": "https://iwf.sport/results/results-by-events/?event_id=496"
  }
]
```

### GET: `/events/years/:year/:name_of_event/men_results` or `/women_results`

Get all men or women results by name of the event

#### Example

Example usage: `GET http://127.0.0.1:3000/events/years/2013/xvii-bolivar-games/men_results`

Output (excerpt):

```json
[
  {
    "name": "RADA RODRIGUEZ Sergio Armando",
    "nation": "COL",
    "birthdate": "Jan 27, 1984",
    "athlete_url": "https://iwf.sport/weightlifting_/athletes-bios/?athlete=rada-rodriguez-sergio-armando-1984-01-27&id=3060",
    "category": 56,
    "bweight": "55.83",
    "group": "A",
    "snatch": 112,
    "jerk": 140,
    "total": 252,
    "rank": 1
  },

  ...

  {
    "name": "HERRERA CEPEDA Erik Elvis",
    "nation": "ECU",
    "birthdate": "Jul 28, 1994",
    "athlete_url": "https://iwf.sport/weightlifting_/athletes-bios/?athlete=herrera-cepeda-erik-elvis-1994-07-28&id=9911",
    "category": 56,
    "bweight": "61.74",
    "group": "A",
    "snatch": 119,
    "jerk": 150,
    "total": 269,
    "rank": 2
  },

  ...
]
```

### Note:

This client is used alongside the frontend:

```
https://github.com/jwc20/twler-frontend-new
```

and the gem library:

```
https://github.com/jwc20/iwf_ruby
```
