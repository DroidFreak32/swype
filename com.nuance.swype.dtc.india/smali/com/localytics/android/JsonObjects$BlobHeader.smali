.class final Lcom/localytics/android/JsonObjects$BlobHeader;
.super Ljava/lang/Object;
.source "JsonObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/JsonObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BlobHeader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/JsonObjects$BlobHeader$Attributes;
    }
.end annotation


# static fields
.field static final KEY_ATTRIBUTES:Ljava/lang/String; = "attrs"

.field static final KEY_DATA_TYPE:Ljava/lang/String; = "dt"

.field static final KEY_IDENTIFIERS:Ljava/lang/String; = "ids"

.field static final KEY_PERSISTENT_STORAGE_CREATION_TIME_SECONDS:Ljava/lang/String; = "pa"

.field static final KEY_SEQUENCE_NUMBER:Ljava/lang/String; = "seq"

.field static final KEY_UNIQUE_ID:Ljava/lang/String; = "u"

.field static final VALUE_DATA_TYPE:Ljava/lang/String; = "h"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
