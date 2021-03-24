# README

Instruction

* Load project

* bundle install

* rake db:seed

* adding money to ATM:
  curl -X PUT -H "Content-Type: application/json" -d '{"amount":{"one": 3, "two": 5, "five": 2, "ten": 1, "twenty_five": 5, "fifty": 10}}' http://localhost:3000/api/v1/load_money.json

* withdrawal: 
  curl -X PUT -H "Content-Type: application/json" -d '{"amount": 53}' http://localhost:3000/api/v1/withdrawal_money.json

* balance
  curl -X GET -H "Content-Type: application/json"  http://localhost:3000/api/v1/balance.json
