.class public interface abstract Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserConstants;
.super Ljava/lang/Object;
.source "ContentTypeParserConstants.java"


# static fields
.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<EOF>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\"\\r\""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\"\\n\""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\"/\""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\";\""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\"=\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<WS>"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\"(\""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\")\""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "<token of kind 9>"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\"(\""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "<token of kind 11>"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "<token of kind 12>"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\"(\""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\")\""

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "<token of kind 15>"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\"\\\"\""

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "<token of kind 17>"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "<token of kind 18>"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\"\\\"\""

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "<DIGITS>"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "<ATOKEN>"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "<QUOTEDPAIR>"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "<ANY>"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserConstants;->tokenImage:[Ljava/lang/String;

    return-void
.end method
