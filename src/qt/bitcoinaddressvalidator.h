// Copyright (c) 2011-2014 The ReBitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef REBITCOIN_QT_REBITCOINADDRESSVALIDATOR_H
#define REBITCOIN_QT_REBITCOINADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class ReBitcoinAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit ReBitcoinAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** ReBitcoin address widget validator, checks for a valid rebitcoin address.
 */
class ReBitcoinAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit ReBitcoinAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // REBITCOIN_QT_REBITCOINADDRESSVALIDATOR_H
