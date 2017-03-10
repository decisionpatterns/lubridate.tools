
## POSICct vs. Date

Currently lubridate has some ambiguity concerning whether dates are POSIXct (which allow full 
date time) or whether it is a Date (just Date). While it supports both, the result can depend
on whether a time zone is provided. This strikes me as somewhat troublesome.

- [ ] Should we try and default to POSIXct or allow Date?
  - [ ] yesterday and tomorrow

