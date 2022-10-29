.class final Lcom/localytics/android/MigrationDatabaseHelper$AmpDisplayedDbColumns;
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
    name = "AmpDisplayedDbColumns"
.end annotation


# static fields
.field static final CAMPAIGN_ID:Ljava/lang/String; = "campaign_id"

.field static final DISPLAYED:Ljava/lang/String; = "displayed"

.field static final TABLE_NAME:Ljava/lang/String; = "amp_displayed"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 1424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1425
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
