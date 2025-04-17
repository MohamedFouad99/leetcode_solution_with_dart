import 'dart:math';

void main() {
  List<int> cost = [10, 15, 20];
  int result = minCostClimbingStairs(cost);
  print(result);
}

int minCostClimbingStairs(List<int> cost) {
  int n = cost.length;
  List<int> dp = List.filled(n + 1, 0);

  for (int i = 2; i <= n; i++) {
    dp[i] = min(dp[i - 1] + cost[i - 1], dp[i - 2] + cost[i - 2]);
  }

  return dp[n];
}
