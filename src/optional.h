// Copyright (c) 2017 The ReBitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef REBITCOIN_OPTIONAL_H
#define REBITCOIN_OPTIONAL_H

#include <utility>

#include <boost/optional.hpp>

//! Substitute for C++17 std::optional
template <typename T>
using Optional = boost::optional<T>;

//! Substitute for C++17 std::make_optional
template <typename T>
Optional<T> MakeOptional(bool condition, T&& value)
{
    return boost::make_optional(condition, std::forward<T>(value));
}

//! Substitute for C++17 std::nullopt
static auto& nullopt = boost::none;

#endif // REBITCOIN_OPTIONAL_H
