#include <iostream>
#include <string>
#include <sstream>
#define awalan using namespace std

awalan;

struct daftar_t
{
	string baju;
	int harga;
} daftar[3];

void printshirt(daftar_t shirt);

int main()
{
	string mystr;
	int n;
		for (n=0; n<3; n++) 
		{
			cout << "Masukan kode baju: ";
			getline (cin, daftar[n].baju);
			cout << "Masukan Harga:Rp. ";
			getline (cin,mystr);
			stringstream(mystr) >> daftar[n].harga;
		}

	cout << "\nAnda telah memasukan kode baju:\n";
		for (n=0; n<3; n++)
			printshirt(daftar[n]);

return 0;

}


void printshirt(daftar_t shirt)
{
	cout << shirt.baju << "\t";
	cout << "Rp. " << shirt.harga << ",- \n";
}
