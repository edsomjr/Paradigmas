#include <bits/stdc++.h>

using namespace std;

vector<string> capitalize(const vector<string>& xs) {
    vector<string> ys;

    for (auto x : xs) {
        auto y = x;

        if (not y.empty()) {
            y[0] = toupper(x[0]);

            for (size_t i = 1; i < x.size(); ++i)
                y[i] = tolower(x[i]);
        }

        ys.push_back(y);
    }

    return ys;
}

int main()
{
    vector<string> xs { "abc", "XYZ", "Teste", "iPod" };

    auto ys = capitalize(xs);

    for (auto y : ys)
        cout << y << '\n';

    return 0;
}
