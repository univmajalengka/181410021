#include <stdio.h>

main ()

{         

char nama_bulan[12][10] = {"januari", "februari", "maret", "april","mei", "juni", "juli", "agustus", "september", "oktober", "november", "desember"};

int input_angka;

printf ("Masukkan Nomor Bulan:   ");

scanf("%i", &input_angka);

printf ("\n\n>> bulan %s", nama_bulan[input_angka-1]);

}
