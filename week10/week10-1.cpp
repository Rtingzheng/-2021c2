#include <stdio.h>
#include <vector>
#include <algorithm>
class record{
public:
    char name[30];
    int grade;
};
bool compare(record a,record b){
    return (a.grade > b.grade);
}
int main()
{
    FILE * fin = fopen("input.txt", "r");
    int N;
    fscanf(fin,"%d",&N);
    std::vector<record> student(N);
    for(int i=0;i<N;i++){
        fscanf(fin,"%s %d",student[i].name,&student[i].grade);
    }
    std::sort(student.begin(),student.end(),compare);

    for(int i=0;i<N;i++){
        printf("%s %d\n",student[i].name,student[i].grade);
    }
}
