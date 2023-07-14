.class final Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClampedScroller"
.end annotation


# instance fields
.field mDeltaTime:J

.field mDeltaX:I

.field mDeltaY:I

.field mEffectiveRampDown:I

.field mRampDownDuration:I

.field mRampUpDuration:I

.field mStartTime:J

.field mStopTime:J

.field mStopValue:F

.field mTargetVelocityX:F

.field mTargetVelocityY:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    .line 745
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 746
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 747
    iput v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 748
    iput v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 749
    return-void
.end method


# virtual methods
.method final getValueAt(J)F
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    .line 787
    iget-wide v4, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    .line 788
    const/4 v4, 0x0

    .line 795
    :goto_0
    return v4

    .line 789
    :cond_0
    iget-wide v4, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    iget-wide v4, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    cmp-long v4, p1, v4

    if-gez v4, :cond_2

    .line 790
    :cond_1
    iget-wide v4, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long v2, p1, v4

    .line 791
    .local v2, "elapsedSinceStart":J
    const/high16 v4, 0x3f000000    # 0.5f

    long-to-float v5, v2

    iget v6, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Landroid/support/v4/widget/AutoScrollHelper;->access$900$483d241b(F)F

    move-result v5

    mul-float/2addr v4, v5

    goto :goto_0

    .line 793
    .end local v2    # "elapsedSinceStart":J
    :cond_2
    iget-wide v4, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    sub-long v0, p1, v4

    .line 794
    .local v0, "elapsedSinceEnd":J
    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    long-to-float v6, v0

    iget v7, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 795
    invoke-static {v6}, Landroid/support/v4/widget/AutoScrollHelper;->access$900$483d241b(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    goto :goto_0
.end method
