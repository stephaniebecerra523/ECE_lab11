# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Stephanie Becerra, Gabi Zachos

## Summary

## Lab Questions

In this lab, we learned how counters and flip-flops work together to divide clock frequencies and how different types of counters operate.

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

The modulo counter divides by 2 times the count because the output changes only when the counter reaches its limit. It takes one count to change the output and another count to change it back and it completes a full cycle.


### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

The ring counter starts with all 1s because the design initializes it to that state. This gives the counter a starting pattern that it can shift through during the clock cycles.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

If the input clock is 50 MHz, we would need a ring counter that is around 50,000 bits wide to reduce the output frequency to around 1 kHz.

