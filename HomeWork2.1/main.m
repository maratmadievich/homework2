//
//  main.m
//  HomeWork2.1
//
//  Created by Admin on 2/5/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HomeworkOne.h"
#import "HomeworkTwo.h"


int selectHomework() {
    int value = -1;
    printf("Выберите Домашнее задание:\n");
    printf("1-2 ДЗ;\n");
    printf("0 Выход.\n");
    scanf("%d", &value);
    printf("\n\n");
    return value;
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int selectedHomework = -1;
        HomeworkOne *homeworkOne= [[HomeworkOne alloc]init];
        HomeworkTwo *homeworkTwo= [[HomeworkTwo alloc]init];
        do {
            selectedHomework = selectHomework();
            switch (selectedHomework) {
                case 0: //Выход
                    break;
                    
                case 1: //Выход
                    [homeworkOne selectTask];
                    break;
                    
                case 2: //Выход
                    [homeworkTwo selectTask];
                    break;
                    
                default:
                    break;
            }
        } while (selectedHomework != 0);
        
        [homeworkOne selectTask];
    }
    return 0;
}



