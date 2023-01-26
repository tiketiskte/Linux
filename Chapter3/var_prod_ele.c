int var_prod_ele(long n, int A[n][n], int B[n][n], long i, long k) {
    long j;
    int result = 0;
    for(int j = 0; j < n; j++) {
        result += A[i][j] * B[j][i];
    }
    return result;
}