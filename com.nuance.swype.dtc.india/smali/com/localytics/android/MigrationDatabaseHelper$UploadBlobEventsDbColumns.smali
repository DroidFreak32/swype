.class final Lcom/localytics/android/MigrationDatabaseHelper$UploadBlobEventsDbColumns;
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
    name = "UploadBlobEventsDbColumns"
.end annotation


# static fields
.field static final EVENTS_KEY_REF:Ljava/lang/String; = "events_key_ref"

.field static final TABLE_NAME:Ljava/lang/String; = "upload_blob_events"

.field static final UPLOAD_BLOBS_KEY_REF:Ljava/lang/String; = "upload_blobs_key_ref"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
