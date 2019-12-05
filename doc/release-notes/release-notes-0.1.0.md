ReBitcoin Core version 0.1.0 is now available from:

  <https://rebitcoin.xyz/download/rebitcoin-core-0.1.0/>

This release includes new features, various bug fixes and performance
improvements, as well as updated translations.

Please report bugs using the issue tracker at GitHub:

  <https://github.com/rebitcoin/rebitcoin/issues>


How to Install (Upgrade)
=========================

If you are running an older version, shut it down. Wait until it has completely
shut down (which might take a few minutes for older versions), then run the
installer (on Windows) or just copy over `/Applications/ReBitcoin-Qt` (on Mac)
or `rebitcoind`/`rebitcoin-qt` (on Linux).

Upgrading directly from a version of ReBitcoin Core that has reached its EOL is
possible, but might take some time if the datadir needs to be migrated.  Old
wallet versions of ReBitcoin Core are generally supported.

Compatibility
==============

ReBitcoin Core is supported and extensively tested on operating systems using
the Linux kernel, macOS 10.10+, and Windows 7 and newer. It is not recommended
to use ReBitcoin Core on unsupported systems.

ReBitcoin Core should also work on most other Unix-like systems but is not
as frequently tested on them.

From 0.1.0 onwards, macOS <10.10 is no longer supported. 0.1.0 is
built using Qt 5.9.x, which doesn't support versions of macOS older than
10.10. Additionally, ReBitcoin Core does not yet change appearance when
macOS "dark mode" is activated.

Users running macOS Catalina may need to "right-click" and then choose "Open"
to open the ReBitcoin Core .dmg. This is due to new signing requirements
imposed by Apple, which the ReBitcoin Core project does not yet adhere too.
