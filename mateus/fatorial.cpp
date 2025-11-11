// Programa c++ chamando função feita em assembly
#include <iostream>
#include <cstdint>
extern "C" int64_t fatorial(int64_t);
using namespace std;
int main(){
    cout << "Informe um inteiro: ";
    int64_t x, f;
    cin >> x;
    f = fatorial(x);
    cout << "O fatorial de " << x << " é " << f << endl;
    return 0;
}