.class final Ltwitter4j/internal/json/HTMLEntity;
.super Ljava/lang/Object;
.source "HTMLEntity.java"


# static fields
.field private static final entityEscapeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final escapeEntityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 168
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Ltwitter4j/internal/json/HTMLEntity;->entityEscapeMap:Ljava/util/Map;

    .line 169
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Ltwitter4j/internal/json/HTMLEntity;->escapeEntityMap:Ljava/util/Map;

    .line 172
    const/16 v4, 0xfb

    new-array v0, v4, [[Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "&nbsp;"

    aput-object v5, v4, v8

    const-string v5, "&#160;"

    aput-object v5, v4, v9

    const-string v5, "\u00a0"

    aput-object v5, v4, v7

    aput-object v4, v0, v8

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "&iexcl;"

    aput-object v5, v4, v8

    const-string v5, "&#161;"

    aput-object v5, v4, v9

    const-string v5, "\u00a1"

    aput-object v5, v4, v7

    aput-object v4, v0, v9

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "&cent;"

    aput-object v5, v4, v8

    const-string v5, "&#162;"

    aput-object v5, v4, v9

    const-string v5, "\u00a2"

    aput-object v5, v4, v7

    aput-object v4, v0, v7

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "&pound;"

    aput-object v5, v4, v8

    const-string v5, "&#163;"

    aput-object v5, v4, v9

    const-string v5, "\u00a3"

    aput-object v5, v4, v7

    aput-object v4, v0, v10

    const/4 v4, 0x4

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&curren;"

    aput-object v6, v5, v8

    const-string v6, "&#164;"

    aput-object v6, v5, v9

    const-string v6, "\u00a4"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/4 v4, 0x5

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&yen;"

    aput-object v6, v5, v8

    const-string v6, "&#165;"

    aput-object v6, v5, v9

    const-string v6, "\u00a5"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/4 v4, 0x6

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&brvbar;"

    aput-object v6, v5, v8

    const-string v6, "&#166;"

    aput-object v6, v5, v9

    const-string v6, "\u00a6"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/4 v4, 0x7

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&sect;"

    aput-object v6, v5, v8

    const-string v6, "&#167;"

    aput-object v6, v5, v9

    const-string v6, "\u00a7"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x8

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&uml;"

    aput-object v6, v5, v8

    const-string v6, "&#168;"

    aput-object v6, v5, v9

    const-string v6, "\u00a8"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x9

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&copy;"

    aput-object v6, v5, v8

    const-string v6, "&#169;"

    aput-object v6, v5, v9

    const-string v6, "\u00a9"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xa

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&ordf;"

    aput-object v6, v5, v8

    const-string v6, "&#170;"

    aput-object v6, v5, v9

    const-string v6, "\u00aa"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xb

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&laquo;"

    aput-object v6, v5, v8

    const-string v6, "&#171;"

    aput-object v6, v5, v9

    const-string v6, "\u00ab"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xc

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&not;"

    aput-object v6, v5, v8

    const-string v6, "&#172;"

    aput-object v6, v5, v9

    const-string v6, "\u00ac"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xd

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&shy;"

    aput-object v6, v5, v8

    const-string v6, "&#173;"

    aput-object v6, v5, v9

    const-string v6, "\u00ad"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xe

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&reg;"

    aput-object v6, v5, v8

    const-string v6, "&#174;"

    aput-object v6, v5, v9

    const-string v6, "\u00ae"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xf

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&macr;"

    aput-object v6, v5, v8

    const-string v6, "&#175;"

    aput-object v6, v5, v9

    const-string v6, "\u00af"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x10

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&deg;"

    aput-object v6, v5, v8

    const-string v6, "&#176;"

    aput-object v6, v5, v9

    const-string v6, "\u00b0"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x11

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&plusmn;"

    aput-object v6, v5, v8

    const-string v6, "&#177;"

    aput-object v6, v5, v9

    const-string v6, "\u00b1"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x12

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&sup2;"

    aput-object v6, v5, v8

    const-string v6, "&#178;"

    aput-object v6, v5, v9

    const-string v6, "\u00b2"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x13

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&sup3;"

    aput-object v6, v5, v8

    const-string v6, "&#179;"

    aput-object v6, v5, v9

    const-string v6, "\u00b3"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x14

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&acute;"

    aput-object v6, v5, v8

    const-string v6, "&#180;"

    aput-object v6, v5, v9

    const-string v6, "\u00b4"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x15

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&micro;"

    aput-object v6, v5, v8

    const-string v6, "&#181;"

    aput-object v6, v5, v9

    const-string v6, "\u00b5"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x16

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&para;"

    aput-object v6, v5, v8

    const-string v6, "&#182;"

    aput-object v6, v5, v9

    const-string v6, "\u00b6"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x17

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&middot;"

    aput-object v6, v5, v8

    const-string v6, "&#183;"

    aput-object v6, v5, v9

    const-string v6, "\u00b7"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x18

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&cedil;"

    aput-object v6, v5, v8

    const-string v6, "&#184;"

    aput-object v6, v5, v9

    const-string v6, "\u00b8"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x19

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&sup1;"

    aput-object v6, v5, v8

    const-string v6, "&#185;"

    aput-object v6, v5, v9

    const-string v6, "\u00b9"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x1a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&ordm;"

    aput-object v6, v5, v8

    const-string v6, "&#186;"

    aput-object v6, v5, v9

    const-string v6, "\u00ba"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x1b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&raquo;"

    aput-object v6, v5, v8

    const-string v6, "&#187;"

    aput-object v6, v5, v9

    const-string v6, "\u00bb"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x1c

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&frac14;"

    aput-object v6, v5, v8

    const-string v6, "&#188;"

    aput-object v6, v5, v9

    const-string v6, "\u00bc"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x1d

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&frac12;"

    aput-object v6, v5, v8

    const-string v6, "&#189;"

    aput-object v6, v5, v9

    const-string v6, "\u00bd"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x1e

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&frac34;"

    aput-object v6, v5, v8

    const-string v6, "&#190;"

    aput-object v6, v5, v9

    const-string v6, "\u00be"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x1f

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&iquest;"

    aput-object v6, v5, v8

    const-string v6, "&#191;"

    aput-object v6, v5, v9

    const-string v6, "\u00bf"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x20

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Agrave;"

    aput-object v6, v5, v8

    const-string v6, "&#192;"

    aput-object v6, v5, v9

    const-string v6, "\u00c0"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x21

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Aacute;"

    aput-object v6, v5, v8

    const-string v6, "&#193;"

    aput-object v6, v5, v9

    const-string v6, "\u00c1"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x22

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Acirc;"

    aput-object v6, v5, v8

    const-string v6, "&#194;"

    aput-object v6, v5, v9

    const-string v6, "\u00c2"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x23

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Atilde;"

    aput-object v6, v5, v8

    const-string v6, "&#195;"

    aput-object v6, v5, v9

    const-string v6, "\u00c3"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x24

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Auml;"

    aput-object v6, v5, v8

    const-string v6, "&#196;"

    aput-object v6, v5, v9

    const-string v6, "\u00c4"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x25

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Aring;"

    aput-object v6, v5, v8

    const-string v6, "&#197;"

    aput-object v6, v5, v9

    const-string v6, "\u00c5"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x26

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&AElig;"

    aput-object v6, v5, v8

    const-string v6, "&#198;"

    aput-object v6, v5, v9

    const-string v6, "\u00c6"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x27

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Ccedil;"

    aput-object v6, v5, v8

    const-string v6, "&#199;"

    aput-object v6, v5, v9

    const-string v6, "\u00c7"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x28

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Egrave;"

    aput-object v6, v5, v8

    const-string v6, "&#200;"

    aput-object v6, v5, v9

    const-string v6, "\u00c8"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x29

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Eacute;"

    aput-object v6, v5, v8

    const-string v6, "&#201;"

    aput-object v6, v5, v9

    const-string v6, "\u00c9"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x2a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Ecirc;"

    aput-object v6, v5, v8

    const-string v6, "&#202;"

    aput-object v6, v5, v9

    const-string v6, "\u00ca"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x2b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Euml;"

    aput-object v6, v5, v8

    const-string v6, "&#203;"

    aput-object v6, v5, v9

    const-string v6, "\u00cb"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x2c

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Igrave;"

    aput-object v6, v5, v8

    const-string v6, "&#204;"

    aput-object v6, v5, v9

    const-string v6, "\u00cc"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x2d

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Iacute;"

    aput-object v6, v5, v8

    const-string v6, "&#205;"

    aput-object v6, v5, v9

    const-string v6, "\u00cd"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x2e

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Icirc;"

    aput-object v6, v5, v8

    const-string v6, "&#206;"

    aput-object v6, v5, v9

    const-string v6, "\u00ce"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x2f

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Iuml;"

    aput-object v6, v5, v8

    const-string v6, "&#207;"

    aput-object v6, v5, v9

    const-string v6, "\u00cf"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x30

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&ETH;"

    aput-object v6, v5, v8

    const-string v6, "&#208;"

    aput-object v6, v5, v9

    const-string v6, "\u00d0"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x31

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Ntilde;"

    aput-object v6, v5, v8

    const-string v6, "&#209;"

    aput-object v6, v5, v9

    const-string v6, "\u00d1"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x32

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Ograve;"

    aput-object v6, v5, v8

    const-string v6, "&#210;"

    aput-object v6, v5, v9

    const-string v6, "\u00d2"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x33

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Oacute;"

    aput-object v6, v5, v8

    const-string v6, "&#211;"

    aput-object v6, v5, v9

    const-string v6, "\u00d3"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x34

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Ocirc;"

    aput-object v6, v5, v8

    const-string v6, "&#212;"

    aput-object v6, v5, v9

    const-string v6, "\u00d4"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x35

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Otilde;"

    aput-object v6, v5, v8

    const-string v6, "&#213;"

    aput-object v6, v5, v9

    const-string v6, "\u00d5"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x36

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Ouml;"

    aput-object v6, v5, v8

    const-string v6, "&#214;"

    aput-object v6, v5, v9

    const-string v6, "\u00d6"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x37

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&times;"

    aput-object v6, v5, v8

    const-string v6, "&#215;"

    aput-object v6, v5, v9

    const-string v6, "\u00d7"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x38

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Oslash;"

    aput-object v6, v5, v8

    const-string v6, "&#216;"

    aput-object v6, v5, v9

    const-string v6, "\u00d8"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x39

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Ugrave;"

    aput-object v6, v5, v8

    const-string v6, "&#217;"

    aput-object v6, v5, v9

    const-string v6, "\u00d9"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x3a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Uacute;"

    aput-object v6, v5, v8

    const-string v6, "&#218;"

    aput-object v6, v5, v9

    const-string v6, "\u00da"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x3b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Ucirc;"

    aput-object v6, v5, v8

    const-string v6, "&#219;"

    aput-object v6, v5, v9

    const-string v6, "\u00db"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x3c

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Uuml;"

    aput-object v6, v5, v8

    const-string v6, "&#220;"

    aput-object v6, v5, v9

    const-string v6, "\u00dc"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x3d

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Yacute;"

    aput-object v6, v5, v8

    const-string v6, "&#221;"

    aput-object v6, v5, v9

    const-string v6, "\u00dd"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x3e

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&THORN;"

    aput-object v6, v5, v8

    const-string v6, "&#222;"

    aput-object v6, v5, v9

    const-string v6, "\u00de"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x3f

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&szlig;"

    aput-object v6, v5, v8

    const-string v6, "&#223;"

    aput-object v6, v5, v9

    const-string v6, "\u00df"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x40

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&agrave;"

    aput-object v6, v5, v8

    const-string v6, "&#224;"

    aput-object v6, v5, v9

    const-string v6, "\u00e0"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x41

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&aacute;"

    aput-object v6, v5, v8

    const-string v6, "&#225;"

    aput-object v6, v5, v9

    const-string v6, "\u00e1"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x42

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&acirc;"

    aput-object v6, v5, v8

    const-string v6, "&#226;"

    aput-object v6, v5, v9

    const-string v6, "\u00e2"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x43

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&atilde;"

    aput-object v6, v5, v8

    const-string v6, "&#227;"

    aput-object v6, v5, v9

    const-string v6, "\u00e3"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x44

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&auml;"

    aput-object v6, v5, v8

    const-string v6, "&#228;"

    aput-object v6, v5, v9

    const-string v6, "\u00e4"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x45

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&aring;"

    aput-object v6, v5, v8

    const-string v6, "&#229;"

    aput-object v6, v5, v9

    const-string v6, "\u00e5"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x46

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&aelig;"

    aput-object v6, v5, v8

    const-string v6, "&#230;"

    aput-object v6, v5, v9

    const-string v6, "\u00e6"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x47

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&ccedil;"

    aput-object v6, v5, v8

    const-string v6, "&#231;"

    aput-object v6, v5, v9

    const-string v6, "\u00e7"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x48

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&egrave;"

    aput-object v6, v5, v8

    const-string v6, "&#232;"

    aput-object v6, v5, v9

    const-string v6, "\u00e8"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x49

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&eacute;"

    aput-object v6, v5, v8

    const-string v6, "&#233;"

    aput-object v6, v5, v9

    const-string v6, "\u00e9"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x4a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&ecirc;"

    aput-object v6, v5, v8

    const-string v6, "&#234;"

    aput-object v6, v5, v9

    const-string v6, "\u00ea"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x4b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&euml;"

    aput-object v6, v5, v8

    const-string v6, "&#235;"

    aput-object v6, v5, v9

    const-string v6, "\u00eb"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x4c

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&igrave;"

    aput-object v6, v5, v8

    const-string v6, "&#236;"

    aput-object v6, v5, v9

    const-string v6, "\u00ec"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x4d

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&iacute;"

    aput-object v6, v5, v8

    const-string v6, "&#237;"

    aput-object v6, v5, v9

    const-string v6, "\u00ed"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x4e

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&icirc;"

    aput-object v6, v5, v8

    const-string v6, "&#238;"

    aput-object v6, v5, v9

    const-string v6, "\u00ee"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x4f

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&iuml;"

    aput-object v6, v5, v8

    const-string v6, "&#239;"

    aput-object v6, v5, v9

    const-string v6, "\u00ef"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x50

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&eth;"

    aput-object v6, v5, v8

    const-string v6, "&#240;"

    aput-object v6, v5, v9

    const-string v6, "\u00f0"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x51

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&ntilde;"

    aput-object v6, v5, v8

    const-string v6, "&#241;"

    aput-object v6, v5, v9

    const-string v6, "\u00f1"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x52

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&ograve;"

    aput-object v6, v5, v8

    const-string v6, "&#242;"

    aput-object v6, v5, v9

    const-string v6, "\u00f2"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x53

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&oacute;"

    aput-object v6, v5, v8

    const-string v6, "&#243;"

    aput-object v6, v5, v9

    const-string v6, "\u00f3"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x54

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&ocirc;"

    aput-object v6, v5, v8

    const-string v6, "&#244;"

    aput-object v6, v5, v9

    const-string v6, "\u00f4"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x55

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&otilde;"

    aput-object v6, v5, v8

    const-string v6, "&#245;"

    aput-object v6, v5, v9

    const-string v6, "\u00f5"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x56

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&ouml;"

    aput-object v6, v5, v8

    const-string v6, "&#246;"

    aput-object v6, v5, v9

    const-string v6, "\u00f6"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x57

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&divide;"

    aput-object v6, v5, v8

    const-string v6, "&#247;"

    aput-object v6, v5, v9

    const-string v6, "\u00f7"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x58

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&oslash;"

    aput-object v6, v5, v8

    const-string v6, "&#248;"

    aput-object v6, v5, v9

    const-string v6, "\u00f8"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x59

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&ugrave;"

    aput-object v6, v5, v8

    const-string v6, "&#249;"

    aput-object v6, v5, v9

    const-string v6, "\u00f9"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x5a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&uacute;"

    aput-object v6, v5, v8

    const-string v6, "&#250;"

    aput-object v6, v5, v9

    const-string v6, "\u00fa"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x5b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&ucirc;"

    aput-object v6, v5, v8

    const-string v6, "&#251;"

    aput-object v6, v5, v9

    const-string v6, "\u00fb"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x5c

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&uuml;"

    aput-object v6, v5, v8

    const-string v6, "&#252;"

    aput-object v6, v5, v9

    const-string v6, "\u00fc"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x5d

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&yacute;"

    aput-object v6, v5, v8

    const-string v6, "&#253;"

    aput-object v6, v5, v9

    const-string v6, "\u00fd"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x5e

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&thorn;"

    aput-object v6, v5, v8

    const-string v6, "&#254;"

    aput-object v6, v5, v9

    const-string v6, "\u00fe"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x5f

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&yuml;"

    aput-object v6, v5, v8

    const-string v6, "&#255;"

    aput-object v6, v5, v9

    const-string v6, "\u00ff"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x60

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&fnof;"

    aput-object v6, v5, v8

    const-string v6, "&#402;"

    aput-object v6, v5, v9

    const-string v6, "\u0192"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x61

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Alpha;"

    aput-object v6, v5, v8

    const-string v6, "&#913;"

    aput-object v6, v5, v9

    const-string v6, "\u0391"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x62

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Beta;"

    aput-object v6, v5, v8

    const-string v6, "&#914;"

    aput-object v6, v5, v9

    const-string v6, "\u0392"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x63

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Gamma;"

    aput-object v6, v5, v8

    const-string v6, "&#915;"

    aput-object v6, v5, v9

    const-string v6, "\u0393"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x64

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Delta;"

    aput-object v6, v5, v8

    const-string v6, "&#916;"

    aput-object v6, v5, v9

    const-string v6, "\u0394"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x65

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Epsilon;"

    aput-object v6, v5, v8

    const-string v6, "&#917;"

    aput-object v6, v5, v9

    const-string v6, "\u0395"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x66

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Zeta;"

    aput-object v6, v5, v8

    const-string v6, "&#918;"

    aput-object v6, v5, v9

    const-string v6, "\u0396"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x67

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Eta;"

    aput-object v6, v5, v8

    const-string v6, "&#919;"

    aput-object v6, v5, v9

    const-string v6, "\u0397"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x68

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Theta;"

    aput-object v6, v5, v8

    const-string v6, "&#920;"

    aput-object v6, v5, v9

    const-string v6, "\u0398"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x69

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Iota;"

    aput-object v6, v5, v8

    const-string v6, "&#921;"

    aput-object v6, v5, v9

    const-string v6, "\u0399"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x6a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Kappa;"

    aput-object v6, v5, v8

    const-string v6, "&#922;"

    aput-object v6, v5, v9

    const-string v6, "\u039a"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x6b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Lambda;"

    aput-object v6, v5, v8

    const-string v6, "&#923;"

    aput-object v6, v5, v9

    const-string v6, "\u039b"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x6c

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Mu;"

    aput-object v6, v5, v8

    const-string v6, "&#924;"

    aput-object v6, v5, v9

    const-string v6, "\u039c"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x6d

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Nu;"

    aput-object v6, v5, v8

    const-string v6, "&#925;"

    aput-object v6, v5, v9

    const-string v6, "\u039d"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x6e

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Xi;"

    aput-object v6, v5, v8

    const-string v6, "&#926;"

    aput-object v6, v5, v9

    const-string v6, "\u039e"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x6f

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Omicron;"

    aput-object v6, v5, v8

    const-string v6, "&#927;"

    aput-object v6, v5, v9

    const-string v6, "\u039f"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x70

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Pi;"

    aput-object v6, v5, v8

    const-string v6, "&#928;"

    aput-object v6, v5, v9

    const-string v6, "\u03a0"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x71

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Rho;"

    aput-object v6, v5, v8

    const-string v6, "&#929;"

    aput-object v6, v5, v9

    const-string v6, "\u03a1"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x72

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Sigma;"

    aput-object v6, v5, v8

    const-string v6, "&#931;"

    aput-object v6, v5, v9

    const-string v6, "\u03a3"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x73

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Tau;"

    aput-object v6, v5, v8

    const-string v6, "&#932;"

    aput-object v6, v5, v9

    const-string v6, "\u03a4"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x74

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Upsilon;"

    aput-object v6, v5, v8

    const-string v6, "&#933;"

    aput-object v6, v5, v9

    const-string v6, "\u03a5"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x75

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Phi;"

    aput-object v6, v5, v8

    const-string v6, "&#934;"

    aput-object v6, v5, v9

    const-string v6, "\u03a6"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x76

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Chi;"

    aput-object v6, v5, v8

    const-string v6, "&#935;"

    aput-object v6, v5, v9

    const-string v6, "\u03a7"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x77

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Psi;"

    aput-object v6, v5, v8

    const-string v6, "&#936;"

    aput-object v6, v5, v9

    const-string v6, "\u03a8"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x78

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Omega;"

    aput-object v6, v5, v8

    const-string v6, "&#937;"

    aput-object v6, v5, v9

    const-string v6, "\u03a9"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x79

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&alpha;"

    aput-object v6, v5, v8

    const-string v6, "&#945;"

    aput-object v6, v5, v9

    const-string v6, "\u03b1"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x7a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&beta;"

    aput-object v6, v5, v8

    const-string v6, "&#946;"

    aput-object v6, v5, v9

    const-string v6, "\u03b2"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x7b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&gamma;"

    aput-object v6, v5, v8

    const-string v6, "&#947;"

    aput-object v6, v5, v9

    const-string v6, "\u03b3"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x7c

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&delta;"

    aput-object v6, v5, v8

    const-string v6, "&#948;"

    aput-object v6, v5, v9

    const-string v6, "\u03b4"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x7d

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&epsilon;"

    aput-object v6, v5, v8

    const-string v6, "&#949;"

    aput-object v6, v5, v9

    const-string v6, "\u03b5"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x7e

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&zeta;"

    aput-object v6, v5, v8

    const-string v6, "&#950;"

    aput-object v6, v5, v9

    const-string v6, "\u03b6"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x7f

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&eta;"

    aput-object v6, v5, v8

    const-string v6, "&#951;"

    aput-object v6, v5, v9

    const-string v6, "\u03b7"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x80

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&theta;"

    aput-object v6, v5, v8

    const-string v6, "&#952;"

    aput-object v6, v5, v9

    const-string v6, "\u03b8"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x81

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&iota;"

    aput-object v6, v5, v8

    const-string v6, "&#953;"

    aput-object v6, v5, v9

    const-string v6, "\u03b9"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x82

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&kappa;"

    aput-object v6, v5, v8

    const-string v6, "&#954;"

    aput-object v6, v5, v9

    const-string v6, "\u03ba"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x83

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&lambda;"

    aput-object v6, v5, v8

    const-string v6, "&#955;"

    aput-object v6, v5, v9

    const-string v6, "\u03bb"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x84

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&mu;"

    aput-object v6, v5, v8

    const-string v6, "&#956;"

    aput-object v6, v5, v9

    const-string v6, "\u03bc"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x85

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&nu;"

    aput-object v6, v5, v8

    const-string v6, "&#957;"

    aput-object v6, v5, v9

    const-string v6, "\u03bd"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x86

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&xi;"

    aput-object v6, v5, v8

    const-string v6, "&#958;"

    aput-object v6, v5, v9

    const-string v6, "\u03be"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x87

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&omicron;"

    aput-object v6, v5, v8

    const-string v6, "&#959;"

    aput-object v6, v5, v9

    const-string v6, "\u03bf"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x88

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&pi;"

    aput-object v6, v5, v8

    const-string v6, "&#960;"

    aput-object v6, v5, v9

    const-string v6, "\u03c0"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x89

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&rho;"

    aput-object v6, v5, v8

    const-string v6, "&#961;"

    aput-object v6, v5, v9

    const-string v6, "\u03c1"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x8a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&sigmaf;"

    aput-object v6, v5, v8

    const-string v6, "&#962;"

    aput-object v6, v5, v9

    const-string v6, "\u03c2"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x8b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&sigma;"

    aput-object v6, v5, v8

    const-string v6, "&#963;"

    aput-object v6, v5, v9

    const-string v6, "\u03c3"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x8c

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&tau;"

    aput-object v6, v5, v8

    const-string v6, "&#964;"

    aput-object v6, v5, v9

    const-string v6, "\u03c4"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x8d

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&upsilon;"

    aput-object v6, v5, v8

    const-string v6, "&#965;"

    aput-object v6, v5, v9

    const-string v6, "\u03c5"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x8e

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&phi;"

    aput-object v6, v5, v8

    const-string v6, "&#966;"

    aput-object v6, v5, v9

    const-string v6, "\u03c6"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x8f

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&chi;"

    aput-object v6, v5, v8

    const-string v6, "&#967;"

    aput-object v6, v5, v9

    const-string v6, "\u03c7"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x90

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&psi;"

    aput-object v6, v5, v8

    const-string v6, "&#968;"

    aput-object v6, v5, v9

    const-string v6, "\u03c8"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x91

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&omega;"

    aput-object v6, v5, v8

    const-string v6, "&#969;"

    aput-object v6, v5, v9

    const-string v6, "\u03c9"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x92

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&thetasym;"

    aput-object v6, v5, v8

    const-string v6, "&#977;"

    aput-object v6, v5, v9

    const-string v6, "\u03d1"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x93

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&upsih;"

    aput-object v6, v5, v8

    const-string v6, "&#978;"

    aput-object v6, v5, v9

    const-string v6, "\u03d2"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x94

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&piv;"

    aput-object v6, v5, v8

    const-string v6, "&#982;"

    aput-object v6, v5, v9

    const-string v6, "\u03d6"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x95

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&bull;"

    aput-object v6, v5, v8

    const-string v6, "&#8226;"

    aput-object v6, v5, v9

    const-string v6, "\u2022"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x96

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&hellip;"

    aput-object v6, v5, v8

    const-string v6, "&#8230;"

    aput-object v6, v5, v9

    const-string v6, "\u2026"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x97

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&prime;"

    aput-object v6, v5, v8

    const-string v6, "&#8242;"

    aput-object v6, v5, v9

    const-string v6, "\u2032"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x98

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Prime;"

    aput-object v6, v5, v8

    const-string v6, "&#8243;"

    aput-object v6, v5, v9

    const-string v6, "\u2033"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x99

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&oline;"

    aput-object v6, v5, v8

    const-string v6, "&#8254;"

    aput-object v6, v5, v9

    const-string v6, "\u203e"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x9a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&frasl;"

    aput-object v6, v5, v8

    const-string v6, "&#8260;"

    aput-object v6, v5, v9

    const-string v6, "\u2044"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x9b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&weierp;"

    aput-object v6, v5, v8

    const-string v6, "&#8472;"

    aput-object v6, v5, v9

    const-string v6, "\u2118"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x9c

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&image;"

    aput-object v6, v5, v8

    const-string v6, "&#8465;"

    aput-object v6, v5, v9

    const-string v6, "\u2111"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x9d

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&real;"

    aput-object v6, v5, v8

    const-string v6, "&#8476;"

    aput-object v6, v5, v9

    const-string v6, "\u211c"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x9e

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&trade;"

    aput-object v6, v5, v8

    const-string v6, "&#8482;"

    aput-object v6, v5, v9

    const-string v6, "\u2122"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0x9f

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&alefsym;"

    aput-object v6, v5, v8

    const-string v6, "&#8501;"

    aput-object v6, v5, v9

    const-string v6, "\u2135"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xa0

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&larr;"

    aput-object v6, v5, v8

    const-string v6, "&#8592;"

    aput-object v6, v5, v9

    const-string v6, "\u2190"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xa1

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&uarr;"

    aput-object v6, v5, v8

    const-string v6, "&#8593;"

    aput-object v6, v5, v9

    const-string v6, "\u2191"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xa2

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&rarr;"

    aput-object v6, v5, v8

    const-string v6, "&#8594;"

    aput-object v6, v5, v9

    const-string v6, "\u2192"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xa3

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&darr;"

    aput-object v6, v5, v8

    const-string v6, "&#8595;"

    aput-object v6, v5, v9

    const-string v6, "\u2193"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xa4

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&harr;"

    aput-object v6, v5, v8

    const-string v6, "&#8596;"

    aput-object v6, v5, v9

    const-string v6, "\u2194"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xa5

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&crarr;"

    aput-object v6, v5, v8

    const-string v6, "&#8629;"

    aput-object v6, v5, v9

    const-string v6, "\u21b5"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xa6

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&lArr;"

    aput-object v6, v5, v8

    const-string v6, "&#8656;"

    aput-object v6, v5, v9

    const-string v6, "\u21d0"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xa7

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&uArr;"

    aput-object v6, v5, v8

    const-string v6, "&#8657;"

    aput-object v6, v5, v9

    const-string v6, "\u21d1"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xa8

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&rArr;"

    aput-object v6, v5, v8

    const-string v6, "&#8658;"

    aput-object v6, v5, v9

    const-string v6, "\u21d2"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xa9

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&dArr;"

    aput-object v6, v5, v8

    const-string v6, "&#8659;"

    aput-object v6, v5, v9

    const-string v6, "\u21d3"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xaa

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&hArr;"

    aput-object v6, v5, v8

    const-string v6, "&#8660;"

    aput-object v6, v5, v9

    const-string v6, "\u21d4"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xab

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&forall;"

    aput-object v6, v5, v8

    const-string v6, "&#8704;"

    aput-object v6, v5, v9

    const-string v6, "\u2200"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xac

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&part;"

    aput-object v6, v5, v8

    const-string v6, "&#8706;"

    aput-object v6, v5, v9

    const-string v6, "\u2202"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xad

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&exist;"

    aput-object v6, v5, v8

    const-string v6, "&#8707;"

    aput-object v6, v5, v9

    const-string v6, "\u2203"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xae

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&empty;"

    aput-object v6, v5, v8

    const-string v6, "&#8709;"

    aput-object v6, v5, v9

    const-string v6, "\u2205"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xaf

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&nabla;"

    aput-object v6, v5, v8

    const-string v6, "&#8711;"

    aput-object v6, v5, v9

    const-string v6, "\u2207"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xb0

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&isin;"

    aput-object v6, v5, v8

    const-string v6, "&#8712;"

    aput-object v6, v5, v9

    const-string v6, "\u2208"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xb1

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&notin;"

    aput-object v6, v5, v8

    const-string v6, "&#8713;"

    aput-object v6, v5, v9

    const-string v6, "\u2209"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xb2

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&ni;"

    aput-object v6, v5, v8

    const-string v6, "&#8715;"

    aput-object v6, v5, v9

    const-string v6, "\u220b"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xb3

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&prod;"

    aput-object v6, v5, v8

    const-string v6, "&#8719;"

    aput-object v6, v5, v9

    const-string v6, "\u220f"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xb4

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&sum;"

    aput-object v6, v5, v8

    const-string v6, "&#8721;"

    aput-object v6, v5, v9

    const-string v6, "\u2211"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xb5

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&minus;"

    aput-object v6, v5, v8

    const-string v6, "&#8722;"

    aput-object v6, v5, v9

    const-string v6, "\u2212"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xb6

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&lowast;"

    aput-object v6, v5, v8

    const-string v6, "&#8727;"

    aput-object v6, v5, v9

    const-string v6, "\u2217"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xb7

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&radic;"

    aput-object v6, v5, v8

    const-string v6, "&#8730;"

    aput-object v6, v5, v9

    const-string v6, "\u221a"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xb8

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&prop;"

    aput-object v6, v5, v8

    const-string v6, "&#8733;"

    aput-object v6, v5, v9

    const-string v6, "\u221d"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xb9

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&infin;"

    aput-object v6, v5, v8

    const-string v6, "&#8734;"

    aput-object v6, v5, v9

    const-string v6, "\u221e"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xba

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&ang;"

    aput-object v6, v5, v8

    const-string v6, "&#8736;"

    aput-object v6, v5, v9

    const-string v6, "\u2220"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xbb

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&and;"

    aput-object v6, v5, v8

    const-string v6, "&#8743;"

    aput-object v6, v5, v9

    const-string v6, "\u2227"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xbc

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&or;"

    aput-object v6, v5, v8

    const-string v6, "&#8744;"

    aput-object v6, v5, v9

    const-string v6, "\u2228"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xbd

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&cap;"

    aput-object v6, v5, v8

    const-string v6, "&#8745;"

    aput-object v6, v5, v9

    const-string v6, "\u2229"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xbe

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&cup;"

    aput-object v6, v5, v8

    const-string v6, "&#8746;"

    aput-object v6, v5, v9

    const-string v6, "\u222a"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xbf

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&int;"

    aput-object v6, v5, v8

    const-string v6, "&#8747;"

    aput-object v6, v5, v9

    const-string v6, "\u222b"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xc0

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&there4;"

    aput-object v6, v5, v8

    const-string v6, "&#8756;"

    aput-object v6, v5, v9

    const-string v6, "\u2234"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xc1

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&sim;"

    aput-object v6, v5, v8

    const-string v6, "&#8764;"

    aput-object v6, v5, v9

    const-string v6, "\u223c"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xc2

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&cong;"

    aput-object v6, v5, v8

    const-string v6, "&#8773;"

    aput-object v6, v5, v9

    const-string v6, "\u2245"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xc3

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&asymp;"

    aput-object v6, v5, v8

    const-string v6, "&#8776;"

    aput-object v6, v5, v9

    const-string v6, "\u2248"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xc4

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&ne;"

    aput-object v6, v5, v8

    const-string v6, "&#8800;"

    aput-object v6, v5, v9

    const-string v6, "\u2260"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xc5

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&equiv;"

    aput-object v6, v5, v8

    const-string v6, "&#8801;"

    aput-object v6, v5, v9

    const-string v6, "\u2261"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xc6

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&le;"

    aput-object v6, v5, v8

    const-string v6, "&#8804;"

    aput-object v6, v5, v9

    const-string v6, "\u2264"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xc7

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&ge;"

    aput-object v6, v5, v8

    const-string v6, "&#8805;"

    aput-object v6, v5, v9

    const-string v6, "\u2265"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xc8

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&sub;"

    aput-object v6, v5, v8

    const-string v6, "&#8834;"

    aput-object v6, v5, v9

    const-string v6, "\u2282"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xc9

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&sup;"

    aput-object v6, v5, v8

    const-string v6, "&#8835;"

    aput-object v6, v5, v9

    const-string v6, "\u2283"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xca

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&sube;"

    aput-object v6, v5, v8

    const-string v6, "&#8838;"

    aput-object v6, v5, v9

    const-string v6, "\u2286"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xcb

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&supe;"

    aput-object v6, v5, v8

    const-string v6, "&#8839;"

    aput-object v6, v5, v9

    const-string v6, "\u2287"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xcc

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&oplus;"

    aput-object v6, v5, v8

    const-string v6, "&#8853;"

    aput-object v6, v5, v9

    const-string v6, "\u2295"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xcd

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&otimes;"

    aput-object v6, v5, v8

    const-string v6, "&#8855;"

    aput-object v6, v5, v9

    const-string v6, "\u2297"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xce

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&perp;"

    aput-object v6, v5, v8

    const-string v6, "&#8869;"

    aput-object v6, v5, v9

    const-string v6, "\u22a5"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xcf

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&sdot;"

    aput-object v6, v5, v8

    const-string v6, "&#8901;"

    aput-object v6, v5, v9

    const-string v6, "\u22c5"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xd0

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&lceil;"

    aput-object v6, v5, v8

    const-string v6, "&#8968;"

    aput-object v6, v5, v9

    const-string v6, "\u2308"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xd1

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&rceil;"

    aput-object v6, v5, v8

    const-string v6, "&#8969;"

    aput-object v6, v5, v9

    const-string v6, "\u2309"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xd2

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&lfloor;"

    aput-object v6, v5, v8

    const-string v6, "&#8970;"

    aput-object v6, v5, v9

    const-string v6, "\u230a"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xd3

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&rfloor;"

    aput-object v6, v5, v8

    const-string v6, "&#8971;"

    aput-object v6, v5, v9

    const-string v6, "\u230b"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xd4

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&lang;"

    aput-object v6, v5, v8

    const-string v6, "&#9001;"

    aput-object v6, v5, v9

    const-string v6, "\u2329"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xd5

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&rang;"

    aput-object v6, v5, v8

    const-string v6, "&#9002;"

    aput-object v6, v5, v9

    const-string v6, "\u232a"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xd6

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&loz;"

    aput-object v6, v5, v8

    const-string v6, "&#9674;"

    aput-object v6, v5, v9

    const-string v6, "\u25ca"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xd7

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&spades;"

    aput-object v6, v5, v8

    const-string v6, "&#9824;"

    aput-object v6, v5, v9

    const-string v6, "\u2660"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xd8

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&clubs;"

    aput-object v6, v5, v8

    const-string v6, "&#9827;"

    aput-object v6, v5, v9

    const-string v6, "\u2663"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xd9

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&hearts;"

    aput-object v6, v5, v8

    const-string v6, "&#9829;"

    aput-object v6, v5, v9

    const-string v6, "\u2665"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xda

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&diams;"

    aput-object v6, v5, v8

    const-string v6, "&#9830;"

    aput-object v6, v5, v9

    const-string v6, "\u2666"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xdb

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&quot;"

    aput-object v6, v5, v8

    const-string v6, "&#34;"

    aput-object v6, v5, v9

    const-string v6, "\""

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xdc

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&amp;"

    aput-object v6, v5, v8

    const-string v6, "&#38;"

    aput-object v6, v5, v9

    const-string v6, "&"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xdd

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&lt;"

    aput-object v6, v5, v8

    const-string v6, "&#60;"

    aput-object v6, v5, v9

    const-string v6, "<"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xde

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&gt;"

    aput-object v6, v5, v8

    const-string v6, "&#62;"

    aput-object v6, v5, v9

    const-string v6, ">"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xdf

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&OElig;"

    aput-object v6, v5, v8

    const-string v6, "&#338;"

    aput-object v6, v5, v9

    const-string v6, "\u0152"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xe0

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&oelig;"

    aput-object v6, v5, v8

    const-string v6, "&#339;"

    aput-object v6, v5, v9

    const-string v6, "\u0153"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xe1

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Scaron;"

    aput-object v6, v5, v8

    const-string v6, "&#352;"

    aput-object v6, v5, v9

    const-string v6, "\u0160"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xe2

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&scaron;"

    aput-object v6, v5, v8

    const-string v6, "&#353;"

    aput-object v6, v5, v9

    const-string v6, "\u0161"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xe3

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Yuml;"

    aput-object v6, v5, v8

    const-string v6, "&#376;"

    aput-object v6, v5, v9

    const-string v6, "\u0178"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xe4

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&circ;"

    aput-object v6, v5, v8

    const-string v6, "&#710;"

    aput-object v6, v5, v9

    const-string v6, "\u02c6"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xe5

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&tilde;"

    aput-object v6, v5, v8

    const-string v6, "&#732;"

    aput-object v6, v5, v9

    const-string v6, "\u02dc"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xe6

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&ensp;"

    aput-object v6, v5, v8

    const-string v6, "&#8194;"

    aput-object v6, v5, v9

    const-string v6, "\u2002"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xe7

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&emsp;"

    aput-object v6, v5, v8

    const-string v6, "&#8195;"

    aput-object v6, v5, v9

    const-string v6, "\u2003"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xe8

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&thinsp;"

    aput-object v6, v5, v8

    const-string v6, "&#8201;"

    aput-object v6, v5, v9

    const-string v6, "\u2009"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xe9

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&zwnj;"

    aput-object v6, v5, v8

    const-string v6, "&#8204;"

    aput-object v6, v5, v9

    const-string v6, "\u200c"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xea

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&zwj;"

    aput-object v6, v5, v8

    const-string v6, "&#8205;"

    aput-object v6, v5, v9

    const-string v6, "\u200d"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xeb

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&lrm;"

    aput-object v6, v5, v8

    const-string v6, "&#8206;"

    aput-object v6, v5, v9

    const-string v6, "\u200e"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xec

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&rlm;"

    aput-object v6, v5, v8

    const-string v6, "&#8207;"

    aput-object v6, v5, v9

    const-string v6, "\u200f"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xed

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&ndash;"

    aput-object v6, v5, v8

    const-string v6, "&#8211;"

    aput-object v6, v5, v9

    const-string v6, "\u2013"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xee

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&mdash;"

    aput-object v6, v5, v8

    const-string v6, "&#8212;"

    aput-object v6, v5, v9

    const-string v6, "\u2014"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xef

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&lsquo;"

    aput-object v6, v5, v8

    const-string v6, "&#8216;"

    aput-object v6, v5, v9

    const-string v6, "\u2018"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xf0

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&rsquo;"

    aput-object v6, v5, v8

    const-string v6, "&#8217;"

    aput-object v6, v5, v9

    const-string v6, "\u2019"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xf1

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&sbquo;"

    aput-object v6, v5, v8

    const-string v6, "&#8218;"

    aput-object v6, v5, v9

    const-string v6, "\u201a"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xf2

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&ldquo;"

    aput-object v6, v5, v8

    const-string v6, "&#8220;"

    aput-object v6, v5, v9

    const-string v6, "\u201c"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xf3

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&rdquo;"

    aput-object v6, v5, v8

    const-string v6, "&#8221;"

    aput-object v6, v5, v9

    const-string v6, "\u201d"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xf4

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&bdquo;"

    aput-object v6, v5, v8

    const-string v6, "&#8222;"

    aput-object v6, v5, v9

    const-string v6, "\u201e"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xf5

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&dagger;"

    aput-object v6, v5, v8

    const-string v6, "&#8224;"

    aput-object v6, v5, v9

    const-string v6, "\u2020"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xf6

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&Dagger;"

    aput-object v6, v5, v8

    const-string v6, "&#8225;"

    aput-object v6, v5, v9

    const-string v6, "\u2021"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xf7

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&permil;"

    aput-object v6, v5, v8

    const-string v6, "&#8240;"

    aput-object v6, v5, v9

    const-string v6, "\u2030"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xf8

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&lsaquo;"

    aput-object v6, v5, v8

    const-string v6, "&#8249;"

    aput-object v6, v5, v9

    const-string v6, "\u2039"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xf9

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&rsaquo;"

    aput-object v6, v5, v8

    const-string v6, "&#8250;"

    aput-object v6, v5, v9

    const-string v6, "\u203a"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/16 v4, 0xfa

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "&euro;"

    aput-object v6, v5, v8

    const-string v6, "&#8364;"

    aput-object v6, v5, v9

    const-string v6, "\u20ac"

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    .line 452
    .local v0, "arr$":[[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 453
    .local v1, "entity":[Ljava/lang/String;
    sget-object v4, Ltwitter4j/internal/json/HTMLEntity;->entityEscapeMap:Ljava/util/Map;

    aget-object v5, v1, v7

    aget-object v6, v1, v8

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v4, Ltwitter4j/internal/json/HTMLEntity;->escapeEntityMap:Ljava/util/Map;

    aget-object v5, v1, v8

    aget-object v6, v1, v7

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v4, Ltwitter4j/internal/json/HTMLEntity;->escapeEntityMap:Ljava/util/Map;

    aget-object v5, v1, v9

    aget-object v6, v1, v7

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 457
    .end local v1    # "entity":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "original"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-static {v0}, Ltwitter4j/internal/json/HTMLEntity;->escape(Ljava/lang/StringBuilder;)V

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static escape(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "original"    # Ljava/lang/StringBuilder;

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 39
    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 40
    sget-object v2, Ltwitter4j/internal/json/HTMLEntity;->entityEscapeMap:Ljava/util/Map;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    .local v0, "escaped":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 42
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v2, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "escaped":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "original"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "returnValue":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-static {v0}, Ltwitter4j/internal/json/HTMLEntity;->unescape(Ljava/lang/StringBuilder;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_0
    return-object v1
.end method

.method static unescape(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p0, "original"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, -0x1

    .line 61
    const/4 v2, 0x0

    .line 65
    .local v2, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 66
    const-string v4, "&"

    invoke-virtual {p0, v4, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 67
    if-eq v5, v2, :cond_1

    .line 68
    const-string v4, ";"

    invoke-virtual {p0, v4, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 71
    .local v3, "semicolonIndex":I
    if-eq v5, v3, :cond_1

    .line 72
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "escaped":Ljava/lang/String;
    sget-object v4, Ltwitter4j/internal/json/HTMLEntity;->escapeEntityMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    .local v0, "entity":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 75
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v2, v4, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "entity":Ljava/lang/String;
    .end local v1    # "escaped":Ljava/lang/String;
    .end local v3    # "semicolonIndex":I
    :cond_1
    return-void
.end method

.method static unescapeAndSlideEntityIncdices(Ljava/lang/String;[Ltwitter4j/UserMentionEntity;[Ltwitter4j/URLEntity;[Ltwitter4j/HashtagEntity;[Ltwitter4j/MediaEntity;)Ljava/lang/String;
    .locals 15
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "userMentionEntities"    # [Ltwitter4j/UserMentionEntity;
    .param p2, "urlEntities"    # [Ltwitter4j/URLEntity;
    .param p3, "hashtagEntities"    # [Ltwitter4j/HashtagEntity;
    .param p4, "mediaEntities"    # [Ltwitter4j/MediaEntity;

    .prologue
    .line 88
    if-nez p1, :cond_5

    const/4 v12, 0x0

    :goto_0
    add-int/lit8 v13, v12, 0x0

    .line 90
    if-nez p2, :cond_6

    const/4 v12, 0x0

    :goto_1
    add-int/2addr v13, v12

    .line 91
    if-nez p3, :cond_7

    const/4 v12, 0x0

    :goto_2
    add-int/2addr v13, v12

    .line 92
    if-nez p4, :cond_8

    const/4 v12, 0x0

    :goto_3
    add-int/2addr v12, v13

    .line 94
    new-array v6, v12, [Ltwitter4j/internal/json/EntityIndex;

    .line 95
    .local v6, "entityIndexes":[Ltwitter4j/internal/json/EntityIndex;
    const/4 v2, 0x0

    .line 96
    .local v2, "copyStartIndex":I
    if-eqz p1, :cond_0

    .line 97
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    array-length v14, v0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v6, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    move-object/from16 v0, p1

    array-length v12, v0

    add-int/lit8 v2, v12, 0x0

    .line 101
    :cond_0
    if-eqz p2, :cond_1

    .line 102
    const/4 v12, 0x0

    move-object/from16 v0, p2

    array-length v13, v0

    move-object/from16 v0, p2

    invoke-static {v0, v12, v6, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    move-object/from16 v0, p2

    array-length v12, v0

    add-int/2addr v2, v12

    .line 106
    :cond_1
    if-eqz p3, :cond_2

    .line 107
    const/4 v12, 0x0

    move-object/from16 v0, p3

    array-length v13, v0

    move-object/from16 v0, p3

    invoke-static {v0, v12, v6, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    move-object/from16 v0, p3

    array-length v12, v0

    add-int/2addr v2, v12

    .line 111
    :cond_2
    if-eqz p4, :cond_3

    .line 112
    const/4 v12, 0x0

    move-object/from16 v0, p4

    array-length v13, v0

    move-object/from16 v0, p4

    invoke-static {v0, v12, v6, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    :cond_3
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 116
    const/4 v8, 0x1

    .line 117
    .local v8, "handlingStart":Z
    const/4 v5, 0x0

    .line 119
    .local v5, "entityIndex":I
    const/4 v3, 0x0

    .line 123
    .local v3, "delta":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 125
    .local v11, "unescaped":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v9, v12, :cond_d

    .line 126
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 127
    .local v1, "c":C
    const/16 v12, 0x26

    if-ne v1, v12, :cond_b

    .line 128
    const-string v12, ";"

    invoke-virtual {p0, v12, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 129
    .local v10, "semicolonIndex":I
    const/4 v12, -0x1

    if-eq v12, v10, :cond_a

    .line 130
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {p0, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, "escaped":Ljava/lang/String;
    sget-object v12, Ltwitter4j/internal/json/HTMLEntity;->escapeEntityMap:Ljava/util/Map;

    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 132
    .local v4, "entity":Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 133
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    move v9, v10

    .line 135
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    rsub-int/lit8 v3, v12, 0x1

    .line 145
    .end local v4    # "entity":Ljava/lang/String;
    .end local v7    # "escaped":Ljava/lang/String;
    .end local v10    # "semicolonIndex":I
    :goto_5
    array-length v12, v6

    if-ge v5, v12, :cond_4

    .line 146
    if-eqz v8, :cond_c

    .line 147
    aget-object v12, v6, v5

    invoke-virtual {v12}, Ltwitter4j/internal/json/EntityIndex;->getStart()I

    move-result v12

    add-int v13, v3, v9

    if-ne v12, v13, :cond_4

    .line 148
    aget-object v12, v6, v5

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ltwitter4j/internal/json/EntityIndex;->setStart(I)V

    .line 149
    const/4 v8, 0x0

    .line 157
    :cond_4
    :goto_6
    const/4 v3, 0x0

    .line 125
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 88
    .end local v1    # "c":C
    .end local v2    # "copyStartIndex":I
    .end local v3    # "delta":I
    .end local v5    # "entityIndex":I
    .end local v6    # "entityIndexes":[Ltwitter4j/internal/json/EntityIndex;
    .end local v8    # "handlingStart":Z
    .end local v9    # "i":I
    .end local v11    # "unescaped":Ljava/lang/StringBuilder;
    :cond_5
    move-object/from16 v0, p1

    array-length v12, v0

    goto/16 :goto_0

    .line 90
    :cond_6
    move-object/from16 v0, p2

    array-length v12, v0

    goto/16 :goto_1

    .line 91
    :cond_7
    move-object/from16 v0, p3

    array-length v12, v0

    goto/16 :goto_2

    .line 92
    :cond_8
    move-object/from16 v0, p4

    array-length v12, v0

    goto/16 :goto_3

    .line 137
    .restart local v1    # "c":C
    .restart local v2    # "copyStartIndex":I
    .restart local v3    # "delta":I
    .restart local v4    # "entity":Ljava/lang/String;
    .restart local v5    # "entityIndex":I
    .restart local v6    # "entityIndexes":[Ltwitter4j/internal/json/EntityIndex;
    .restart local v7    # "escaped":Ljava/lang/String;
    .restart local v8    # "handlingStart":Z
    .restart local v9    # "i":I
    .restart local v10    # "semicolonIndex":I
    .restart local v11    # "unescaped":Ljava/lang/StringBuilder;
    :cond_9
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 140
    .end local v4    # "entity":Ljava/lang/String;
    .end local v7    # "escaped":Ljava/lang/String;
    :cond_a
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 143
    .end local v10    # "semicolonIndex":I
    :cond_b
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 151
    :cond_c
    aget-object v12, v6, v5

    invoke-virtual {v12}, Ltwitter4j/internal/json/EntityIndex;->getEnd()I

    move-result v12

    add-int v13, v3, v9

    if-ne v12, v13, :cond_4

    .line 152
    aget-object v12, v6, v5

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ltwitter4j/internal/json/EntityIndex;->setEnd(I)V

    .line 153
    add-int/lit8 v5, v5, 0x1

    .line 154
    const/4 v8, 0x1

    goto :goto_6

    .line 159
    .end local v1    # "c":C
    :cond_d
    array-length v12, v6

    if-ge v5, v12, :cond_e

    .line 160
    aget-object v12, v6, v5

    invoke-virtual {v12}, Ltwitter4j/internal/json/EntityIndex;->getEnd()I

    move-result v12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v12, v13, :cond_e

    .line 161
    aget-object v12, v6, v5

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ltwitter4j/internal/json/EntityIndex;->setEnd(I)V

    .line 165
    :cond_e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method
