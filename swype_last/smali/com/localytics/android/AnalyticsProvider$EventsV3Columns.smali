.class final Lcom/localytics/android/AnalyticsProvider$EventsV3Columns;
.super Ljava/lang/Object;
.source "AnalyticsProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/AnalyticsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EventsV3Columns"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;
    }
.end annotation


# static fields
.field static final BLOB:Ljava/lang/String; = "blob"

.field static final TABLE_NAME:Ljava/lang/String; = "events"

.field static final UPLOAD_FORMAT:Ljava/lang/String; = "upload_format"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
