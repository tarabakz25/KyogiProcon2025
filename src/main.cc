#include <bits/stdc++.h>
#include "../lib/json.hh"
#include "loadField.cc"
#include "rotation.cc"
#include "calculationPair.cc"

using namespace std;
typedef long long ll;
using json = nlohmann::json;

#define REP(i, n) for (int i = 0; i < (int)(n); i++)
#define REP2(i, s, n) for (int i = (s); i < (int)(n); i++)
#define REPD(i, n) for (int i = n - 1; i >= 0; i--)

int main() {
    // Json読み込み
    ifstream ifs("../data/problem.json");
    string str((istreambuf_iterator<char>(ifs)), istreambuf_iterator<char>());
    json J = json::parse(str);

    // フィールドの読み込み
    vector<vector<int>> field;
    loadField(J, field);

    // ペア作りする
    calculationPair(field);


    write_answer(answers);


    return 0;
}

