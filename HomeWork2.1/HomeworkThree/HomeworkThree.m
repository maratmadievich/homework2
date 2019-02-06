//
//  HomeworkThree.m
//  HomeWork2.1
//
//  Created by Admin on 2/6/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "HomeworkThree.h"

@implementation HomeworkThree

enum Operation {
    addition = '+',
    subtraction = '-',
    multiplication = '*',
    deletion = '/'
};

typedef char Operation [1];

-(void)selectTask {
    int value = -1;
    do {
        printf("Выберите задание:\n1) Вывод строк;\n2) Калькулятор;\n3) Анкета;\n0) выход.\n");
        scanf("%d", &value);
        printf("\n\n");
        switch (value) {
            case 0:
                break;
                
            case 1:
                [self taskOne];
                break;
                
            case 2:
                [self taskTwo];
                break;
                
            default:
                printf("Выберите другое значение\n");
                break;
        }
    } while (value != 0);
}


-(void) taskOne {
    
    NSArray *arrayStrings = @[@"Строка 1", @"Строка 2", @"Строка 3", @"Строка 4", @"Строка 5"];
    
    for (int i = 0; i < arrayStrings.count; i++) {
        printf("%s \n", [arrayStrings[i] UTF8String]);
    }
}

-(void) taskTwo {
    
    float first = 0;
    float second = 0;
//    Operation operation;
//
//    bool programComplete = true;
//    do {
//        printf("Первое число: ");
//        scanf("%f", &first);
//        printf("Второе число: ");
//        scanf("%f", &second);
//        printf("Действие \"+-/*\": ");
//        scanf("%s", operation);
//        printf("\n");
////        switch (operation[0]) {
////            case addition:
////                calculateAddition(&first, &second);
////                programComplete = true;
////                break;
////
////            case subtraction:
////                calculateSubtraction(&first, &second);
////                programComplete = true;
////                break;
////
////            case deletion:
////                calculateDeletion(&first, &second);
////                programComplete = true;
////                break;
////
////            case multiplication:
////                calculateMultiplication(&first, &second);
////                programComplete = true;
////                break;
////
////            default:
////                programComplete = false;
////                break;
////        }
//    } while (!programComplete);
}

void calculateAddition(float * first, float * second) {
    printf("%f + %f = %f \n\n", *first, *second, *first + *second);
}

void calculateSubtraction(float * first, float * second) {
    printf("%f - %f = %f \n\n", *first, *second, *first - *second);
}

void calculateMultiplication(float * first, float * second) {
    printf("%f * %f = %f \n\n", *first, *second, *first * *second);
}

void calculateDeletion(float * first, float * second) {
    if (*second != 0) {
        printf("%f / %f = %f \n\n", *first, *second, *first / *second);
    } else {
        printf("На 0 делить нельзя \n\n");
    }
}

@end
