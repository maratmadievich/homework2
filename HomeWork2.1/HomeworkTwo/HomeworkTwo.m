//
//  HomeworkTwo.m
//  HomeWork2.1
//
//  Created by Admin on 2/5/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "HomeworkTwo.h"

@implementation HomeworkTwo

-(void)selectTask {
    int value = -1;
    do {
        printf("Выберите задание:\n1) Входит ли буква в английский алфавит;\n0) выход.\n");
        scanf("%d", &value);
        printf("\n\n");
        switch (value) {
            case 0:
                break;
                
            case 1:
                [self taskOne];
                break;
                
            default:
                printf("Выберите другое значение\n");
                break;
        }
    } while (value != 0);
}


-(void) taskOne {
    char value[1];
    
    printf("Введите букву: ");
    scanf("%s", value);
    
    printf(((value[0] >= 'a') && (value[0] <= 'z')) || ((value[0] >= 'A') && (value[0] <= 'Z')) ? "Символ %c принадлежит английскому алфавиту" : "Символ %c НЕ принадлежит английскому алфавиту", value[0]);
    printf("\n\n");
}
@end
