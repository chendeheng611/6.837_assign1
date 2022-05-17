#include <fstream>
#include <iostream>
#include <string>

using namespace std;

static int ver_num = 0;
int main()
{
    string file_name;
    cout<<"input the name:";
    cin>>file_name;
    fstream test;
    test.open(file_name);
    if (!test.is_open())
    {
        return -1;
    }
    string test_line;
    
    while(getline(test,test_line))
    {
        cout<<test_line.c_str()<<endl;
        // cout<<test_line[0]<<endl;
        if(test_line[0]=='v') ver_num++;
        
        
    }
    cout<<"total " << ver_num<< endl;
    cout<< " end up here"; 
}