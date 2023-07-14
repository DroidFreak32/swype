.class final Lcom/localytics/android/LocationProvider$GeofencesAttributesV3Columns;
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
    name = "GeofencesAttributesV3Columns"
.end annotation


# static fields
.field static final KEY:Ljava/lang/String; = "key"

.field static final PLACE_ID:Ljava/lang/String; = "place_id"

.field static final TABLE_NAME:Ljava/lang/String; = "geofences_attributes"

.field static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
