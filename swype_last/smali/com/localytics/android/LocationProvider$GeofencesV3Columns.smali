.class final Lcom/localytics/android/LocationProvider$GeofencesV3Columns;
.super Ljava/lang/Object;
.source "LocationProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GeofencesV3Columns"
.end annotation


# static fields
.field static final ENTERED_TIME:Ljava/lang/String; = "entered_time"

.field static final ENTER_ANALYTICS_ENABLED:Ljava/lang/String; = "enter_analytics_enabled"

.field static final EXITED_TIME:Ljava/lang/String; = "exited_time"

.field static final EXIT_ANALYTICS_ENABLED:Ljava/lang/String; = "exit_analytics_enabled"

.field static final IDENTIFIER:Ljava/lang/String; = "identifier"

.field static final IS_MONITORED:Ljava/lang/String; = "is_monitored"

.field static final LATITUDE:Ljava/lang/String; = "latitude"

.field static final LONGITUDE:Ljava/lang/String; = "longitude"

.field static final NAME:Ljava/lang/String; = "name"

.field static final PLACE_ID:Ljava/lang/String; = "place_id"

.field static final RADIUS:Ljava/lang/String; = "radius"

.field static final SCHEMA_VERSION:Ljava/lang/String; = "schema_version"

.field static final TABLE_NAME:Ljava/lang/String; = "geofences"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
