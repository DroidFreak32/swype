.class final Lcom/localytics/android/JsonObjects$OptEvent;
.super Ljava/lang/Object;
.source "JsonObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/JsonObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OptEvent"
.end annotation


# static fields
.field static final KEY_DATA_TYPE:Ljava/lang/String; = "dt"

.field static final KEY_EVENT_UUID:Ljava/lang/String; = "u"

.field static final KEY_OPT:Ljava/lang/String; = "out"

.field static final KEY_WALL_TIME_SECONDS:Ljava/lang/String; = "ct"

.field static final VALUE_DATA_TYPE:Ljava/lang/String; = "o"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
