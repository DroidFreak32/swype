.class final Lcom/localytics/android/JsonObjects$ProfileUpload;
.super Ljava/lang/Object;
.source "JsonObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/JsonObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProfileUpload"
.end annotation


# static fields
.field static final KEY_CHANGES:Ljava/lang/String; = "changes"

.field static final KEY_CUSTOMER_ID:Ljava/lang/String; = "customer_id"

.field static final KEY_DATABASE:Ljava/lang/String; = "database"

.field static final KEY_JSON_ATTRIBUTE:Ljava/lang/String; = "attributes"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
