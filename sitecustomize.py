import sys
actual_encoding = sys.getdefaultencoding()
try:
    import locale
    loc = locale.getdefaultlocale()
    if loc[1]:
        encoding = loc[1]
        print "Encoding {0} => {1}".format(actual_encoding, encoding)
        sys.setdefaultencoding(encoding)
except ImportError:
    pass
