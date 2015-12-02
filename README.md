

# My Delete

## Objective

You'll be building three methods: 1) delete_first, 2) delete_last, and 3) delete_middle. Each of these methods will be within the Array class and they'll all take one argument, the element to delete.

## Examples

```ruby
birds = ["crow", "dove", "duck", "dove", "hawk", "dove", "gull", "wren", "owl"]

birds.delete_first("dove")
# => ["crow", "duck", "dove", "hawk", "dove", "gull", "wren", "owl"]

birds.delete_last("dove")
# => ["crow", "dove", "duck", "dove", "hawk", "gull", "wren", "owl"]

birds.delete_middle("dove")
# => ["crow", "dove", "duck", "hawk", "dove", "gull", "wren", "owl"]
```

If there are an even number of elements that match the argument for when `delete_middle` is called, it should delete the two middle items that match:

```ruby
numbers = [1,0,3,0,5,0,7,0]
numbers.delete_middle(0)
# => [1,0,3,5,7,0]
```

If there is only one matching element, all methods should still delete it:

```ruby
activists = ["Rosa Parks", "Joan Baez", "Amal Clooney", "Ruby Dee"]

activists.delete_first("Joan Baez")
# => ["Rosa Parks", "Amal Clooney", "Ruby Dee"]

activists.delete_last("Amal Clooney")
# => ["Rosa Parks", "Joan Baez", "Ruby Dee"]

activists.delete_middle("Ruby Dee")
# => ["Rosa Parks", "Joan Baez", "Amal Clooney"]
```

## Note

You will be returning a new copy of the array, not mutating the original one. 

In other words, this lab is concerned only with the return values of your methods, not with the original arugments that it passes in.

## Resources
* [Monkey Patching](http://www.runtime-era.com/2012/12/reopen-and-modify-ruby-classes-monkey.html)
* [Delete At](http://apidock.com/ruby/Array/delete_at)
* [Find Index](http://apidock.com/ruby/Array/find_index)

<a href='https://learn.co/lessons/my-delete' data-visibility='hidden'>View this lesson on Learn.co</a>
