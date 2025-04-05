cmake_minimum_required(VERSION 3.16)

# テスト用の実行可能ファイル
add_executable(a.out
    main.cc
)

# テストに必要なインクルードパスを設定
target_include_directories(a.out PRIVATE
    ${PROJECT_SOURCE_DIR}/lib
)
