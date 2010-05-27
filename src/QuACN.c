/*
 * Native C code for the QuACN package.
 */

#include <R.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>

/* Forward declarations <<<1 */

void quacn_degdeg_exponents(int *graph, int *degrees, int *size,
        double *c, int *c_length, double *result);
static double quacn_degdeg_exponent(const int *graph,
        const int *degrees, int size, int start,
        const double *c, int c_length);

/* Library entry point <<<1 */

static const R_CMethodDef c_exports[] = {
    {"quacn_degdeg_exponents", (DL_FUNC) &quacn_degdeg_exponents, 6},
    {NULL, NULL, 0}
};

void
R_init_quacn(DllInfo *info)
{
    R_registerRoutines(info, c_exports, NULL, NULL, NULL);
}

/* Degree-degree associations <<<1 */

/*
 * Given an adjacency matrix, the degrees of all vertices and some c_k values,
 * calculate the exponents for the degree-degree-association-based information
 * functional applied on every vertex in the graph.
 *
 * Input:
 *   graph: adjacency matrix of a graph as an integer vector, as produced by
 *       as.integer(as(g, "matrix"))
 *   degrees: pre-calculated degrees of all nodes, as produced by
 *       as.integer(graph::degree(g))
 *   size: number of nodes in the graph
 *   c: weight constants for paths of the respective length
 *   c_length: number of constants in c; if the length of some shortest paths
 *       exceeds c_length, the last value of c will be replicated
 *
 * Output:
 *   result: double vector containing the calculated exponent for the
 *       information functional applied to every node
 */
void
quacn_degdeg_exponents(int *graph, int *degrees, int *size,
        double *c, int *c_length, double *result)
{
    int i;
    double sum = 0;

    for (int i = 0; i < *size; ++i)
        result[i] = quacn_degdeg_exponent(graph,
                degrees, *size, i, c, *c_length);
}

/*
 * Structure representing a shortest path to a given node.  Doubles as queue for
 * the breadth-first search in quacn_degdeg_exponent.
 */
typedef struct _quacn_degdeg_path quacn_degdeg_path;
struct _quacn_degdeg_path {
    int num;                    /* vertex number */
    int length;                 /* length of the path in vertices */
    int sum;                    /* sum of degree-degree differences */
    quacn_degdeg_path *next;    /* pointer to next in BFS queue and result */
};

/*
 * Modified breadth-first search to enumerate all shortest paths from one node
 * to all nodes in an unweighted graph, and calculate the degree-degree
 * association value for the source vertex.
 */
static double
quacn_degdeg_exponent(const int *graph, const int *degrees, int size, int start,
        const double *c, int c_length)
{
    quacn_degdeg_path *q_head, *q_tail;
    int *lengths;
    double result = 0;

    /* initialize queue */
    q_head = q_tail = Calloc(1, quacn_degdeg_path);
    q_tail->num = start;
    q_tail->length = 1;
    q_tail->sum = 0;
    q_tail->next = NULL;

    /* for practical reasons (but in contrast to the paper), path
     * lengths are vertex counts (not edge counts) here */
    lengths = Calloc(size, int);
    memset(lengths, 0, size * sizeof(int));
    lengths[start] = 1;

    while (q_head != NULL) {
        int i;
        quacn_degdeg_path *next_head;

        if (q_head->length > 1) {
            /* sum up the exponent immediately */
            if (q_head->length - 1 <= c_length)
                result += q_head->sum * c[q_head->length - 2];
            else
                result += q_head->sum * c[c_length - 1];
        }

        for (i = 0; i < size; ++i) {
            quacn_degdeg_path *new_tail;

            if (graph[i + size * q_head->num] == 0)
                continue;       /* vertices not adjacent */
            if (lengths[i] > 0 && lengths[i] < q_head->length + 1)
                continue;       /* shorter path known */

            lengths[i] = q_head->length + 1;

            new_tail = Calloc(1, quacn_degdeg_path);
            new_tail->num = i;
            new_tail->length = q_head->length + 1;
            new_tail->sum = q_head->sum + abs(degrees[q_head->num] - degrees[i]);
            new_tail->next = NULL;
            q_tail->next = new_tail;
            q_tail = new_tail;
        }

        next_head = q_head->next;
        Free(q_head);
        q_head = next_head;
    }

    Free(lengths);

    return result;
}

/* >>> */

/* vim: set sw=4 sts=4 et tw=80 fdm=marker fmr=<<<,>>>: */
