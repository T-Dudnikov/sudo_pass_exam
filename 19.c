/*
Условие.
Напишите программу, считывающую N × M матрицу A в MSR формате, вектор x длины M и произведение Ax.
*/

#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#define min(X, Y) (((X) < (Y)) ? (X) : (Y))

int scanf_int_array(int *arr, int n) {
  for (int i = 0; i < n; ++i) {
    if (scanf("%d ", &arr[i]) != 1) {
      return 0;
    }
  }
  return 1;
}

int main() {
  int N, M, K;

  scanf("%d%d%d", &N, &M, &K);

  int diag_len = min(N, M);

  int *V;
  int *colIndices;
  int *rowIndices;
  int *diagElems;
  int *xVector;
  int *resVector;

  diagElems = malloc(diag_len * sizeof(int));
  V = malloc(K * sizeof(int));
  colIndices = malloc(K * sizeof(int));
  rowIndices = malloc(N * sizeof(int));
  xVector = malloc(M * sizeof(int));
  resVector = malloc(N * sizeof(int));

  scanf_int_array(diagElems, diag_len);
  scanf_int_array(V, K);
  scanf_int_array(colIndices, K);
  scanf_int_array(rowIndices, N);
  scanf_int_array(xVector, M);

  for (int i = 0; i < N - 1; ++i) {
    resVector[i] = diagElems[i] * xVector[i];
    for (int j = rowIndices[i]; j < rowIndices[i + 1]; ++j) {
      resVector[i] += V[j] * xVector[colIndices[j]];
    }
  }
  resVector[N - 1] = diagElems[diag_len - 1] * xVector[N - 1];
  for (int j = rowIndices[N - 1]; j < K; ++j) {
    resVector[N - 1] += V[j] * xVector[colIndices[j]];
  }

  for (int i = 0; i < N; ++i) {
    printf("%d ", resVector[i]);
  }
  printf("\n");

  free(diagElems);
  free(V);
  free(colIndices);
  free(rowIndices);
  free(xVector);

  return 0;
}
