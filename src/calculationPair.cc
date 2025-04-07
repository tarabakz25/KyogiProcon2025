#include <bits/stdc++.h>

using namespace std;

#define REP(i, n) for (int i = 0; i < (int)(n); i++)
#define REP2(i, s, n) for (int i = (s); i < (int)(n); i++)
#define REPD(i, n) for (int i = n - 1; i >= 0; i--)

void calculationPair(vector<vector<int>> field) {
    int h = field.size();
    int w = field[0].size();

    vector<vector<pair<int, int>>> pairs;

    REP(i, h) {
        REP(j, w) {
            pairs[field[i][j]].push_back({i, j});
        }
    }

    int pair_count = 0;
    
    REP(i, (field.size() * field[0].size() / 2) - 1) {
        int mi = pairs[i][0].first;
        int mj = pairs[i][0].second;
        int ni = pairs[i][1].first;
        int nj = pairs[i][1].second;

        if(abs(mi - ni) + abs(mj - nj) <= 2) {
            pair_count++;
        }
    }

    cout << pair_count << endl;

}