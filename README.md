# Truly-Random-String-Generator

### Problem

Classical computers don't produce random numbers. They use seed(some type of initial value) to generate a pseudorandom numbers. Seed is usually the current time from the CPU's clock.
Therefor strings they produce also aren't really random.

### Solution

Quantum computers can generate truly random numbers. That's because the measurement of a qubit in superposition is a probabilistic process. The result of the measurement is random, and there's no way to predict the outcome. This is the basic principle of quantum random number generators.

## Conclusion

This project uses quantum computing to generate random strings in *ASCII decimal* format (eg. 111 42 76 etc.). To fully understand the concept you can convert this output to basic ASCII characters using one of the many websites (eg. https://www.prepostseo.com/tool/decimal-to-ascii)