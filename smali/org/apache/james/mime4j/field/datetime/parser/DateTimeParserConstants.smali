.class public interface abstract Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserConstants;
.super Ljava/lang/Object;
.source "DateTimeParserConstants.java"


# static fields
.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/16 v0, 0x31

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

    const-string v2, "\",\""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\"Mon\""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\"Tue\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\"Wed\""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\"Thu\""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\"Fri\""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\"Sat\""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\"Sun\""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\"Jan\""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\"Feb\""

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\"Mar\""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\"Apr\""

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\"May\""

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\"Jun\""

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\"Jul\""

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\"Aug\""

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\"Sep\""

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\"Oct\""

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\"Nov\""

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\"Dec\""

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\":\""

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "<OFFSETDIR>"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\"UT\""

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\"GMT\""

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\"EST\""

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\"EDT\""

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\"CST\""

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\"CDT\""

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\"MST\""

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\"MDT\""

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\"PST\""

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\"PDT\""

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "<MILITARY_ZONE>"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "<WS>"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\"(\""

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\")\""

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "<token of kind 39>"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\"(\""

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "<token of kind 41>"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "<token of kind 42>"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\"(\""

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\")\""

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "<token of kind 45>"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "<DIGITS>"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "<QUOTEDPAIR>"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "<ANY>"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserConstants;->tokenImage:[Ljava/lang/String;

    return-void
.end method
