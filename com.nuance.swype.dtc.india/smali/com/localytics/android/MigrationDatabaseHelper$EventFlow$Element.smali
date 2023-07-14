.class final Lcom/localytics/android/MigrationDatabaseHelper$EventFlow$Element;
.super Ljava/lang/Object;
.source "MigrationDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/MigrationDatabaseHelper$EventFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Element"
.end annotation


# static fields
.field static final TYPE_EVENT:Ljava/lang/String; = "e"

.field static final TYPE_SCREEN:Ljava/lang/String; = "s"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 2861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2862
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
