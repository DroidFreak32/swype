.class public abstract Landroid/support/v7/app/AppCompatDelegate;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# static fields
.field private static sCompatVectorFromResourcesEnabled:Z

.field private static sDefaultNightMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 120
    const/4 v0, -0x1

    sput v0, Landroid/support/v7/app/AppCompatDelegate;->sDefaultNightMode:I

    .line 122
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v7/app/AppCompatDelegate;->sCompatVectorFromResourcesEnabled:Z

    return-void
.end method

.method public static isCompatVectorFromResourcesEnabled()Z
    .registers 1

    .prologue
    .line 518
    sget-boolean v0, Landroid/support/v7/app/AppCompatDelegate;->sCompatVectorFromResourcesEnabled:Z

    return v0
.end method
