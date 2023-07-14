.class final Lcom/localytics/android/MigrationDatabaseHelper$ProfileDbColumns;
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
    name = "ProfileDbColumns"
.end annotation


# static fields
.field static final ACTION:Ljava/lang/String; = "action"

.field static final ATTRIBUTE:Ljava/lang/String; = "attribute"

.field static final CUSTOMER_ID:Ljava/lang/String; = "customer_id"

.field static final TABLE_NAME:Ljava/lang/String; = "profile"

.field static final USER_ID:Ljava/lang/String; = "id"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1591
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
