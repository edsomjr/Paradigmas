#include <bits/stdc++.h>

using namespace std;

double dot_product(const vector<double>& xs, const vector<double>& ys)
{
    auto res = 0.0;

    for (size_t i = 0; i < xs.size(); ++i)
        res += xs[i] * ys[i];

    return res;
}

int main()
{
    vector<double> xs { 1.2, -0.8, 5.5, 3.7 };
    vector<double> ys { 2.8, 1.3, -4.9, 5.0 };

    cout << dot_product(xs, ys) << '\n';

    return 0;
}
