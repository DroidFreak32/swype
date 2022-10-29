.class final Landroid/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImplJbMr1;
.super Ljava/lang/Object;
.source "MarginLayoutParamsCompat.java"

# interfaces
.implements Landroid/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MarginLayoutParamsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarginLayoutParamsCompatImplJbMr1"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 3
    .param p1, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 91
    .line 1028
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    .line 91
    return v0
.end method

.method public final getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 3
    .param p1, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 86
    .line 1024
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    .line 86
    return v0
.end method
