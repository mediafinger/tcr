# TCR

Kent Beck's **Test && Commit || Reset**

As tried out on 2. October 2018 in Cookpad's Bristol office in world-record size.

## Setup

Setup your system or editor to:

* detect when a file has been saved with changes
* run the tests
* _when the tests pass:_ add and commit the code
* _when the tests fail:_ reset to the last version

### Atom editor

We used Atom's **on-save** plugin and let it execute this command:

`rspec tcr_spec.rb && git commit -am 'Hooray' || git reset --hard`

### Guard

Other teams used guard

```ruby
guard :rspec, cmd: "" do
  watch(%r{\.rb$}) do
    puts "TCR\n"
    `if bundle exec rspec; then git commit -am "Hooray"; else git reset --hard; fi`
  end
end
```

## Idea

Being forced to write really small increments.

## Gotchas

You can't work in Kent Beck's TDD `red-green-refactor` cycle. Instead you will work in a `green-green-refactor` cycle. 

While it is possible to add tests, before writing the code, you have to ensure they pass, either by commenting out the expectation or by letting your method under test return a truthy value.

After you added the working implementation, you can refactor the test to be a real test.

## Limbo

While **TCR** might sound like just a fun way of doing a coding kata, it is the first piece in the puzzle on the way to **Limbo**. A brand new way of programming with multiple people on a shared code base. In **Limbo**:

* everytime a commit is done
* your local code is being rebased on origin/master
* the tests are run
* the code is pushed to the remote repo (as soon as the tests pass)

This way every developer always has the current version of the code. No more pull requests and code reviews, instead pairing could be enforced. Branches become unnecessary, feature flags can be used if needed.

Obviously the tests must be able to run really fast.

And yes, this is highly experimental at the moment, but at the same time thought provoking: _"why should we not work like this?"._

## Read more:

<blockquote class="twitter-tweet">
  <p lang="en" dir="ltr">New post on the <a href="https://twitter.com/hashtag/sourcediving?src=hash&amp;ref_src=twsrc%5Etfw">#sourcediving</a> blog about our unforgettable day with <a href="https://twitter.com/KentBeck?ref_src=twsrc%5Etfw">@KentBeck</a>
  
  <a href="https://t.co/yn1WwTeYzh">https://t.co/yn1WwTeYzh</a>
  </p>
  <a href="https://twitter.com/cookpad_dev">Cookpad Developers (@cookpad_dev)</a> - <a href="https://twitter.com/cookpad_dev/status/1051153329601085440?ref_src=twsrc%5Etfw">October 13, 2018</a>
</blockquote>

<sub>(and find me on at least 3 photos)</sub>
