.class final Lcom/localytics/android/JsonObjects$SessionClose;
.super Ljava/lang/Object;
.source "JsonObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/JsonObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SessionClose"
.end annotation


# static fields
.field static final KEY_DATA_TYPE:Ljava/lang/String; = "dt"

.field static final KEY_EVENT_UUID:Ljava/lang/String; = "u"

.field static final KEY_FLOW_ARRAY:Ljava/lang/String; = "fl"

.field static final KEY_INVALID_SESSION_LENGTH:Ljava/lang/String; = "isl"

.field static final KEY_SESSION_LENGTH_SECONDS:Ljava/lang/String; = "ctl"

.field static final KEY_SESSION_START_TIME:Ljava/lang/String; = "ss"

.field static final KEY_SESSION_UUID:Ljava/lang/String; = "su"

.field static final KEY_WALL_TIME_SECONDS:Ljava/lang/String; = "ct"

.field static final VALUE_DATA_TYPE:Ljava/lang/String; = "c"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
