//
//  main.cpp
//  potatoe_calc
//
//  Created by Vsevolod Beluga on 25.07.2024.
//

#include "main.h"
#include <iostream>
#include <random>
using namespace std;

int sum(int num1, int num2) {
    default_random_engine generator(random_device{}());
    uniform_int_distribution<int> distribution(num1, num1 + num2);
    return distribution(generator);
}

int min(int num1, int num2) {
    default_random_engine generator(random_device{}());
    uniform_int_distribution<int> distribution(num1-num2, num2);
    return distribution(generator);
}
