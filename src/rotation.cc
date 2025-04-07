#include <bits/stdc++.h>

using namespace std;

#define REP(i, n) for (int i = 0; i < (int)(n); i++)
#define REP2(i, s, n) for (int i = (s); i < (int)(n); i++)
#define REPD(i, n) for (int i = n - 1; i >= 0; i--)

vector<vector<int>> rotate(vector<vector<int>> field, int origin_i, int origin_j, int field_size) {
    int h = field.size();
    int w = field[0].size();
    
    if(field_size % 2 == 1) field_size --;

    vector<vector<int>> temp_field(field_size, vector<int>(field_size));

    REP(i, field_size) {
        REP(j, field_size) {
            temp_field[i][j] = field[origin_i + field_size - j - 1][origin_j + i];
        }
    }

    return temp_field;
}


