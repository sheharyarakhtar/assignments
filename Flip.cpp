#include<cstdlib>
#include<iostream>
#include<ctime>


using namespace std;
int flip (int);
int main()
{
	int counter=0;
	int heads=0, tails =0;
	int coin;
	srand(time(0));
	while (counter < 100)
	{
		if(flip(coin) == 0)
		{
			cout<<"Tails!"<<endl;
			tails = tails +1;
		}
		else 
		{
			cout<<"Heads!"<<endl;
			heads = heads + 1;
		}
		counter=counter+1;
		cout<<endl;
	}
		cout<<"Heads: "<<heads<<endl<<"Tails: "<<tails<<endl;
		system("pause");
}
int flip (int x)
{
	int y = rand()%2;
	return y;

}
