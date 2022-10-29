.class final Lcom/localytics/android/ManifestProvider$InfoV3Columns;
.super Ljava/lang/Object;
.source "ManifestProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/ManifestProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InfoV3Columns"
.end annotation


# static fields
.field static final LAST_CAMPAIGN_DOWNLOAD:Ljava/lang/String; = "last_campaign_download"

.field static final TABLE_NAME:Ljava/lang/String; = "info"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
