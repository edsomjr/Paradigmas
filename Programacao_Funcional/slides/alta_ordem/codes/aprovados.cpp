#include <bits/stdc++.h>

using namespace std;

struct Student
{
    string name;
    int score;
};

vector<string> aprovados(const vector<Student>& xs)
{
    vector<string> ys;

    for (auto [name, score] : xs)
        if (score >= 5)
            ys.push_back(name);

    return ys;
}

int main()
{
    vector<Student> xs {
        { "Ana", 8 },
        { "Beto", 3 },
        { "Carlos", 5 },
        { "Daniel", 4 },
        { "Edgar", 7 },
    };

    auto ys = aprovados(xs);

    for (auto y : ys)
        cout << y << '\n';

    return 0;
}
