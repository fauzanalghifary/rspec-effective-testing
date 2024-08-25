## Getting Started

rspec

rspec spec/unit/specific_spec.rb
rspec spec/unit spec/foo_spec.rb
rspec spec/coffee_spec.rb:25

rspec --profile 2
rspec -e milk -fd
rspec --only-failures

- context -> fcontext -> xcontext
- it -> fit -> xit
- describe -> fdescribe -> xdescribe

rspec --tag last_run_status:failed

## Build App with RSpec

- Type of Test
    - Acceptance Test
    - Integration Test
    - Unit Test
