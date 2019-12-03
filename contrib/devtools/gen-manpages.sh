#!/usr/bin/env bash

export LC_ALL=C
TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

REBITCOIND=${REBITCOIND:-$BINDIR/rebitcoind}
REBITCOINCLI=${REBITCOINCLI:-$BINDIR/rebitcoin-cli}
REBITCOINTX=${REBITCOINTX:-$BINDIR/rebitcoin-tx}
WALLET_TOOL=${WALLET_TOOL:-$BINDIR/rebitcoin-wallet}
REBITCOINQT=${REBITCOINQT:-$BINDIR/qt/rebitcoin-qt}

[ ! -x $REBITCOIND ] && echo "$REBITCOIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
read -r -a REBTCVER <<< "$($REBITCOINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }')"

# Create a footer file with copyright content.
# This gets autodetected fine for rebitcoind if --version-string is not set,
# but has different outcomes for rebitcoin-qt and rebitcoin-cli.
echo "[COPYRIGHT]" > footer.h2m
$REBITCOIND --version | sed -n '1!p' >> footer.h2m

for cmd in $REBITCOIND $REBITCOINCLI $REBITCOINTX $WALLET_TOOL $REBITCOINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${REBTCVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${REBTCVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
