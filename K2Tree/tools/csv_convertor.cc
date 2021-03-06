//
// Created by inFinity on 2017/11/7.
//

#include <k2tree.h>
#include <k2tree_compressed.h>
#include <utils/time.h>
#include <utils/time.cc>
#include "config.h"

DEFINE_bool(big_menu, true, "Include 'advanced' options in the menu listing");
DEFINE_string(languages, "english,french,german",
                "comma-separated list of languages to offer in the 'lang' menu");

int main(int argc, char** argv) {

    google::ParseCommandLineFlags(&argc, &argv, true);
    cout << "argc=" << argc << endl;
    cout << "big menu is " << FLAGS_languages << endl;
    cout << "languages is " << FLAGS_languages << endl;

    string path;
    string filename;
    size_t node_num, edge_num;
    int k1, k2, k1_levels, kL;

    std::tie(path, filename, node_num, edge_num, k1, k2, k1_levels, kL) =
            get_args(argc, argv);

    auto build_tree = [=]() {
        libk2tree::k2tree tree(k1, k2, k1_levels, kL, node_num, edge_num);
        tree.build_from_edge_array_csv(filename, "", libk2tree::to_memory);
        tree.merge_tree_bitmap();
        sdsl::store_to_file(tree.T(), path+"T.bin");
        sdsl::store_to_file(tree.L(), path+"L.bin");
        sdsl::sd_vector<> sd_t = tree.T();
        sdsl::sd_vector<> sd_l = tree.L();
        sdsl::store_to_file(sd_t, path+"T_sd.bin");
        sdsl::store_to_file(sd_l, path+"L_sd.bin");
        sdsl::rrr_vector<> rrr_t(tree.T());
        sdsl::rrr_vector<> rrr_l(tree.L());
        sdsl::store_to_file(rrr_t, path+"T_rrr.bin");
        sdsl::store_to_file(rrr_l, path+"L_rrr.bin");

        libk2tree::k2tree_compressed c_tree(k1, k2, k1_levels, kL, node_num,
                                            path, libk2tree::read_T, false);
        c_tree.save(path);

    };
    libk2tree::utils::cost(build_tree);
    return 0;

}
