.class final Lcom/localytics/android/MigrationDatabaseHelper$EventsDbColumns;
.super Ljava/lang/Object;
.source "MigrationDatabaseHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/MigrationDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EventsDbColumns"
.end annotation


# static fields
.field static final CLV_INCREASE:Ljava/lang/String; = "clv_increase"

.field static final CUST_ID:Ljava/lang/String; = "customer_id"

.field static final EVENT_NAME:Ljava/lang/String; = "event_name"

.field static final IDENTIFIERS:Ljava/lang/String; = "ids"

.field static final LAT_NAME:Ljava/lang/String; = "event_lat"

.field static final LNG_NAME:Ljava/lang/String; = "event_lng"

.field static final REAL_TIME:Ljava/lang/String; = "real_time"

.field static final SESSION_KEY_REF:Ljava/lang/String; = "session_key_ref"

.field static final TABLE_NAME:Ljava/lang/String; = "events"

.field static final USER_TYPE:Ljava/lang/String; = "user_type"

.field static final UUID:Ljava/lang/String; = "uuid"

.field static final WALL_TIME:Ljava/lang/String; = "wall_time"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
