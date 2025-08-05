#!/usr/bin/env python3
"""
simple_example.py
A minimal example script for the AI for Earth hackathon starter kit.

This script computes the mean of a simple list of numbers and prints the result.
Use this as a starting point for your own scripts.
"""


def main():
    data = [1, 2, 3, 4, 5]
    mean = sum(data) / len(data)
    print("Data:", data)
    print("Mean value:", mean)


if __name__ == "__main__":
    main()
