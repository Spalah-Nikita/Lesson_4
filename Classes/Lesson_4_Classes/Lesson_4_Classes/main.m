//
//  main.m
//  Lesson_4_Classes
//
//  Created by Nikita Vintonovich on 8/22/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import <Foundation/Foundation.h>

// Сначала необходимо описать интерфейс класса:

// начало описания класса MyFriend
@interface MyFriend : NSObject // начало описания интерфейса класса MyFriend
{
    // Здесь добавляются поля, которые будут хранить состояние класса
    NSString *_name;
    NSUInteger _age;
}

// Здесь добавляются методы, с помощью которых описывается поведение класса
// например, для того, чтобы изменить состояние - нужно добавить методы SET,
// а для того, чтобы получить состояние - нужно добавить методы GET.

// Методы, в области @interface - доступны в другим классам

// метод SET для поля _name
- (void)setName:(NSString*)name;
// метод GET для поля _name
- (NSString*)name;

// метод SET для поля _age
- (void)setAge:(NSUInteger)age;
// метод GET для поля _age
- (NSUInteger)age;

// Один из возможных методов класса
- (void)trollSomeOne;


@end // конец описания интерфейса класса MyFriend


@implementation MyFriend // начало реализации класса MyFriend

// Методы, в области @implementation содержат реализацию методов
- (void)setName:(NSString *)name
{
    _name = name;
}

- (NSString*)name
{
    return _name;
}

- (void)setAge:(NSUInteger)age
{
    _age = age;
}

- (NSUInteger)age
{
    return _age;
}

// поведение класса:
- (void)trollSomeOne
{
    NSLog(@"Send funny mem)");
}

@end // конец реализации класса MyFriend
// конец описания класса MyFriend


// создадим класс-наследник MyBestFriend от родительского класса MyFriend
@interface MyBestFriend : MyFriend
// этот класс уже имеет поля _name и _age и методоы класса MyFriend
@end


@implementation MyBestFriend

// здесь можно добавить новый метод или переопределить уже существующий
- (void)trollSomeOne
{
    // если расскомментировать строку ниже,
    // то сначала вызоветься метод trollSomeOne класса-родителя, т.е. класса MyFriend
//    [super trollSomeOne];
    
    NSString *generatedMem = [MyBestFriend createMem];
    NSLog(@"%@", generatedMem);
    
    // как видими, метод trollSomeOne имеет различную реализацию
    // для класса родителя MyFriend и для класса-наследника MyBestFriend
}

// это метод класса - чтобы его вызвать - не нужно создавать объект класса
+ (NSString*)createMem
{
    return @"Some funny mem";
}

@end


int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        // теперь нам оступен класс MyFriend
        
        // создадим объект класса MyFriend:
        MyFriend *myFriend = [MyFriend new];
        
        // зададдим имя и возраст:
        [myFriend setName:@"John"]; // или можно так:   myFriend.name = @"John";
        [myFriend setAge:21];       // или можно так:   myFriend.name.age = 21;
        
        // выведем заданные имя и возраст в консоль из объекта класса:
        NSLog(@"Friend name: %@, his age: %lu", myFriend.name, myFriend.age);
        
        // выполним действие класса:
        [myFriend trollSomeOne];
        
        
        // теперь создадим объект класса MyBestFriend
        MyBestFriend *myBestFriend = [MyBestFriend new];
        
        // зададим ему другое имя и возраст:
        myBestFriend.name = @"Ivan";
        myBestFriend.age = 23;
        
        // выведем в консоль имя и возраст лучшего друга:
        NSLog(@"name of the best friend: %@, age: %lu", myBestFriend.name, myFriend.age);
        
        // выполним действие класса:
        [myBestFriend trollSomeOne];
        // вывели в лог другой текст, но имя метода то же самое, как и у myFriend
    }
    return 0;
}
