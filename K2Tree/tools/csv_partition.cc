//
// Created by inFinity on 2017/11/16.
//
#include <stdlib.h>
#include <fstream>
#include <vector>
#include <cmath>
#include <cassert>
#include <utils/time.h>
#include <utils/time.cc>
#include <stdio.h>
#include "config.h"

using ::std::ifstream;
using ::std::ofstream;
using ::std::vector;

int main(int argc, char** argv) {

    const short __k0 = 128;

    string path, filename, out_file;
    size_t node_num, edge_num;
    int k0;
    if (argc <= 2) {
        path = TWITTER_PATH + "../k2tree_partition/";
        filename = TWITTER_FILE;
        out_file = path + "twitter";
        node_num = TWITTER_NODE_NUM;
        edge_num = TWITTER_EDGE_NUM;
        k0 = (argc == 1)?__k0:atoi(argv[1]);
    } else {
        path = string(argv[1]);
        filename = string(argv[2]);
        out_file = string(argv[3]);
        node_num = atoi(argv[4]);
        edge_num = atoi(argv[5]);
        k0 = atoi(argv[6]);
    }

    auto part = [=]() {
        ifstream fin(filename, ifstream::in);
        assert(!fin.fail());
        vector<ofstream> fouts(k0 * k0);
        vector<int> fouts_line_num(k0 * k0, 0);

        for (int i = 0; i < k0; ++i) {
            string of = out_file + std::to_string(i) + ".csv";
            fouts[i].open(of, std::ios::out | std::ios::trunc);
            assert(!fouts[i].fail());
        }

        int u, v;
        double line_num = 0;
        auto cell = static_cast<int>(ceil(
                static_cast<double>(node_num) / k0)
        );

        int last_block_row = 0;
        while (line_num < edge_num && !fin.eof()) {

            fin >> u >> v;
            u--;
            v--;

            int idx = u / cell * k0 + v / cell;
            int new_u = u % cell + 1;
            int new_v = v % cell + 1;

            if (u / cell != last_block_row) {
                cout << u / cell << endl;
                for (int i = last_block_row * k0; i < u / cell * k0; ++i) {
                    fouts[i].close();
                    if (i + k0 < k0 * k0) {
                        string of = out_file + std::to_string(i + k0) + ".csv";
                        fouts[i + k0].open(of, std::ios::out | std::ios::trunc);
                        assert(!fouts[i + k0].fail());
                    }
                }
            }
            last_block_row = u / cell;

            fouts[idx] << new_u << "\t" << new_v << endl;
            fouts_line_num[idx]++;

            if (!((size_t) line_num % 1000000)) {
                //fprintf(stderr, "<%d, %d>\n", u, v);
                //fprintf(stderr, "%.2f%\n", line_num/edge_num*100);
            }
            line_num++;

        }

        for (int i = k0 * (k0 - 1); i < k0 * k0; ++i)
            fouts[i].close();
        fin.close();

    };

    libk2tree::utils::cost(part);
    return 0;
}