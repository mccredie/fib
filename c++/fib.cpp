#include<vector>
#include<iostream>
#include<string>

using namespace std;

vector<int> fib(int count);

int main(int argc, char** argv) {
  string count = argv[1];
  auto v = fib(stoi(count));
  for (auto n: v)
    cout << n << endl;
  return 0;
}

vector<int> fib(int count) {
  vector<int> v;
  int x = 1;
  int y = 1;
  for(int i = 0; i < count; i++) {
    int tmp = x;
    v.push_back(x);
    x = y;
    y = y + tmp;
  }
  return v;
}
