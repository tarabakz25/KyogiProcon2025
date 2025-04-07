#include <vector>
#include "../lib/json.hh"

using namespace std;
using json = nlohmann::json;

void loadField(const json &j, vector<vector<int>> &field) {
    field = j["problem"]["field"]["entities"];
}
