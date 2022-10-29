.class final Lcom/localytics/android/MigrationDatabaseHelper$EventFlow;
.super Ljava/lang/Object;
.source "MigrationDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/MigrationDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EventFlow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/MigrationDatabaseHelper$EventFlow$Element;
    }
.end annotation


# static fields
.field static final KEY_DATA_TYPE:Ljava/lang/String; = "dt"

.field static final KEY_EVENT_UUID:Ljava/lang/String; = "u"

.field static final KEY_FLOW_NEW:Ljava/lang/String; = "nw"

.field static final KEY_FLOW_OLD:Ljava/lang/String; = "od"

.field static final KEY_SESSION_START_TIME:Ljava/lang/String; = "ss"

.field static final VALUE_DATA_TYPE:Ljava/lang/String; = "f"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 2837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2838
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
