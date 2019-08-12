.class public Lorg/apache/james/mime4j/util/CharsetUtil;
.super Ljava/lang/Object;
.source "CharsetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    }
.end annotation


# static fields
.field public static final ISO_8859_1:Ljava/nio/charset/Charset;

.field private static JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

.field public static final US_ASCII:Ljava/nio/charset/Charset;

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static charsetMap:Ljava/util/HashMap;

.field private static decodingSupported:Ljava/util/TreeSet;

.field private static encodingSupported:Ljava/util/TreeSet;

.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 792
    const-class v4, Lorg/apache/james/mime4j/util/CharsetUtil;

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v4

    sput-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    .line 811
    const/16 v4, 0x93

    new-array v4, v4, [Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const/4 v5, 0x0

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "ISO8859_1"

    const-string v8, "ISO-8859-1"

    const/16 v9, 0xd

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ISO_8859-1:1987"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "iso-ir-100"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ISO_8859-1"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "latin1"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "l1"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "IBM819"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "CP819"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "csISOLatin1"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "8859_1"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "819"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "IBM-819"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string v11, "ISO8859-1"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "ISO_8859_1"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "ISO8859_2"

    const-string v8, "ISO-8859-2"

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ISO_8859-2:1987"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "iso-ir-101"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ISO_8859-2"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "latin2"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "l2"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "csISOLatin2"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "8859_2"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "iso8859_2"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "ISO8859_3"

    const-string v8, "ISO-8859-3"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ISO_8859-3:1988"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "iso-ir-109"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ISO_8859-3"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "latin3"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "l3"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "csISOLatin3"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "8859_3"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "ISO8859_4"

    const-string v8, "ISO-8859-4"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ISO_8859-4:1988"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "iso-ir-110"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ISO_8859-4"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "latin4"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "l4"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "csISOLatin4"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "8859_4"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "ISO8859_5"

    const-string v8, "ISO-8859-5"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ISO_8859-5:1988"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "iso-ir-144"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ISO_8859-5"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "cyrillic"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "csISOLatinCyrillic"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "8859_5"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "ISO8859_6"

    const-string v8, "ISO-8859-6"

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ISO_8859-6:1987"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "iso-ir-127"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ISO_8859-6"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "ECMA-114"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "ASMO-708"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "arabic"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "csISOLatinArabic"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "8859_6"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "ISO8859_7"

    const-string v8, "ISO-8859-7"

    const/16 v9, 0xa

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ISO_8859-7:1987"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "iso-ir-126"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ISO_8859-7"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "ELOT_928"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "ECMA-118"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "greek"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "greek8"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "csISOLatinGreek"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "8859_7"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "sun_eu_greek"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "ISO8859_8"

    const-string v8, "ISO-8859-8"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ISO_8859-8:1988"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "iso-ir-138"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ISO_8859-8"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "hebrew"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "csISOLatinHebrew"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "8859_8"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "ISO8859_9"

    const-string v8, "ISO-8859-9"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ISO_8859-9:1989"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "iso-ir-148"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ISO_8859-9"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "latin5"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "l5"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "csISOLatin5"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "8859_9"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "ISO8859_13"

    const-string v8, "ISO-8859-13"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0xa

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "ISO8859_15"

    const-string v8, "ISO-8859-15"

    const/16 v9, 0xe

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ISO_8859-15"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "Latin-9"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "8859_15"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "csISOlatin9"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "IBM923"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "cp923"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "923"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "L9"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "IBM-923"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "ISO8859-15"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "LATIN9"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string v11, "LATIN0"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "csISOlatin0"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const-string v11, "ISO8859_15_FDIS"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0xb

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "KOI8_R"

    const-string v8, "KOI8-R"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "csKOI8R"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "koi8"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0xc

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "ASCII"

    const-string v8, "US-ASCII"

    const/16 v9, 0xc

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ANSI_X3.4-1968"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "iso-ir-6"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ANSI_X3.4-1986"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "ISO_646.irv:1991"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "ISO646-US"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "us"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "IBM367"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "cp367"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "csASCII"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "ascii7"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "646"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string v11, "iso_646.irv:1983"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0xd

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "UTF8"

    const-string v8, "UTF-8"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0xe

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "UTF-16"

    const-string v8, "UTF-16"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "UTF_16"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0xf

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "UnicodeBigUnmarked"

    const-string v8, "UTF-16BE"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "X-UTF-16BE"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "UTF_16BE"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ISO-10646-UCS-2"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x10

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "UnicodeLittleUnmarked"

    const-string v8, "UTF-16LE"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "UTF_16LE"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "X-UTF-16LE"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x11

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Big5"

    const-string v8, "Big5"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "csBig5"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "CN-Big5"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "BIG-FIVE"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "BIGFIVE"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x12

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Big5_HKSCS"

    const-string v8, "Big5-HKSCS"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "big5hkscs"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x13

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "EUC_JP"

    const-string v8, "EUC-JP"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "csEUCPkdFmtJapanese"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "Extended_UNIX_Code_Packed_Format_for_Japanese"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "eucjis"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "x-eucjp"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "eucjp"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "x-euc-jp"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x14

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "EUC_KR"

    const-string v8, "EUC-KR"

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "csEUCKR"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "ksc5601"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "5601"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "ksc5601_1987"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "ksc_5601"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "ksc5601-1987"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "ks_c_5601-1987"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "euckr"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x15

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "GB18030"

    const-string v8, "GB18030"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "gb18030-2000"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x16

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "EUC_CN"

    const-string v8, "GB2312"

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "x-EUC-CN"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csGB2312"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "euccn"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "euc-cn"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "gb2312-80"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "gb2312-1980"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "CN-GB"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "CN-GB-ISOIR165"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x17

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "GBK"

    const-string v8, "windows-936"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "CP936"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "MS936"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ms_936"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "x-mswin-936"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "x-gbk"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x18

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp037"

    const-string v8, "IBM037"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ebcdic-cp-us"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "ebcdic-cp-ca"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ebcdic-cp-wt"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "ebcdic-cp-nl"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "csIBM037"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x19

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp273"

    const-string v8, "IBM273"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "csIBM273"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp277"

    const-string v8, "IBM277"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "EBCDIC-CP-DK"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "EBCDIC-CP-NO"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "csIBM277"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp278"

    const-string v8, "IBM278"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "CP278"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "ebcdic-cp-fi"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ebcdic-cp-se"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "csIBM278"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp280"

    const-string v8, "IBM280"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ebcdic-cp-it"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csIBM280"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp284"

    const-string v8, "IBM284"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ebcdic-cp-es"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csIBM284"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp285"

    const-string v8, "IBM285"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ebcdic-cp-gb"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csIBM285"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp297"

    const-string v8, "IBM297"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ebcdic-cp-fr"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csIBM297"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x20

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp420"

    const-string v8, "IBM420"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ebcdic-cp-ar1"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csIBM420"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x21

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp424"

    const-string v8, "IBM424"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ebcdic-cp-he"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csIBM424"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x22

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp437"

    const-string v8, "IBM437"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "437"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csPC8CodePage437"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x23

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp500"

    const-string v8, "IBM500"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ebcdic-cp-be"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "ebcdic-cp-ch"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "csIBM500"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x24

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp775"

    const-string v8, "IBM775"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "csPC775Baltic"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x25

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp838"

    const-string v8, "IBM-Thai"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x26

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp850"

    const-string v8, "IBM850"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "850"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csPC850Multilingual"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x27

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp852"

    const-string v8, "IBM852"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "852"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csPCp852"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x28

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp855"

    const-string v8, "IBM855"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "855"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csIBM855"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x29

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp857"

    const-string v8, "IBM857"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "857"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csIBM857"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x2a

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp858"

    const-string v8, "IBM00858"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "CCSID00858"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "CP00858"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "PC-Multilingual-850+euro"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x2b

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp860"

    const-string v8, "IBM860"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "860"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csIBM860"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x2c

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp861"

    const-string v8, "IBM861"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "861"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "cp-is"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "csIBM861"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x2d

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp862"

    const-string v8, "IBM862"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "862"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csPC862LatinHebrew"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x2e

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp863"

    const-string v8, "IBM863"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "863"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csIBM863"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x2f

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp864"

    const-string v8, "IBM864"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "cp864"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csIBM864"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x30

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp865"

    const-string v8, "IBM865"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "865"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csIBM865"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x31

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp866"

    const-string v8, "IBM866"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "866"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csIBM866"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x32

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp868"

    const-string v8, "IBM868"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "cp-ar"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csIBM868"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x33

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp869"

    const-string v8, "IBM869"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "cp-gr"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csIBM869"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x34

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp870"

    const-string v8, "IBM870"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ebcdic-cp-roece"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "ebcdic-cp-yu"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "csIBM870"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x35

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp871"

    const-string v8, "IBM871"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ebcdic-cp-is"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csIBM871"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x36

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp918"

    const-string v8, "IBM918"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ebcdic-cp-ar2"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csIBM918"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x37

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1026"

    const-string v8, "IBM1026"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "csIBM1026"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x38

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1047"

    const-string v8, "IBM1047"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "IBM-1047"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x39

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1140"

    const-string v8, "IBM01140"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "CCSID01140"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "CP01140"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ebcdic-us-37+euro"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x3a

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1141"

    const-string v8, "IBM01141"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "CCSID01141"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "CP01141"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ebcdic-de-273+euro"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x3b

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1142"

    const-string v8, "IBM01142"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "CCSID01142"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "CP01142"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ebcdic-dk-277+euro"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "ebcdic-no-277+euro"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x3c

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1143"

    const-string v8, "IBM01143"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "CCSID01143"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "CP01143"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ebcdic-fi-278+euro"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "ebcdic-se-278+euro"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x3d

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1144"

    const-string v8, "IBM01144"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "CCSID01144"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "CP01144"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ebcdic-it-280+euro"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x3e

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1145"

    const-string v8, "IBM01145"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "CCSID01145"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "CP01145"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ebcdic-es-284+euro"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x3f

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1146"

    const-string v8, "IBM01146"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "CCSID01146"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "CP01146"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ebcdic-gb-285+euro"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x40

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1147"

    const-string v8, "IBM01147"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "CCSID01147"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "CP01147"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ebcdic-fr-297+euro"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x41

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1148"

    const-string v8, "IBM01148"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "CCSID01148"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "CP01148"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ebcdic-international-500+euro"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x42

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1149"

    const-string v8, "IBM01149"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "CCSID01149"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "CP01149"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ebcdic-is-871+euro"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x43

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1250"

    const-string v8, "windows-1250"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x44

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1251"

    const-string v8, "windows-1251"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x45

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1252"

    const-string v8, "windows-1252"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x46

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1253"

    const-string v8, "windows-1253"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x47

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1254"

    const-string v8, "windows-1254"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x48

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1255"

    const-string v8, "windows-1255"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x49

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1256"

    const-string v8, "windows-1256"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x4a

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1257"

    const-string v8, "windows-1257"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x4b

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1258"

    const-string v8, "windows-1258"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x4c

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "ISO2022CN"

    const-string v8, "ISO-2022-CN"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x4d

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "ISO2022JP"

    const-string v8, "ISO-2022-JP"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "csISO2022JP"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "JIS"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "jis_encoding"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "csjisencoding"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x4e

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "ISO2022KR"

    const-string v8, "ISO-2022-KR"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "csISO2022KR"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x4f

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "JIS_X0201"

    const-string v8, "JIS_X0201"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "X0201"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "JIS0201"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "csHalfWidthKatakana"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x50

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "JIS_X0212-1990"

    const-string v8, "JIS_X0212-1990"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "iso-ir-159"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "x0212"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "JIS0212"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "csISO159JISX02121990"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x51

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "JIS_C6626-1983"

    const-string v8, "JIS_C6626-1983"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "x-JIS0208"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "JIS0208"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "csISO87JISX0208"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "x0208"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "JIS_X0208-1983"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "iso-ir-87"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x52

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "SJIS"

    const-string v8, "Shift_JIS"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "MS_Kanji"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csShiftJIS"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "shift-jis"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "x-sjis"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "pck"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x53

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "TIS620"

    const-string v8, "TIS-620"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x54

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "MS932"

    const-string v8, "Windows-31J"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "windows-932"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "csWindows31J"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "x-ms-cp932"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x55

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "EUC_TW"

    const-string v8, "EUC-TW"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "x-EUC-TW"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "cns11643"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "euctw"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x56

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "x-Johab"

    const-string v8, "johab"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "johab"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "cp1361"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ms1361"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "ksc5601-1992"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "ksc5601_1992"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x57

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "MS950_HKSCS"

    const-string v8, ""

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x58

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "MS874"

    const-string v8, "windows-874"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "cp874"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x59

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "MS949"

    const-string v8, "windows-949"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "windows949"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "ms_949"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "x-windows-949"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x5a

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "MS950"

    const-string v8, "windows-950"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "x-windows-950"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x5b

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp737"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x5c

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp856"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x5d

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp875"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x5e

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp921"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x5f

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp922"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x60

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp930"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x61

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp933"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x62

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp935"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x63

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp937"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x64

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp939"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x65

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp942"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x66

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp942C"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x67

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp943"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x68

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp943C"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x69

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp948"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x6a

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp949"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x6b

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp949C"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x6c

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp950"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x6d

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp964"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x6e

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp970"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x6f

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1006"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x70

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1025"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x71

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1046"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x72

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1097"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x73

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1098"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x74

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1112"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x75

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1122"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x76

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1123"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x77

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1124"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x78

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1381"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x79

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp1383"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x7a

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Cp33722"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x7b

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "Big5_Solaris"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x7c

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "EUC_JP_LINUX"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x7d

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "EUC_JP_Solaris"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x7e

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "ISCII91"

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "x-ISCII91"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "iscii"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x7f

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "ISO2022_CN_CNS"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x80

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "ISO2022_CN_GB"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x81

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "x-iso-8859-11"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x82

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "JISAutoDetect"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x83

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "MacArabic"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x84

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "MacCentralEurope"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x85

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "MacCroatian"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x86

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "MacCyrillic"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x87

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "MacDingbat"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x88

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "MacGreek"

    const-string v8, "MacGreek"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x89

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "MacHebrew"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x8a

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "MacIceland"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x8b

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "MacRoman"

    const-string v8, "MacRoman"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Macintosh"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "MAC"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "csMacintosh"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x8c

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "MacRomania"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x8d

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "MacSymbol"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x8e

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "MacThai"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x8f

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "MacTurkish"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x90

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "MacUkraine"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x91

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "UnicodeBig"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    const/16 v5, 0x92

    new-instance v6, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v7, "UnicodeLittle"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v6, v4, v5

    sput-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    .line 1004
    const/4 v4, 0x0

    sput-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/TreeSet;

    .line 1010
    const/4 v4, 0x0

    sput-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/TreeSet;

    .line 1016
    const/4 v4, 0x0

    sput-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    .line 1019
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    sput-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/TreeSet;

    .line 1020
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    sput-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/TreeSet;

    .line 1021
    const/4 v4, 0x5

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    .line 1022
    .local v1, "dummy":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 1024
    :try_start_0
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1025
    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/TreeSet;

    sget-object v5, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1030
    :goto_1
    :try_start_1
    const-string v4, "dummy"

    sget-object v5, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 1031
    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/TreeSet;

    sget-object v5, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1022
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1037
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    .line 1038
    const/4 v2, 0x0

    :goto_3
    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 1039
    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    aget-object v0, v4, v2

    .line 1040
    .local v0, "c":Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$200(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1042
    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$200(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    :cond_1
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$300(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1045
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$300(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 1046
    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$300(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1038
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1051
    .end local v0    # "c":Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    :cond_3
    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1052
    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Character sets which support decoding: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/TreeSet;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1054
    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Character sets which support encoding: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/TreeSet;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1078
    :cond_4
    const-string v4, "US-ASCII"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    sput-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    .line 1081
    const-string v4, "ISO-8859-1"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    sput-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 1084
    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    sput-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    return-void

    :catch_0
    move-exception v4

    goto/16 :goto_2

    .line 1034
    :catch_1
    move-exception v4

    goto/16 :goto_2

    :catch_2
    move-exception v4

    goto/16 :goto_1

    .line 1028
    :catch_3
    move-exception v4

    goto/16 :goto_1

    .line 1021
    :array_0
    .array-data 1
        0x64t
        0x75t
        0x6dt
        0x6dt
        0x79t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    return-void
.end method

.method public static isDecodingSupported(Ljava/lang/String;)Z
    .locals 2
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 1153
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWhitespace(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1099
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWhitespace(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1114
    if-nez p0, :cond_0

    .line 1115
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "String may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1117
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1118
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1119
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1120
    const/4 v2, 0x0

    .line 1123
    :goto_1
    return v2

    .line 1118
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1123
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static toJavaCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 1183
    sget-object v1, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    .line 1184
    .local v0, "c":Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    if-eqz v0, :cond_0

    .line 1185
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v1

    .line 1187
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static toMimeCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 1164
    sget-object v1, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    .line 1165
    .local v0, "c":Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    if-eqz v0, :cond_0

    .line 1166
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$200(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v1

    .line 1168
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
