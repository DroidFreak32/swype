.class public final Lorg/apache/james/mime4j/field/ContentTransferEncodingField;
.super Lorg/apache/james/mime4j/field/Field;
.source "ContentTransferEncodingField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/ContentTransferEncodingField$Parser;
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method
