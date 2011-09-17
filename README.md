## Running it

***Also see: https://github.com/colszowka/simplecov/issues/60***

  $ git clone https://github.com/colszowka/coverage-bug.git
  $ cd coverage-bug
  $ bundle
  $ rake db:migrate

Now check out `spec/requests/competitions_spec.rb`:

When creating the record with factory_girl, the coverage is not reported as complete even though
the code is run (you can verify that by adding a `raise 'foo'` inside the if-statement in
`app/models/competition.rb`):

  $ rake spec # using factory_girl
  => [1, 1, nil, 1, 1, nil, 1, 1, 0, 0, nil, nil, nil]
  $ rake spec # using ActiveRecord.create
  => [1, 1, nil, 1, 1, nil, 1, 1, 1, 1, nil, nil, nil]
