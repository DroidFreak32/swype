.class final Landroid/support/v4/widget/SwipeRefreshLayout$8;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 1121
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$8;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 1124
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$8;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$1400(Landroid/support/v4/widget/SwipeRefreshLayout;)F

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$8;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$1400(Landroid/support/v4/widget/SwipeRefreshLayout;)F

    move-result v2

    neg-float v2, v2

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    .line 1125
    .local v0, "targetScale":F
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$8;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$700(Landroid/support/v4/widget/SwipeRefreshLayout;F)V

    .line 1126
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$8;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v1, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$1300(Landroid/support/v4/widget/SwipeRefreshLayout;F)V

    .line 1127
    return-void
.end method
