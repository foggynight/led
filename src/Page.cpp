/**
 * led - page.cpp
 * Copyright (C) 2021 Robert Coffey
 * Released under the GPLv2 license
 **/

#include "Page.hpp"

#include <string>

void Page::load(std::string path)
{
    // TODO: Handle invalid filepaths
    // TODO: Check if file exists

    this->path = path;
    file.open(path);

    std::string line;
    while (std::getline(file, line))
        lines.push_back(std::string(line));
}