.class final Lcom/localytics/android/JsonObjects$SessionEvent;
.super Ljava/lang/Object;
.source "JsonObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/JsonObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SessionEvent"
.end annotation


# static fields
.field static final CUST_ID:Ljava/lang/String; = "cid"

.field static final IDENTIFIERS:Ljava/lang/String; = "ids"

.field static final KEY_ATTRIBUTES:Ljava/lang/String; = "attrs"

.field static final KEY_CUSTOMER_VALUE_INCREASE:Ljava/lang/String; = "v"

.field static final KEY_DATA_TYPE:Ljava/lang/String; = "dt"

.field static final KEY_EVENT_UUID:Ljava/lang/String; = "u"

.field static final KEY_LATITUDE:Ljava/lang/String; = "lat"

.field static final KEY_LONGITUDE:Ljava/lang/String; = "lng"

.field static final KEY_NAME:Ljava/lang/String; = "n"

.field static final KEY_SESSION_UUID:Ljava/lang/String; = "su"

.field static final KEY_WALL_TIME_SECONDS:Ljava/lang/String; = "ct"

.field static final USER_TYPE:Ljava/lang/String; = "utp"

.field static final VALUE_DATA_TYPE:Ljava/lang/String; = "e"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
