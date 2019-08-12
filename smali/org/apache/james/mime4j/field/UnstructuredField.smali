.class public final Lorg/apache/james/mime4j/field/UnstructuredField;
.super Lorg/apache/james/mime4j/field/Field;
.source "UnstructuredField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/UnstructuredField$Parser;
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method
