.class public final Landroid/support/v4/view/GravityCompat;
.super Ljava/lang/Object;
.source "GravityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/GravityCompat$GravityCompatImplJellybeanMr1;,
        Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;
    }
.end annotation


# static fields
.field private static IMPL$34217404:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 91
    new-instance v0, Landroid/support/v4/view/GravityCompat$GravityCompatImplJellybeanMr1;

    invoke-direct {v0}, Landroid/support/v4/view/GravityCompat$GravityCompatImplJellybeanMr1;-><init>()V

    sput-object v0, Landroid/support/v4/view/GravityCompat;->IMPL$34217404:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;

    invoke-direct {v0}, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;-><init>()V

    sput-object v0, Landroid/support/v4/view/GravityCompat;->IMPL$34217404:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    goto :goto_0
.end method

.method public static getAbsoluteGravity(II)I
    .locals 1
    .param p0, "gravity"    # I
    .param p1, "layoutDirection"    # I

    .prologue
    .line 201
    sget-object v0, Landroid/support/v4/view/GravityCompat;->IMPL$34217404:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->getAbsoluteGravity(II)I

    move-result v0

    return v0
.end method
