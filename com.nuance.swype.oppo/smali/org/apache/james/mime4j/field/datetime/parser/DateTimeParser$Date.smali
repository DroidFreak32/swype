.class final Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;
.super Ljava/lang/Object;
.source "DateTimeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Date"
.end annotation


# instance fields
.field day:I

.field month:I

.field year:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "year"    # Ljava/lang/String;
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->year:Ljava/lang/String;

    .line 106
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->month:I

    .line 107
    iput p3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->day:I

    .line 108
    return-void
.end method
