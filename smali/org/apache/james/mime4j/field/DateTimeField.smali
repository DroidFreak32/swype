.class public final Lorg/apache/james/mime4j/field/DateTimeField;
.super Lorg/apache/james/mime4j/field/Field;
.source "DateTimeField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/DateTimeField$Parser;
    }
.end annotation


# instance fields
.field private date:Ljava/util/Date;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .param p1, "raw"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lorg/apache/james/mime4j/field/DateTimeField;->date:Ljava/util/Date;

    .line 36
    return-void
.end method


# virtual methods
.method public final getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->date:Ljava/util/Date;

    return-object v0
.end method
