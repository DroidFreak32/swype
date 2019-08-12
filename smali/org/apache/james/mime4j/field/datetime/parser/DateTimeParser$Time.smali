.class final Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;
.super Ljava/lang/Object;
.source "DateTimeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Time"
.end annotation


# instance fields
.field hour:I

.field minute:I

.field second:I

.field zone:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "zone"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->hour:I

    .line 88
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->minute:I

    .line 89
    iput p3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->second:I

    .line 90
    iput p4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->zone:I

    .line 91
    return-void
.end method
