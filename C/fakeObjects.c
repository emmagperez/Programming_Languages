/*Emma Perez*/
#include <stdio.h>

typedef struct student
{
    int age;
    char* name;
    
    void (*setAge)(struct student*,int);
    
    int (*getAge)(struct student*);
    
    void (*setName)(struct student*,char*);
    char* (*getName)(struct student*);

} student;



void student_setAge(student* this, int age)
{
    this->age=age;
}


int student_getAge(student* this)
{
    return this->age;
}


void student_setName(student* this, char* name)
{
    this->name=name;
}


char* student_getName(student* this)
{
    return this->name;
}


void student_construct(student* this, int age, char* name)
{
    this->setAge = student_setAge;
    this->getAge = student_getAge;
    this->age = age;
    
    this->setName = student_setName;
    this->getName = student_getName;
    this->name = name;
}

void print(student* stu)
{
	printf("Name: %s\n",student_getName(stu));
	printf("Age: %d\n", student_getAge(stu));
}


#define NEW(class, obj, ...) class obj; class ## _construct(&obj, ## __VA_ARGS__)
#define METHOD(this, method, ...) this.method(&this, ## __VA_ARGS__)


int main(int argc, char *argv[])
{

    NEW(student, myStudent, 0, "" );

   	student_setAge(&myStudent, 21);
   	student_setName(&myStudent, "Emma Perez");

    print(&myStudent);


    return 0;
}

