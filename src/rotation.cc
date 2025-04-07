#include <bits/stdc++.h>

using namespace std;

#define REP(i, n) for (int i = 0; i < (int)(n); i++)
#define REP2(i, s, n) for (int i = (s); i < (int)(n); i++)
#define REPD(i, n) for (int i = n - 1; i >= 0; i--)

/* 回答用構造体 */
struct Answer {
    int x;
    int y;
    int n;
};
json answers = json::array();

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

    json answer;
    answer["x"] = origin_i;
    answer["y"] = origin_j;
    answer["n"] = field_size;
    answers.push_back(answer);

    return temp_field;
}

void write_answer(json answers) {
    json final_answer;
    final_answer["ops"] = answers;
    ofstream ofs("../data/answer.json");
    ofs << final_answer.dump(4);
}