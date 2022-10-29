.class final Lcom/localytics/android/AnalyticsProvider$IdentifiersV3Columns;
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
    name = "IdentifiersV3Columns"
.end annotation


# static fields
.field static final KEY:Ljava/lang/String; = "key"

.field static final TABLE_NAME:Ljava/lang/String; = "identifiers"

.field static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
