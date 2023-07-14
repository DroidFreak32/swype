.class final Lcom/localytics/android/JsonObjects;
.super Ljava/lang/Object;
.source "JsonObjects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/JsonObjects$ProfileUpload;,
        Lcom/localytics/android/JsonObjects$OptEvent;,
        Lcom/localytics/android/JsonObjects$SessionEvent;,
        Lcom/localytics/android/JsonObjects$SessionClose;,
        Lcom/localytics/android/JsonObjects$SessionOpen;,
        Lcom/localytics/android/JsonObjects$BlobHeader;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
