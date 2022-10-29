.class final Lcom/localytics/android/ProfileProvider$ProfileV3Columns;
.super Ljava/lang/Object;
.source "ProfileProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/ProfileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProfileV3Columns"
.end annotation


# static fields
.field static final CHANGE:Ljava/lang/String; = "change"

.field static final CUSTOMER_ID:Ljava/lang/String; = "customer_id"

.field static final DATABASE:Ljava/lang/String; = "scope"

.field static final TABLE_NAME:Ljava/lang/String; = "changes"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
