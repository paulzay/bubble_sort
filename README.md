### Project 1: Bubble Sort

Sorting algorithms are some of the earliest that you typically get exposed to in Computer Science. It may not be immediately obvious how important they are, but it shouldn't be hard to think of some examples where your computer needs to sort some massive datasets during everyday operations.

One of the simpler (but more processor-intensive) ways of sorting a group of items in an array is **bubble sort**, where each element is compared to the one next to it and they are swapped if the one on the left is larger than the one on the right. This continues until the array is eventually sorted.

<img src="http://upload.wikimedia.org/wikipedia/commons/c/c8/Bubble-sort-example-300px.gif" class="lesson-content__small-image" markdown="1">

### Assignment 1

<div class="lesson-content__panel" markdown="1">

- Build a method `#bubble_sort` that takes an array and returns a sorted array. It must use the bubble sort methodology (using `#sort` would be pretty pointless, wouldn't it?).

```ruby
> bubble_sort([4,3,78,2,0,2])
=> [0,2,2,3,4,78]
```

- Now create a similar method called `#bubble_sort_by` which sorts an array by accepting a block. Remember to use yield inside your method definition to accomplish this. The block will have two arguments that represent the two elements of the array that are currently being compared. The block’s return will be similar to the spaceship operator you learned about before: If the result of the block execution is negative, the element on the left is “smaller” than the element on the right. `0` means both elements are equal. A positive result means the left element is greater. Use the block’s return value to sort your array. Test your method with the example below.

```ruby
  > bubble_sort_by(["hi","hello","hey"]) do |left,right|
  >   left.length - right.length
  > end
  => ["hi", "hey", "hello"]
```

</div>

# Getting Started 🚀

These instructions will get you a copy of the project up and running on your local machine.

## How To Use 🔧

From your command line, first clone the project:

```bash
# Clone this repository
$ git clone https://github.com/paulzay/bubble_sort

# Go into the repository
$ cd bubble_sort

# Open the project on Vscode
$ code .

# run the script on your terminal
$ ruby sort.rb

```

## CONTRIBUTORS

👤 **Kedir Abdurahman**

- Github: [@keddo](https://github.com/keddo)
- Twitter: [@kedirman](https://twitter.com/kedirman)
- Linkedin: [Kedir Abdurahman](https://linkedin.com/in/kedirabdurahman/)

👤 **Paul Ogolla**

- Github: [@paulzay](https://github.com/paulzay)
- Twitter: [@_paulzay_](https://twitter.com/_paulzay_)
- Linkedin: [Paul Ogolla](https://linkedin.com/in/paulogolla)


## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](lic.url) licensed.
